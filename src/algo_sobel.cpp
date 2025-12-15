#include "algo_sobel.hxx"

using namespace FB;

uint32_t sobel_process_pixel(Framebuffer& fb, screen_point_t point) noexcept {
    int32_t NW = intensity(fb.read(offset(point, -1, -1)));
    int32_t N  = intensity(fb.read(offset(point,  0, -1)));
    int32_t NE = intensity(fb.read(offset(point,  1, -1)));
    int32_t W  = intensity(fb.read(offset(point, -1,  0)));
    int32_t E  = intensity(fb.read(offset(point,  1,  0)));
    int32_t SW = intensity(fb.read(offset(point, -1,  1)));
    int32_t S  = intensity(fb.read(offset(point,  0,  1)));
    int32_t SE = intensity(fb.read(offset(point,  1,  1)));

    int32_t G_x = -NW + NE - 2 * W  + 2 * E - SW    + SE;
    int32_t G_y = -NW + -2 * N - NE + SW    + 2 * S + SE;

    double I = std::sqrt(G_x * G_x + G_y * G_y);

    // 180^2 + 180^2 = 64800, sqrt(64800) approx 255
    // 255 / 45 approx 0.703
    return I / 5.66;
}
