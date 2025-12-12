#include <xil_printf.h>
#include "framebuffer.h"

int main(void) {
    for (uint16_t y = 0; y < FB_HEIGHT; y++) {
        for (uint16_t x = 0; x < FB_WIDTH; x++) {
            fb_write((screen_point_t) { .x = x, .y = y }, PIXEL_RED);
        }
    }

    while (1) {
        pixel_t pixel = fb_read((screen_point_t) { .x = 0, .y = 92 });
        xil_printf("pixel: %03x\r\n", pixel.raw);
    }
}