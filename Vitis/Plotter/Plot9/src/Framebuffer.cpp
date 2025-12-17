#include "Framebuffer.hxx"
#include <xil_printf.h>

namespace FB {

[[nodiscard]] uint16_t intensity(pixel_t pixel) noexcept {
    return pixel.r + pixel.g + pixel.b;
}

[[nodiscard]] pixel_t from_intensity(uint16_t intensity) noexcept {
    return { .b = uint16_t(intensity / 3), .g = uint16_t(intensity / 3), .r = uint16_t(intensity / 3) };
}

[[nodiscard]] screen_point_t offset(screen_point_t point, uint16_t x, uint16_t y) noexcept {
    return {
        .x = static_cast<uint16_t>(point.x + x),
        .y = static_cast<uint16_t>(point.y + y),
    };
}

Framebuffer::Framebuffer() noexcept
    : base_ptr{reinterpret_cast<volatile uint32_t*>(XPAR_AXI_BRAM_CTRL_0_BASEADDR)} {}

[[nodiscard]] inline volatile uint32_t* Framebuffer::get_address(screen_point_t point) const noexcept {
    if (!is_in_bounds(point)) [[unlikely]] {
        xil_printf("E: Out of bounds [%hu,%hu]\n", point.x, point.y);
        return base_ptr;
    }

    uint32_t offset = point.y * WIDTH + point.x;
    volatile uint32_t* address = base_ptr + offset;

    return address;
}

void Framebuffer::write(screen_point_t point, pixel_t pixel) const noexcept {
    volatile uint32_t* address = get_address(point);
    asm __volatile__ ("nop\nnop\nnop\nnop\n");
    *address = pixel.raw;
}

[[nodiscard]] pixel_t Framebuffer::read(screen_point_t point) const noexcept {
    volatile uint32_t* address = get_address(point);
    return pixel_t {
        .raw = *address
    };
    
    asm __volatile__ ("nop\nnop\nnop\nnop\n");
}

[[nodiscard]] bool Framebuffer::is_in_bounds(screen_point_t point) const noexcept {
    return point.x < WIDTH && point.y < HEIGHT;
}

}