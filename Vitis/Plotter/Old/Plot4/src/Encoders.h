// Encoders.h
#pragma once

extern "C" {
    #include "xparameters.h"
    #include "xil_io.h"
    #include <stdint.h>
}

#define ENCODER_BASE XPAR_MOTOR_CTRL_0_BASEADDR

// Encoders
#define ENCODER_X1_REG  (ENCODER_BASE + 0x10U) // Encoder x1????
#define ENCODER_X2_REG  (ENCODER_BASE + 0x14U) // Encoder x2????
#define ENCODER_Y_REG  (ENCODER_BASE + 0x18U) // Encoder y????
#define ENCODER_Z_REG  (ENCODER_BASE + 0x1CU) // Encoder z????

class Encoders {
public:
    Encoders();

    // Call één keer bij start (na reset)
    // -> pakt huidige standen als nulpositie.
    void initZeroFromHardware();

    // Later (bij homing met eindschakelaars) kun je deze opnieuw gebruiken
    void setZeroToCurrent();

    // Ruwe registers (zonder offset, 32-bit signed)
    void readRaw(int32_t &x1, int32_t &x2,
                 int32_t &y,  int32_t &z) const;

    // Software-positie in stappen t.o.v. nul:
    // X = (X2 - X1)/2, Y = Y-encoder
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
        // direct cast naar signed
        return (int32_t)Xil_In32(addr);
    }
};
