#include "xparameters.h"
#include "xil_io.h"

// ---------------------------------------------------------
//  Hardware addresses
// ---------------------------------------------------------
#define MOTOR_BASE       0x44A00000U          // Base address van jouw motor IP

// We nemen aan:
//   slv_reg0 (0x00) = motor X1
//   slv_reg1 (0x04) = motor X2
//   slv_reg2 (0x08) = motor Y   <-- deze willen we
#define MOTOR_X1_REG     (MOTOR_BASE + 0x00U)
#define MOTOR_X2_REG     (MOTOR_BASE + 0x04U)
#define MOTOR_Y_REG      (MOTOR_BASE + 0x08U) // 3e motor = Y-as

// LED GPIO
#define LED_BASE         XPAR_AXI_GPIO_LEDS_BASEADDR
#define LED_DATA         (LED_BASE + 0x00U)

// ---------------------------------------------------------
//  Bitmasks voor motorregister
// ---------------------------------------------------------
// | bit 9  | bit 8  | bits 7..0 |
// | enable | dir    | speed     |

#define MOTOR_ENABLE_BIT (1U << 9)
#define MOTOR_DIR_BIT    (1U << 8)         // 0 = vooruit, 1 = achteruit (aangenomen)
#define MOTOR_SPEED(v)   ((v) & 0xFFU)

// Snelheid begrenzen op 75 (geen 255 meer)
#define MOTOR_SPEED_Y    255U              // jouw gewenste snelheid

// ---------------------------------------------------------
//  Delay ~1 seconde (eventueel tunen)
// ---------------------------------------------------------
static void delay_1s(void)
{
    for (volatile int i = 0; i < 10000000; i++);
}

// ---------------------------------------------------------
//  MAIN
// ---------------------------------------------------------
int main(void)
{
    // -------------------------------------------
    // Opstart: leds laten zien dat we leven
    // -------------------------------------------
    for (int i = 0; i < 3; i++) {
        Xil_Out32(LED_DATA, 0xFFFF);
        delay_1s();
        Xil_Out32(LED_DATA, 0x0000);
        delay_1s();
    }

    // -------------------------------------------
    // Veiligheid: alle motoren uitzetten
    // -------------------------------------------
    Xil_Out32(MOTOR_X1_REG, 0x00000000);
    Xil_Out32(MOTOR_X2_REG, 0x00000000);
    Xil_Out32(MOTOR_Y_REG,  0x00000000);

    // -------------------------------------------
    // Hoofdlus: alleen Y-as bewegen
    // 1s vooruit, 1s achteruit, snelheid 75
    // -------------------------------------------
    while (1)
    {
        // ================================
        // 1) VOORUIT 1 SEKONDE (Y-motor)
        // ================================
        Xil_Out32(MOTOR_Y_REG,
                  MOTOR_ENABLE_BIT |            // enable = 1
                  /* dir = 0 (vooruit) */ 
                  MOTOR_SPEED(MOTOR_SPEED_Y));  // snelheid 75

        Xil_Out32(LED_DATA, 0x0001);   // LED0 = vooruit indicatie
        delay_1s();

        // ================================
        // 2) ACHTERUIT 1 SEKONDE (Y-motor)
        // ================================
        Xil_Out32(MOTOR_Y_REG,
                  MOTOR_ENABLE_BIT |            // enable = 1
                  MOTOR_DIR_BIT |               // dir = 1 (achteruit)
                  MOTOR_SPEED(MOTOR_SPEED_Y));  // snelheid 75

        Xil_Out32(LED_DATA, 0x0002);   // LED1 = achteruit indicatie
        delay_1s();
    }

    return 0;
}
