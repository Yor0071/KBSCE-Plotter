#include "xparameters.h"
#include "xil_io.h"
#include "sleep.h"
#include "xil_printf.h"

#define MOTOR_BASE  XPAR_MOTOR_CTRL_0_BASEADDR

#define REG_X1_CTRL (MOTOR_BASE + 0x00)
#define REG_X2_CTRL (MOTOR_BASE + 0x04)
#define REG_Y_CTRL  (MOTOR_BASE + 0x08)
#define REG_Z_CTRL  (MOTOR_BASE + 0x0C)

#define MOTOR_EN_BIT     (1u << 9)
#define MOTOR_DIR_BIT    (1u << 8)
#define MOTOR_SPEED_MASK 0xFFu

static void drive_and_dump(const char *name, u32 reg)
{
    const unsigned speed = 0xBF;

    xil_printf("==== %s forward ====\r\n", name);
    u32 v = MOTOR_EN_BIT | (0u << 8) | (speed & MOTOR_SPEED_MASK);
    Xil_Out32(reg, v);
    xil_printf("%s REG = 0x%08x\r\n", name, Xil_In32(reg));
    sleep(2);

    xil_printf("==== %s backward ====\r\n", name);
    v = MOTOR_EN_BIT | MOTOR_DIR_BIT | (speed & MOTOR_SPEED_MASK);
    Xil_Out32(reg, v);
    xil_printf("%s REG = 0x%08x\r\n", name, Xil_In32(reg));
    sleep(2);

    xil_printf("==== %s stop ====\r\n", name);
    Xil_Out32(reg, 0);
    xil_printf("%s REG = 0x%08x\r\n", name, Xil_In32(reg));
    sleep(2);
}

int main(void)
{
    xil_printf("Axis scan start\r\n");

    // alles uit
    Xil_Out32(REG_X1_CTRL, 0);
    Xil_Out32(REG_X2_CTRL, 0);
    Xil_Out32(REG_Y_CTRL,  0);
    Xil_Out32(REG_Z_CTRL,  0);

    while (1) {
        drive_and_dump("X1", REG_X1_CTRL);
        drive_and_dump("X2", REG_X2_CTRL);
        drive_and_dump("Y",  REG_Y_CTRL);
        drive_and_dump("Z",  REG_Z_CTRL);
    }

    return 0;
}
