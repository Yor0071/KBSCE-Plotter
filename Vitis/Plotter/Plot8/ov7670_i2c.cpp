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
    {0x12, 0x80},
    {0x11, 0x01},
    {0x6B, 0x4A},
    {0x17, 0x16},
    {0x18, 0x04},
    {0x32, 0x80},
    {0x19, 0x02},
    {0x1A, 0x7A},
    {0x03, 0x0A},
    {0x12, 0x04},
    {0x40, 0xD0},
    {0x8C, 0x02},
    {0x1E, 0x10}
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
