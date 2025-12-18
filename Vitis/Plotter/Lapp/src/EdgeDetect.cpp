#include "EdgeDetect.hxx"
#include "Geometry.h"
#include "Framebuffer.hxx"

using namespace FB;

namespace EdgeDetect {

[[nodiscard]] MaybePolylineView get_next_line(FB::screen_point_t& point) noexcept {
    MaybePolylineView line = {};
    line.contains_data = false;

    static Framebuffer fb;
    static Vec2 vec2;

    while (true) {
        if (++point.x > fb.WIDTH) {
            point.x = 0;
            if (++point.y > fb.HEIGHT) {
                return line; // End of framebuffer
            }
        }

        int32_t intensity = canny_process_pixel(fb, point);
        if (intensity >= 5) {
            vec2 = screen_point_to_vec2(point);
            line.data = PolylineView {
                .pts = &vec2,
                .count = 1
            };

            break;
        }
    }

    line.contains_data = true;
    return line;
}

int32_t canny_gaussian_for_pixel(Framebuffer& fb, screen_point_t point) noexcept {
    int32_t gaussian_kernel[5][5] = {
        {2,  4,  5,  4, 2},
        {4,  9, 12,  9, 4},
        {5, 12, 15, 12, 5},
        {4,  9, 12,  9, 4},
        {2,  4,  5,  4, 2},
    };

    double result_blurred = 0;
    for (uint32_t y = 0; y < 5; y++) {
        for (uint32_t x = 0; x < 5; x++) {
            pixel_t p = fb.read(offset(point, x - 2, y - 2));
            result_blurred += gaussian_kernel[y][x] * intensity(p);
        }
    }

    return result_blurred / 159;
}

uint32_t canny_process_pixel(Framebuffer& fb, screen_point_t point) noexcept {
    int32_t NW = canny_gaussian_for_pixel(fb, offset(point, -1, -1));
    int32_t N  = canny_gaussian_for_pixel(fb, offset(point, 0, -1));
    int32_t NE = canny_gaussian_for_pixel(fb, offset(point, 1, -1));

    int32_t W = canny_gaussian_for_pixel(fb, offset(point, -1, 0));
    int32_t C  = canny_gaussian_for_pixel(fb, offset(point, 0, 0));
    int32_t E = canny_gaussian_for_pixel(fb, offset(point, 1, 0));

    int32_t SW = canny_gaussian_for_pixel(fb, offset(point, -1, 1));
    int32_t S  = canny_gaussian_for_pixel(fb, offset(point, 0, 1));
    int32_t SE = canny_gaussian_for_pixel(fb, offset(point, 1, 1));

    int32_t G_x = -NW - 2 * W - SW + NE + 2 * E + SE;
    int32_t G_y = -NW - 2 * N - NE + SW + 2 * S + SE;

    double I = std::sqrt(G_x * G_x + G_y * G_y);

    // 180^2 + 180^2 = 64800, sqrt(64800) approx 255
    // 255 / 45 approx 0.703
    return I / 5.66;
}

}