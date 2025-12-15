#include "Plotter.h"
#include <stdint.h>
#include "sleep.h"

extern "C" {
    #include <xil_printf.h>
}

Plotter::Plotter() : motors(),
                     encoders()
{
// empty
}

void Plotter::init()
{
    motors.stop_motors();
    encoders.initZeroFromHardware();
}

void Plotter::stop()
{
    motors.stop_motors();
}

void Plotter::delay()
{
    for (volatile int i = 0; i < 100000; ++i)
    {

    }
}

static inline uint8_t clampMovePwm(uint8_t v, uint8_t minPwm)
{
    if (v == 0) return 0;
    return (v < minPwm) ? minPwm : v;
}

void Plotter::moveTo(int32_t target_x, int32_t target_y, uint8_t speed)
{
    const int32_t tolerance = 5; // Tolerance
    // calibrated speed scale
    const float kx = 1.00f;
    const float ky = 0.80f;

    // Start and calculate total distance
    int32_t startX, startY;
    encoders.getXY(startX, startY);

    int32_t totalDx = target_x - startX;
    int32_t totalDy = target_y - startY;

    int32_t absTotalDx = (totalDx >= 0) ? totalDx : -totalDx;
    int32_t absTotalDy = (totalDy >= 0) ? totalDy : -totalDy;

    if (absTotalDx <= tolerance && absTotalDy <= tolerance)
    {
        motors.stop_motors();
        return;
    }

    // Calculate speed per axis
    uint8_t baseSpeedX = 0;
    uint8_t baseSpeedY = 0;

    if (absTotalDx == 0)
    {
        baseSpeedX = 0;
        baseSpeedY = speed;
    } 
    else if (absTotalDy == 0)
    {
        baseSpeedX = speed;
        baseSpeedY = 0;
    }
    else if (absTotalDx >= absTotalDy) // if X is longer
    {
        baseSpeedX = speed;
        baseSpeedY = (uint8_t)((speed * absTotalDy) / absTotalDx);
        if (baseSpeedY == 0) baseSpeedY = 1;
    }
    else
    {
        baseSpeedY = speed;
        baseSpeedX = (uint8_t)((speed * absTotalDx) / absTotalDy);
        if (baseSpeedX == 0) baseSpeedX = 1;
    }

    while (1)
    {
        const uint8_t MIN_PWM_MOVE = 75;

        int32_t curX, curY;
        encoders.getXY(curX, curY);

        int32_t dx = target_x - curX;
        int32_t dy = target_y - curY;

        int32_t absDx = (dx >= 0) ? dx : -dx;
        int32_t absDy = (dy >= 0) ? dy : -dy;

        // Check if done
        if (absDx <= tolerance && absDy <= tolerance) break;

        bool xForward = (dx > 0);
        bool yForward = (dy > 0);

        bool enableX = (absDx > tolerance);
        bool enableY = (absDy > tolerance);

        uint8_t speedX = enableX ? (uint8_t)(baseSpeedX * kx) : 0;
        uint8_t speedY = enableY ? (uint8_t)(baseSpeedY * ky) : 0;
    
        speedX = clampMovePwm(speedX, MIN_PWM_MOVE);
        speedY = clampMovePwm(speedY, MIN_PWM_MOVE);

        motors.move_X(xForward, speedX);
        motors.move_Y(yForward, speedY);

        usleep(1000); // 1ms
    }

    motors.stop_motors();
}
