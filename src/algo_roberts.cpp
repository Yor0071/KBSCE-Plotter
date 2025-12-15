#include "algo_roberts.hxx"

using namespace FB;

uint32_t roberts_process_pixel(Framebuffer& fb, screen_point_t point) noexcept {
    pixel_t pixel = fb.read(point);

    int32_t G_x = intensity(pixel) - intensity(fb.read(offset(point, 1, 1)));
    int32_t G_y = intensity(fb.read(offset(point, 1, 1))) - intensity(fb.read(offset(point, 1, 1)));

    double I = std::sqrt(G_x * G_x + G_y * G_y);

    // 45^2 + 45^2 = 4050, sqrt(4050) approx 64
    // 45 / 64 approx 0.703
    return I * 0.703;
}
