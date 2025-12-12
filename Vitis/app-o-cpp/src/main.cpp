#include "framebuffer.hxx"

int main(void) {
    FB::Framebuffer fb;

    // fill screen with color green
    for (uint16_t y = 0; y < fb.HEIGHT; y++) {
        for (uint16_t x = 0; x < fb.WIDTH; x++) {
            fb.write({ .x = x, .y = y }, { .b = 0, .g = 0xF, .r = 0 });
        }
    }

    // bottom right portion color blue
    for (uint16_t y = 0; y < fb.HEIGHT / 2; y++) {
        for (uint16_t x = 0; x < fb.WIDTH / 2; x++) {
            fb.write({ .x = static_cast<uint16_t>(x + fb.WIDTH / 2), .y = static_cast<uint16_t>(y + fb.HEIGHT / 2) }, { .b = 0xF, .g = 0, .r = 0 });
        }
    }

    // read bottom right, write to other portions
    for (uint16_t y = 0; y < fb.HEIGHT / 2; y++) {
        for (uint16_t x = 0; x < fb.WIDTH / 2; x++) {
            FB::pixel_t p = fb.read({ .x = static_cast<uint16_t>(x + fb.WIDTH / 2), .y = static_cast<uint16_t>(y + fb.HEIGHT / 2) });
            fb.write({ .x = static_cast<uint16_t>(x + fb.WIDTH / 2), .y = y }, p);
            fb.write({ .x = x, .y = y }, p);
            fb.write({ .x = x, .y = static_cast<uint16_t>(y + fb.HEIGHT / 2) }, p);
        }
    }

    while (true) {}
}