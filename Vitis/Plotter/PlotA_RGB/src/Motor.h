#pragma once

// Includes
extern "C"{
    #include "xparameters.h"
    #include "xil_io.h"
}

// Registers
#define MOTOR_BASE XPAR_MOTOR_CTRL_0_BASEADDR // Base address of motor IP

#define MOTOR_X1_REG     (MOTOR_BASE + 0x00U) // motor 1 = X
#define MOTOR_X2_REG     (MOTOR_BASE + 0x04U) // motor 2 = X2
#define MOTOR_Y_REG      (MOTOR_BASE + 0x08U) // motor 3 = Y-as
#define MOTOR_Z_REG      (MOTOR_BASE + 0x0CU) // motor 4 = Z-as

// Bitmasks motor
// | bit 9  | bit 8  | bits 7..0 |
// | enable | dir    | speed     |
#define MOTOR_ENABLE_BIT (1U << 9)
#define MOTOR_DIR_BIT    (1U << 8)  // 0 = forward, 1 = backward
#define MOTOR_SPEED(v)   ((v) & 0xFFU)

// Min speed 75 (max 255)
#define DEFAULT_SPEED 150U  // Motor speed

class Motor{             
    public:
        // Initialisation functions
        Motor();

        // Movement functions
        static void move_X1(bool dir_fw, uint8_t speed);   // Function for moving x1 forwards or backwards
        static void move_X2(bool dir_fw, uint8_t speed);   // Function for moving x2 forwards or backwards
        static void move_X(bool dir_fw, uint8_t speed);   // Function for moving both x motors forwards or backwards
        static void move_Y(bool dir_fw, uint8_t speed);   // Function for moving y forwards or backwards
        static void move_Z(bool dir_fw, uint8_t speed);   // Function for moving z forwards or backwards

        // Stop functions
        static void stop_X1(); // Function to stop x1 from moving
        static void stop_X2(); // Function to stop x2 from moving
        static void stop_X(); // Function to stop both x motors from moving
        static void stop_Y(); // Function to stop y from moving
        static void stop_Z(); // Function to stop z from moving
        static void stop_motors(); // Function to stop all motors from moving

    private:
};