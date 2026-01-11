// ov7670_i2c.h

extern "C" {
    #include "xparameters.h"
    #include "xil_types.h"
    #include "xstatus.h"
    #include "xiic.h"
    #include "xiic_l.h"
}

#define IIC_DEVICE_ID     0
#define OV7670_ADDR       0x21

static XIic IicInstance;

typedef struct {
    u8 reg;
    u8 val;
} ov7670_reg_t;

static const ov7670_reg_t ov7670_init_regs[] = {
    // 1) Reset and basic configuration
    {0x12, 0x80}, // COM7: Reset all registers to default

    {0x12, 0x04}, // COM7: Select RGB output mode
    {0x11, 0x01}, // CLKRC: Internal clock prescaler (PCLK divider)
    {0x6B, 0x4A}, // DBLV: PLL/clock settings (module-dependent)
    {0x0C, 0x00}, // COM3: Default (no scaling / no special options)
    {0x3E, 0x00}, // COM14: No scaling, normal PCLK
    {0x04, 0x00}, // COM1: Disable CCIR656

    // 2) RGB444 output configuration
    {0x8C, 0x02}, // RGB444: Enable RGB444 mode (xRGB packing)
    {0x40, 0xD0}, // COM15: Full-range RGB output
    {0x3A, 0x04}, // TSLB: Output sequence control (byte order)

    // 3) Color matrix (tuning; values are commonly used presets)
    {0x4F, 0xB3}, // MTX1
    {0x50, 0xA6}, // MTX2
    {0x51, 0x00}, // MTX3
    {0x52, 0x3D}, // MTX4
    {0x53, 0x99}, // MTX5
    {0x54, 0xE4}, // MTX6
    {0x58, 0x9E}, // MTXS: Matrix sign/scale

    // 4) Windowing (frame alignment / cropping)
    {0x17, 0x14}, // HSTART: Horizontal start
    {0x18, 0x02}, // HSTOP:  Horizontal stop
    {0x32, 0x80}, // HREF:   Edge offset / HREF control bits
    {0x19, 0x03}, // VSTART: Vertical start
    {0x1A, 0x7B}, // VSTOP:  Vertical stop
    {0x03, 0x0A}, // VREF:   Vertical frame control

    // 5) Additional tweaks / quality settings (module-dependent)
    {0x0F, 0x41}, // COM6: Timing reset / auto settings
    {0x1E, 0x20}, // MVFP: Mirror/flip control (no flip here)
    {0x33, 0x0B}, // CHLF:  Array current control / internal tuning
    {0x3C, 0x78}, // COM12: HREF behavior relative to VSYNC
    {0xB0, 0x84}  // RSVD:  "Magic" register often used for better colors
};

#define OV7670_INIT_REGS_LEN (sizeof(ov7670_init_regs) / sizeof(ov7670_reg_t))

// Initialize the Xilinx IIC controller
static int IicInit(void)
{
    int Status;
    XIic_Config *CfgPtr;

    CfgPtr = XIic_LookupConfig(IIC_DEVICE_ID);
    if (CfgPtr == NULL) {
        return XST_FAILURE;
    }

    Status = XIic_CfgInitialize(&IicInstance, CfgPtr, CfgPtr->BaseAddress);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    Status = XIic_SelfTest(&IicInstance);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    #define USE_XIIC_RESET_AND_START   0
    #if USE_XIIC_RESET_AND_START
        XIic_Reset(&IicInstance);
        Status = XIic_Start(&IicInstance);
        if (Status != XST_SUCCESS) {
            return XST_FAILURE;
        }
    #endif

    return XST_SUCCESS;
}

// Write one OV7670 register over I2C.
static int Ov7670_WriteReg(u8 reg, u8 value)
{
    u8 buf[2] = {reg, value};

    for (int tries = 0; tries < 200; tries++) {
        while (XIic_IsIicBusy(&IicInstance)) { }

        int Sent = XIic_Send(IicInstance.BaseAddress, OV7670_ADDR, buf, 2, XIIC_STOP);
        if (Sent == 2) {
            for (volatile int i = 0; i < 10000; i++);
            return XST_SUCCESS;
        }

        for (volatile int i = 0; i < 10000; i++);
    }

    return XST_FAILURE;
}

// Write a whole register table to the OV7670.
static int Ov7670_WriteTable(const ov7670_reg_t *table, int len)
{
    int Status;

    for (int i = 0; i < len; i++) {
        Status = Ov7670_WriteReg(table[i].reg, table[i].val);
        if (Status != XST_SUCCESS) {
            return Status;
        }
    }

    return XST_SUCCESS;
}

// Public initialization function.
extern "C" int Ov7670_Init(void)
{
    int Status;

    Status = IicInit();
    if (Status != XST_SUCCESS) {
        return Status;
    }

    for (volatile int d = 0; d < 1000000; d++);

    Status = Ov7670_WriteTable(ov7670_init_regs, OV7670_INIT_REGS_LEN);
    return Status;
}
