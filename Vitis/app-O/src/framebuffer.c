#include "framebuffer.h"

volatile uint32_t* fb_address(screen_point_t point) {
    return FB_BASE_PTR + point.y * FB_WIDTH + point.x;
}

void fb_write(screen_point_t point, pixel_t pixel) {
    *fb_address(point) = pixel.raw;
}

pixel_t fb_read(screen_point_t point) {
    return (pixel_t){ .raw = *fb_address(point) };
}
