// Encoders.cpp
#include "Encoders.h"

Encoders::Encoders()
    : x1_zero(0),
      x2_zero(0),
      y_zero(0),
      z_zero(0)
{
}

void Encoders::initZeroFromHardware() 
{
    // zelfde als setZeroToCurrent, maar duidelijker naam
    setZeroToCurrent();
}

void Encoders::setZeroToCurrent() 
{
    x1_zero = readEnc(ENCODER_X1_REG);
    x2_zero = readEnc(ENCODER_X2_REG);
    y_zero  = readEnc(ENCODER_Y_REG);
    z_zero  = readEnc(ENCODER_Z_REG);
}

void Encoders::readRaw(int32_t &x1, int32_t &x2,
                       int32_t &y,  int32_t &z) const
{
    x1 = readEnc(ENCODER_X1_REG);
    x2 = readEnc(ENCODER_X2_REG);
    y  = readEnc(ENCODER_Y_REG);
    z  = readEnc(ENCODER_Z_REG);
}

void Encoders::getXY(int32_t &x, int32_t &y) const 
{
    int32_t x1 = readEnc(ENCODER_X1_REG) - x1_zero;
    int32_t x2 = readEnc(ENCODER_X2_REG) - x2_zero;
    int32_t yy = readEnc(ENCODER_Y_REG)  - y_zero;

    // coreXY: X ≈ (X2 - X1) / 2
    x = (x2 - x1) / 2;
    y = -yy;
}

int32_t Encoders::getX() const 
{
    int32_t x, y;
    getXY(x, y);
    return x;
}

int32_t Encoders::getY() const 
{
    int32_t x, y;
    getXY(x, y);
    return y;
}

int32_t Encoders::getZ() const 
{
    int32_t z = readEnc(ENCODER_Z_REG) - z_zero;
    return z;
}
