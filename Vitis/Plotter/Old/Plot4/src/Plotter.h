#pragma once

#include "Motor.h"
#include "Encoders.h"
#include <stdint.h>

class Plotter
{
public:
    Plotter();

    void init();
    void setZeroToCurrent();
    void moveTo(int32_t targetX, int32_t targetY, uint8_t speed);
    void stop();

    Encoders &enc() { return encoders; }
    const Encoders &enc() const { return encoders; }

private:
    Motor motors;
    Encoders encoders;

    void delay();
};