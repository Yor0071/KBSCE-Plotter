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
    const int32_t tolerance = 5;

    // calibrated speed scale
    const float kx = 1.00f;
    const float ky = 0.80f;

    // Live lijn-correctie (tunen)
    const int32_t MAX_CORR = 40;     // max PWM correctie
    const int32_t ERR_DIV  = 800;    // groter = minder correctie (bv 500..1500)

    // Min PWM om motor in beweging te houden
    const uint8_t MIN_PWM_MOVE = 130;

    // Startpunt 1x vastleggen
    int32_t startX, startY;
    encoders.getXY(startX, startY);

    int32_t totalDx = target_x - startX;
    int32_t totalDy = target_y - startY;

    int32_t absTotalDx = (totalDx >= 0) ? totalDx : -totalDx;
    int32_t absTotalDy = (totalDy >= 0) ? totalDy : -totalDy;

    if (absTotalDx <= tolerance && absTotalDy <= tolerance) {
        motors.stop_motors();
        return;
    }

    // Basis PWM ratio (1x)
    uint8_t baseSpeedX = 0;
    uint8_t baseSpeedY = 0;

    if (absTotalDx == 0) {
        baseSpeedX = 0;
        baseSpeedY = speed;
    }
    else if (absTotalDy == 0) {
        baseSpeedX = speed;
        baseSpeedY = 0;
    }
    else if (absTotalDx >= absTotalDy) {
        baseSpeedX = speed;
        baseSpeedY = (uint8_t)(((uint32_t)speed * (uint32_t)absTotalDy) / (uint32_t)absTotalDx);
        if (baseSpeedY == 0) baseSpeedY = 1;
    }
    else {
        baseSpeedY = speed;
        baseSpeedX = (uint8_t)(((uint32_t)speed * (uint32_t)absTotalDx) / (uint32_t)absTotalDy);
        if (baseSpeedX == 0) baseSpeedX = 1;
    }

    auto clampU8 = [](int32_t v) -> uint8_t {
        if (v < 0)   v = 0;
        if (v > 255) v = 255;
        return (uint8_t)v;
    };

    // clamp met enable: als je moet bewegen, nooit onder MIN_PWM_MOVE
    auto clampMove = [&](int32_t v, bool enable) -> uint8_t {
        if (!enable) return 0;
        if (v < (int32_t)MIN_PWM_MOVE) v = MIN_PWM_MOVE;
        if (v > 255) v = 255;
        return (uint8_t)v;
    };

    while (1) {
        int32_t curX, curY;
        encoders.getXY(curX, curY);

        int32_t dx = target_x - curX;
        int32_t dy = target_y - curY;

        int32_t absDx = (dx >= 0) ? dx : -dx;
        int32_t absDy = (dy >= 0) ? dy : -dy;

        if (absDx <= tolerance && absDy <= tolerance) break;

        bool xForward = (dx > 0);
        bool yForward = (dy > 0);

        bool enableX = (absDx > tolerance);
        bool enableY = (absDy > tolerance);

        // ===== Live lijn error =====
        // Gebruik absolute total afstanden (geen deling door 0, robust)
        int32_t xRel = curX - startX;
        int32_t yRel = curY - startY;

        // e = xRel*absTotalDy - yRel*absTotalDx  (0 = precies op de lijn)
        int64_t e = (int64_t)xRel * (int64_t)absTotalDy - (int64_t)yRel * (int64_t)absTotalDx;

        int32_t corr = (int32_t)(e / ERR_DIV);
        if (corr >  MAX_CORR) corr =  MAX_CORR;
        if (corr < -MAX_CORR) corr = -MAX_CORR;

        // Basis PWM
        int32_t sx = enableX ? (int32_t)(baseSpeedX * kx) : 0;
        int32_t sy = enableY ? (int32_t)(baseSpeedY * ky) : 0;

        // Corrigeer symmetrisch (houdt lijn het strakst)
        sx -= corr;
        sy += corr;

        // Clamp 0..255
        sx = (int32_t)clampU8(sx);
        sy = (int32_t)clampU8(sy);

        // Clamp naar min PWM als enable
        uint8_t speedX = clampMove(sx, enableX);
        uint8_t speedY = clampMove(sy, enableY);

        motors.move_X(xForward, speedX);
        motors.move_Y(yForward, speedY);

        usleep(1000);
    }

    motors.stop_motors();
}


void Plotter::drawPath(const Vec2* path, uint32_t length, uint8_t speed)
{
    if (path == nullptr || length == 0) return;

    for (uint32_t i = 0; i < length; i++)
    {
        // xil_printf("[PATH] %lu -> (%ld,%ld)\r\n",
        //            (unsigned long)i, (long)path[i].x, (long)path[i].y);

        moveTo(path[i].x, path[i].y, speed);
        //usleep(500);
        // int32_t cx, cy;
        // encoders.getXY(cx, cy);
        // xil_printf("[PATH] reached (%ld,%ld)\r\n\r\n", (long)cx, (long)cy);
    }
}