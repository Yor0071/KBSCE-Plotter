// Includes
#include "Motor.h"

extern "C"{
    #include "xparameters.h"
    #include "xil_io.h"
}

// Global variables
Motor motors = Motor();

// // LED GPIO
// #define LED_BASE         XPAR_AXI_GPIO_LEDS_BASEADDR
// #define LED_DATA         (LED_BASE + 0x00U)

// ---------------------------------------------------------
//  Delay ~1 second
// ---------------------------------------------------------
static void delay_1s(void){
    for (volatile int i = 0; i < 10000000; i++);
}

// ---------------------------------------------------------
//  MAIN
// ---------------------------------------------------------
int main(void){
    // Turn all motors off for safety
    motors.stop_motors();

    // Move X back and forth once
    motors.move_X(1, DEFAULT_SPEED);
    delay_1s();
    motors.move_X(0, DEFAULT_SPEED);
    delay_1s();

    while (1){
        // Move Y back and forth
        motors.move_Y(1, DEFAULT_SPEED);
        delay_1s();
        motors.move_Y(0, DEFAULT_SPEED);
        delay_1s();
    }

    return 0;
}
