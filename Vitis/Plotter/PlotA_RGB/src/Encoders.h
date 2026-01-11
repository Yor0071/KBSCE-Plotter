// Encoders.h
#pragma once

extern "C" {
    #include "xparameters.h"
    #include "xil_io.h"
    #include <stdint.h>
}

// Encoders
#define ENCODER_BASE XPAR_MOTOR_CTRL_0_BASEADDR // Base registry address

#define ENCODER_X1_REG  (ENCODER_BASE + 0x10U)
#define ENCODER_X2_REG  (ENCODER_BASE + 0x14U)
#define ENCODER_Y_REG  (ENCODER_BASE + 0x18U)
#define ENCODER_Z_REG  (ENCODER_BASE + 0x1CU)

class Encoders {
public:
    Encoders();

    // Get position and set to 0
    void initZeroFromHardware();

    // Set to 0
    void setZeroToCurrent();

    // Read registry
    void readRaw(int32_t &x1, int32_t &x2, int32_t &y,  int32_t &z) const;

    // Get XY position
    void getXY(int32_t &x, int32_t &y) const;

    int32_t getX() const;
    int32_t getY() const;
    int32_t getZ() const;

private:
    int32_t x1_zero;
    int32_t x2_zero;
    int32_t y_zero;
    int32_t z_zero;

    static inline int32_t readEnc(uint32_t addr) {
        return (int32_t)Xil_In32(addr);
    }
};
