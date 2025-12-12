#include <xil_printf.h>
#include "framebuffer.h"

int main(void) {
    uint16_t pixel_raw = 0;
    for (uint16_t y = 0; y < FB_HEIGHT; y++) {
        for (uint16_t x = 0; x < FB_WIDTH; x++) {
            fb_write((screen_point_t) { .x = x, .y = y }, (pixel_t) { .raw = pixel_raw });
            if ((y * FB_WIDTH + x) % 16 == 0) {
                    if (++pixel_raw > 0xFFF) {
                    pixel_raw = 0;
                }
            }
        }
    }
    
    for (uint16_t y = 0; y < FB_HEIGHT / 4; y++) {
        for (uint16_t x = 0; x < FB_WIDTH / 4; x++) {
            fb_write((screen_point_t) { .x = x, .y = y }, PIXEL_RED);
        }
    }

    for (uint16_t y = 0; y < FB_HEIGHT / 4; y++) {
        for (uint16_t x = 0; x < FB_WIDTH / 4; x++) {
            pixel_t p = fb_read((screen_point_t) { .x = x, .y = y });
            fb_write((screen_point_t) { .x = x + FB_WIDTH / 4, .y = y }, p);
            fb_write((screen_point_t) { .x = x, .y = y + FB_HEIGHT / 4 }, p);
            fb_write((screen_point_t) { .x = x + FB_WIDTH / 4, .y = y + FB_HEIGHT / 4 }, p);
        }
    }

    for (uint16_t y = 0; y < FB_HEIGHT / 2; y++) {
        for (uint16_t x = 0; x < FB_WIDTH / 2; x++) {
            pixel_t p = fb_read((screen_point_t) { .x = x, .y = y });
            fb_write((screen_point_t) { .x = x + FB_WIDTH / 2, .y = y }, p);
            fb_write((screen_point_t) { .x = x, .y = y + FB_HEIGHT / 2 }, p);
            fb_write((screen_point_t) { .x = x + FB_WIDTH / 2, .y = y + FB_HEIGHT / 2 }, p);
        }
    }

    for (uint16_t r = 2; r < 4; r++) {
        uint16_t writing_x = FB_WIDTH - FB_WIDTH / r;
        uint16_t writing_y = FB_HEIGHT - FB_HEIGHT / r;

        for (uint16_t y = 0; y < FB_HEIGHT; y++) {
            if (y > writing_y || y % r != 0) {
                continue;
            }

            for (uint16_t x = 0; x < FB_WIDTH; x++) {
                if (x > writing_x || x % r != 0) {
                    continue;
                }

                pixel_t p = fb_read((screen_point_t) { .x = x, .y = y });
                fb_write((screen_point_t) { .x = writing_x + x / 4, .y = writing_y + y / 4 }, p);
            }
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