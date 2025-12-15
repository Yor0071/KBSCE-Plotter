#include "mock_framebuffer.hxx"

FB::MockFramebuffer::MockFramebuffer(pixel_t (&input_fb)[HEIGHT][WIDTH], pixel_t (&output_fb)[HEIGHT][WIDTH]) noexcept
    : input_fb{input_fb}, output_fb{output_fb} {}

void FB::MockFramebuffer::write(screen_point_t point, pixel_t pixel) const noexcept {
    if (!is_in_bounds(point)) {
        std::cerr << "Out of bounds access: [" << point.y << ',' << point.x << "]\n";
        std::abort();
    }

    output_fb[point.y][point.x] = pixel;
}

[[nodiscard]] FB::pixel_t FB::MockFramebuffer::read(screen_point_t point) const noexcept {
    if (!is_in_bounds(point)) {
        std::cerr << "Out of bounds access: [" << point.y << ',' << point.x << "]\n";
        std::abort();
    }

    return input_fb[point.y][point.x];
}
