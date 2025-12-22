// ov7670_i2c.cpp

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
    // 1. Reset & Basis instellingen
    {0x12, 0x80}, // COM7: Reset alle registers
    // LET OP: Voeg in je code een delay van 10ms in na dit register!
    
    {0x12, 0x04}, // COM7: Stel RGB output in
    {0x11, 0x01}, // CLKRC: Interne PLL PCLK/2
    {0x6B, 0x4A}, // Input clock times 4
    {0x0C, 0x00}, // COM3: Default
    {0x3E, 0x00}, // COM14: Geen scaling
    {0x04, 0x00}, // COM1: CCIR656 uit
    
    // 2. RGB444 Specifieke instellingen
    {0x8C, 0x02}, // RGB444: Enable mode + xRGB volgorde (Matcht jouw VHDL!)
    {0x40, 0xD0}, // COM15: Full range RGB
    {0x3A, 0x04}, // TSLB: Correcte output sequence
    
    // 3. Kleur Matrix (MTX) - DIT FIXT DE KLEUREN
    {0x4F, 0xB3}, // MTX1
    {0x50, 0xB3}, // MTX2
    {0x51, 0x00}, // MTX3
    {0x52, 0x3D}, // MTX4
    {0x53, 0xA7}, // MTX5
    {0x54, 0xE4}, // MTX6
    {0x58, 0x9E}, // MTXS (Matrix Sign)
    {0x3D, 0xC0}, // COM13: Gamma enable
    
    // 4. Windowing (Beeld uitlijning)
    {0x17, 0x14}, // HSTART
    {0x18, 0x02}, // HSTOP
    {0x32, 0x80}, // HREF
    {0x19, 0x03}, // VSTART
    {0x1A, 0x7B}, // VSTOP
    {0x03, 0x0A}, // VREF
    
    // 5. Belichting en Gain (AGC/AEC)
    {0x13, 0xE0}, // COM8: Disable AGC/AEC tijdelijk
    {0x00, 0x00}, // Gain = 0
    {0x10, 0x00}, // ARCJ = 0
    {0x0D, 0x40}, // COM4: Reserved bit
    {0x14, 0x18}, // COM9: 4x gain
    {0x24, 0x95}, // AGC Upper limit
    {0x25, 0x33}, // AGC Lower limit
    {0x13, 0xA7}, // COM8: Enable AGC/AEC/A WB
    
    // 6. Gamma Curve (Voor contrast en helderheid)
    {0x7A, 0x20}, {0x7B, 0x10}, {0x7C, 0x1E}, {0x7D, 0x35},
    {0x7E, 0x5A}, {0x7F, 0x69}, {0x80, 0x76}, {0x81, 0x80},
    {0x82, 0x88}, {0x83, 0x8F}, {0x84, 0x96}, {0x85, 0xA3},
    {0x86, 0xAF}, {0x87, 0xC4}, {0x88, 0xD7}, {0x89, 0xE8},
    
    // 7. Extra optimalisaties
    {0x0F, 0x41}, // COM6: Reset timings
    {0x1E, 0x20}, // MVFP: Mirror no flip
    {0x33, 0x0B}, // CHLF
    {0x3C, 0x78}, // COM12: Geen HREF bij VSYNC laag
    {0xB0, 0x84} // RSVD: Magic bit voor betere kleuren
};

#define OV7670_INIT_REGS_LEN (sizeof(ov7670_init_regs) / sizeof(ov7670_reg_t))

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

// 🔴 LET OP: extern "C" hier!
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
