#include "mock_framebuffer.hxx"

FB::MockFramebuffer::MockFramebuffer(pixel_t (&input_fb)[HEIGHT][WIDTH], pixel_t (&output_fb)[HEIGHT][WIDTH]) noexcept
    : input_fb{input_fb}, output_fb{output_fb} {}

void FB::MockFramebuffer::write(screen_point_t point, pixel_t pixel) const noexcept {
    std::cout << "write()\n";
}

[[nodiscard]] FB::pixel_t FB::MockFramebuffer::read(screen_point_t point) const noexcept {
    std::cout << "read()\n";
    return {};
}
