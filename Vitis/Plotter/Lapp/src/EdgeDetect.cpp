#include "EdgeDetect.hxx"
#include "Framebuffer.hxx"
#include "Geometry.h"
#include <xil_printf.h>

using namespace FB;

namespace EdgeDetect {

[[nodiscard]] bool is_edge(FB::screen_point_t point) noexcept {
    Framebuffer fb;
    int32_t I = canny_process_pixel(fb, point);
    return I >= EDGE_THRESHOLD;
}

[[nodiscard]] int32_t canny_gaussian_for_pixel(Framebuffer& fb, screen_point_t point) noexcept {
    int32_t gaussian_kernel[5][5] = {
        {2,  4,  5,  4, 2},
        {4,  9, 12,  9, 4},
        {5, 12, 15, 12, 5},
        {4,  9, 12,  9, 4},
        {2,  4,  5,  4, 2},
    };

    double result_blurred = 0;
    pixel_t p;
    for (uint32_t y = 0; y < 5; y++) {
        for (uint32_t x = 0; x < 5; x++) {
            screen_point_t offset_point = offset(point, x - 2, y - 2);
            if (fb.is_in_bounds(offset_point)) [[likely]] {
                p = fb.read(offset_point);
            } else {
                p = fb.read(point);
            }

            result_blurred += gaussian_kernel[y][x] * intensity(p);
        }
    }

    return result_blurred / 159;
}

[[nodiscard]] uint32_t canny_process_pixel(Framebuffer& fb, screen_point_t point) noexcept {
    int32_t NW = canny_gaussian_for_pixel(fb, offset(point, -1, -1));
    int32_t N  = canny_gaussian_for_pixel(fb, offset(point, 0, -1));
    int32_t NE = canny_gaussian_for_pixel(fb, offset(point, 1, -1));

    int32_t W = canny_gaussian_for_pixel(fb, offset(point, -1, 0));
    int32_t E = canny_gaussian_for_pixel(fb, offset(point, 1, 0));

    int32_t SW = canny_gaussian_for_pixel(fb, offset(point, -1, 1));
    int32_t S  = canny_gaussian_for_pixel(fb, offset(point, 0, 1));
    int32_t SE = canny_gaussian_for_pixel(fb, offset(point, 1, 1));

    int32_t G_x = -NW - 2 * W - SW + NE + 2 * E + SE;
    int32_t G_y = -NW - 2 * N - NE + SW + 2 * S + SE;

    double I = sqrt(G_x * G_x + G_y * G_y);

    // 180^2 + 180^2 = 64800, sqrt(64800) approx 255
    // 255 / 45 approx 0.703
    return I / 5.66;
}

}