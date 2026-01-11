#include "Motor.h"

Motor::Motor()
{
}

// Movement functions
// Function for moving x1 forwards or backwards
void Motor::move_X1(bool dir_fw, uint8_t speed)
{
    if(dir_fw)
    {
        Xil_Out32(MOTOR_X1_REG, MOTOR_ENABLE_BIT | MOTOR_SPEED(speed)); // Enable x1 in the forward direction at the given speed
    } else {
        Xil_Out32(MOTOR_X1_REG, MOTOR_ENABLE_BIT | MOTOR_DIR_BIT | MOTOR_SPEED(speed)); // Enable x1 in the forward direction at the given speed
    }
}

// Function for moving x2 forwards or backwards
void Motor::move_X2(bool dir_fw, uint8_t speed)
{
    if(dir_fw)
    {
        Xil_Out32(MOTOR_X2_REG, MOTOR_ENABLE_BIT | MOTOR_SPEED(speed)); // Enable x2 in the forward direction at the given speed
    } else {
        Xil_Out32(MOTOR_X2_REG, MOTOR_ENABLE_BIT | MOTOR_DIR_BIT | MOTOR_SPEED(speed)); // Enable x2 in the forward direction at the given speed
    }
}

// Function for moving x forwards or backwards
void Motor::move_X(bool dir_fw, uint8_t speed)
{   
    // Move the X motors
    move_X1(dir_fw, speed);
    move_X2(dir_fw, speed);
}

// Function for moving y forwards or backwards
void Motor::move_Y(bool dir_fw, uint8_t speed)
{
    if(dir_fw)
    {
        Xil_Out32(MOTOR_Y_REG, MOTOR_ENABLE_BIT | MOTOR_SPEED(speed)); // Enable y in the forward direction at the given speed
    } else {
        Xil_Out32(MOTOR_Y_REG, MOTOR_ENABLE_BIT | MOTOR_DIR_BIT | MOTOR_SPEED(speed)); // Enable y in the forward direction at the given speed
    }
}

// Function for moving z forwards or backwards
void Motor::move_Z(bool dir_fw, uint8_t speed)
{   
    if(dir_fw)
    {
        Xil_Out32(MOTOR_Z_REG, MOTOR_ENABLE_BIT | MOTOR_SPEED(speed)); // Enable z in the forward direction at the given speed
    } else {
        Xil_Out32(MOTOR_Z_REG, MOTOR_ENABLE_BIT | MOTOR_DIR_BIT | MOTOR_SPEED(speed)); // Enable z in the forward direction at the given speed
    }
}

// Stop functions 
void Motor::stop_X1()
{ 
    Xil_Out32(MOTOR_X1_REG, 0x00000000); // Disable x1
}

void Motor::stop_X2()
{
    Xil_Out32(MOTOR_X2_REG, 0x00000000); // Disable x2
}

// Stop both x motors
void Motor::stop_X()
{ 
    stop_X1();
    stop_X2();
}

// Function to stop y from moving
void Motor::stop_Y()
{ 
    Xil_Out32(MOTOR_Y_REG,  0x00000000); // Disable y
}

// Function to stop z from moving
void Motor::stop_Z()
{ 
    Xil_Out32(MOTOR_Z_REG,  0x00000000); // Disable z
}

// Function to stop all motors from moving
void Motor::stop_motors()
{ 
    stop_X();
    stop_Y();
    stop_Z();
}