#include "Plotter.h"
#include <stdint.h>

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

void Plotter::moveTo(int32_t target_x, int32_t target_y, uint8_t speed)
{
    const int32_t tolerance = 5; // paar encoder-ticks speling

    while (1) {
        int32_t curX, curY;
        encoders.getXY(curX, curY);

        int32_t dx = target_x - curX;
        int32_t dy = target_y - curY;

        int32_t absDx = (dx >= 0) ? dx : -dx;
        int32_t absDy = (dy >= 0) ? dy : -dy;

        // Klaar als beide binnen de tolerantie zijn
        if (absDx <= tolerance && absDy <= tolerance) {
            break;
        }

        // Richtingen
        bool xForward = (dx > 0);
        bool yForward = (dy > 0);

        // Per as bepalen of hij nog "aan" moet zijn
        bool enableX = (absDx > tolerance);
        bool enableY = (absDy > tolerance);

        uint8_t speedX = 0;
        uint8_t speedY = 0;

        if (enableX) speedX = speed;
        if (enableY) speedY = speed;

        // Alleen schalen als beide assen nog bewegen
        if (enableX && enableY) {
            if (absDx > absDy && absDx != 0) {
                // X is "snelste" as, Y langzamer maken
                speedY = (uint8_t)((speed * absDy) / absDx);
            } else if (absDy > absDx && absDy != 0) {
                // Y is snelste as, X langzamer maken
                speedX = (uint8_t)((speed * absDx) / absDy);
            }
        }

        // Eventueel hele kleine snelheden wegsnijden om gejitter te vermijden
        const uint8_t MIN_SPEED = 5;  // tune naar smaak
        if (speedX < MIN_SPEED) speedX = 0;
        if (speedY < MIN_SPEED) speedY = 0;

        // Motoren aansturen
        motors.move_X(xForward, speedX);
        motors.move_Y(yForward, speedY);

        delay();  // korte busy-wait
    }

    motors.stop_motors();
}
