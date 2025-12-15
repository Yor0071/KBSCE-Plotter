#include "algo_sobel.hxx"

using namespace FB;

pixel_t sobel_process_pixel(Framebuffer& fb, screen_point_t point) noexcept {
    int32_t NW = intensity(fb.read(offset(point, -1, -1)));
    int32_t N  = intensity(fb.read(offset(point,  0, -1)));
    int32_t NE = intensity(fb.read(offset(point,  1, -1)));
    int32_t W  = intensity(fb.read(offset(point, -1,  0)));
    int32_t E  = intensity(fb.read(offset(point,  1,  0)));
    int32_t SW = intensity(fb.read(offset(point, -1,  1)));
    int32_t S  = intensity(fb.read(offset(point,  0,  1)));
    int32_t SE = intensity(fb.read(offset(point,  1,  1)));

    int32_t G_x =
        -1 * NW + 1 * NE +
        -2 * W  + 2 * E  +
        -1 * SW + 1 * SE;

    int32_t G_y =
        -1 * NW + -2 * N + -1 * NE +
         1 * SW +  2 * S + 1  * SE;

    double I = std::sqrt(G_x * G_x + G_y * G_y);

    // Max possible I = sqrt(2) * (4 * 45) approx 254.6
    // Scale factor = 45 / 254.6 approx 0.1767
    // So: I * 0.1767 approx I / 5.66
    return from_intensity(I / 5.66);
}
