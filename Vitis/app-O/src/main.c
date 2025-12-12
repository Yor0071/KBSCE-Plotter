#include <xil_printf.h>
#include "framebuffer.h"

int main(void) {
    for (uint16_t y = 0; y < FB_HEIGHT; y++) {
        for (uint16_t x = 0; x < FB_WIDTH; x++) {
            fb_write((screen_point_t) { .x = x, .y = y }, PIXEL_RED);
        }
    }

    for (uint16_t y = 0; y < FB_HEIGHT / 2; y++) {
        for (uint16_t x = 0; x < FB_WIDTH / 2; x++) {
            fb_write((screen_point_t) { .x = x, .y = y }, PIXEL_BLUE);
        }
    }

    for (uint16_t y = 0; y < FB_HEIGHT / 2; y++) {
        for (uint16_t x = 0; x < FB_WIDTH / 2; x++) {
            pixel_t p = fb_read((screen_point_t) { .x = x, .y = y });
            fb_write((screen_point_t) { .x = x + FB_WIDTH / 2, .y = y + FB_HEIGHT / 2 }, p);
        }
    }

    pixel_t pixel;
    while (1) {
        pixel = fb_read((screen_point_t) { .x = 0, .y = FB_HEIGHT / 2 - 1 });
        xil_printf("pixel A: %03x\r\n", pixel.raw);

        pixel = fb_read((screen_point_t) { .x = 0, .y = FB_HEIGHT / 2 });
        xil_printf("pixel B: %03x\r\n", pixel.raw);
    }
}