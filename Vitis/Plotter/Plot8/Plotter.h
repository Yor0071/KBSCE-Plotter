#pragma once

#include "Motor.h"
#include "Encoders.h"
#include <stdint.h>

struct Vec2
{
    int32_t x;
    int32_t y;
};

class Plotter
{
public:
    Plotter();

    void init();
    void setZeroToCurrent();
    void moveTo(int32_t targetX, int32_t targetY, uint8_t speed);
    void stop();
    void drawPath(const Vec2* path, uint32_t length, uint8_t speed);

    Encoders &enc() { return encoders; }
    const Encoders &enc() const { return encoders; }

private:
    Motor motors;
    Encoders encoders;

    void delay();
};