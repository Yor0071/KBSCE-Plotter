#include "algo_prewitt.hxx"

using namespace FB;

pixel_t prewitt_process_pixel(Framebuffer& fb, screen_point_t point) noexcept {
    int32_t NW = intensity(fb.read(offset(point, -1, -1)));
    int32_t N  = intensity(fb.read(offset(point,  0, -1)));
    int32_t NE = intensity(fb.read(offset(point,  1, -1)));
    int32_t W  = intensity(fb.read(offset(point, -1,  0)));
    int32_t E  = intensity(fb.read(offset(point,  1,  0)));
    int32_t SW = intensity(fb.read(offset(point, -1,  1)));
    int32_t S  = intensity(fb.read(offset(point,  0,  1)));
    int32_t SE = intensity(fb.read(offset(point,  1,  1)));

    int32_t G_x = -NW + NE - W  + E  - SW + SE;
    int32_t G_y = -NW - N  - NE + SW + S  + SE;

    double I = std::sqrt(G_x * G_x + G_y * G_y);

    // 135^2 + 135^2 = 36450, sqrt(36450) approx 191
    // 191 / 45 approx 4.24
    return from_intensity(I / 4.24);
}
