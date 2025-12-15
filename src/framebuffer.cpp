#include "framebuffer.hxx"

namespace FB {

Framebuffer::Framebuffer() noexcept
    : base_ptr{reinterpret_cast<volatile uint32_t*>(XPAR_AXI_BRAM_CTRL_0_BASEADDR)} {}

[[nodiscard]] inline volatile uint32_t* Framebuffer::get_address(screen_point_t point) const noexcept {
    if (!is_in_bounds(point)) [[unlikely]] {
        // Uncomment to test. Commented to save memory space
        // Xil_printf("E: Out of bounds [%hu,%hu]\n", point.x, point.y);
        std::cerr << "E: Out of bounds access [" << point.x << ',' << point.y << "]\n";
        return base_ptr;
    }

    uint32_t offset = point.y * WIDTH + point.x;
    volatile uint32_t* address = base_ptr + offset;

    return address;
}

void Framebuffer::write(screen_point_t point, pixel_t pixel) const noexcept {
    volatile uint32_t* address = get_address(point);
    *address = pixel.raw;
}

[[nodiscard]] pixel_t Framebuffer::read(screen_point_t point) const noexcept {
    volatile uint32_t* address = get_address(point);
    return pixel_t {
        .raw = *address
    };
}

[[nodiscard]] bool Framebuffer::is_in_bounds(screen_point_t point) const noexcept {
    return point.x < WIDTH && point.y < HEIGHT;
}

}
