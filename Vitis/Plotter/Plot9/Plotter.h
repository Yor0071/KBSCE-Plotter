#pragma once

#include "Motor.h"
#include "Encoders.h"
#include "Geometry.h"
#include <stdint.h>

class Plotter
{
public:
    Plotter();

    void init();
    void setZeroToCurrent();
    void moveTo(int32_t targetX, int32_t targetY, uint8_t speed);
    void stop();
    void drawPath(const Vec2* path, uint32_t length, uint8_t speed); // will remove
    void home(uint8_t homepwm = 160);
    void drawLineArray(const PolylineView* lines, uint16_t lineCount, uint8_t speed);
    void drawPolyline(const PolylineView& line, bool reverse, uint8_t speed);
    void moveZTo(int32_t targetZ, uint8_t speed);
    void penUp(uint8_t speed = 160);
    void penLift(uint8_t speed = 160);
    void penDown(uint8_t speed = 160);

    Encoders &enc() { return encoders; }
    const Encoders &enc() const { return encoders; }

private:
    Motor motors;
    Encoders encoders;

    static constexpr int32_t Z_UP   = 0;
    static constexpr int32_t Z_LIFT = -2861;   
    static constexpr int32_t Z_DOWN = -3050;

    void delay();
};