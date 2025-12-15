#include "algo_roberts.hxx"

using namespace FB;

pixel_t roberts_process_pixel(Framebuffer& fb, screen_point_t point) noexcept {
    pixel_t pixel = fb.read(point);

    int32_t G_x = intensity(pixel) - intensity(fb.read(offset(point, 1, 1)));
    int32_t G_y = intensity(fb.read(offset(point, 1, 1))) - intensity(fb.read(offset(point, 1, 1)));

    uint32_t I = std::sqrt(G_x * G_x + G_y * G_y);
    return from_intensity(I);
}
