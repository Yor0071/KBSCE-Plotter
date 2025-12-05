// Includes
#include "Motor.h"

extern "C"{
    #include "xparameters.h"
    #include "xil_io.h"
}

Motor motors = Motor();

static void delay_1s(void){
    for (volatile int i = 0; i < 10000000; i++);
}

// ---------------------------------------------------------
//  MAIN
// ---------------------------------------------------------
int main(void){
    // Turn all motors off for safety
    motors.stop_motors();

    while (1){
        // Move Y back and forth
        motors.move_Y(1, DEFAULT_SPEED);
        motors.move_X(1, DEFAULT_SPEED);
        delay_1s();
        motors.move_Y(0, DEFAULT_SPEED);
        motors.move_X(0, DEFAULT_SPEED);
        delay_1s();
    }

    return 0;
}
