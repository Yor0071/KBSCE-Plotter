#include "framebuffer.hxx"

Framebuffer::Framebuffer() noexcept : base_ptr{(volatile uint32_t*)FRAMEBUFFER_BASEADDR} {}

RGBPixel rgb(uint16_t r, uint16_t g, uint16_t b) noexcept {
    return RGBPixel {
        .b = b,
        .g = g,
        .r = r
    };
}

[[nodiscard]]
volatile uint32_t* Framebuffer::get_address(uint32_t byte_offset) const noexcept {
    if (!is_in_bounds(byte_offset)) [[unlikely]] {
        return base_ptr;
    }

    return this->base_ptr + byte_offset / (sizeof(uint32_t) / sizeof(uint8_t));
}

[[nodiscard]]
bool Framebuffer::is_in_bounds(uint32_t offset) const noexcept {
    uint64_t max_offset = FRAMEBUFFER_HIGHADDR - FRAMEBUFFER_BASEADDR;
    return offset <= max_offset;
}

void Framebuffer::write(uint32_t byte_offset, rgb444_t pixel) const noexcept {
    *get_address(byte_offset) = get_raw_pixel_data(pixel);
}

[[nodiscard]]
rgb444_t Framebuffer::read(uint32_t byte_offset) const noexcept {
    return make_pixel(*get_address(byte_offset));
}

[[nodiscard]]
rgb444_t make_pixel(uint16_t raw_pixel_data) noexcept {
    rgb444_t pixel;
    pixel.rgb.r = raw_pixel_data >> 8 & 0xF;
    pixel.rgb.g = raw_pixel_data >> 4 & 0xF;
    pixel.rgb.b = raw_pixel_data & 0xF;

    return pixel;
}

[[nodiscard]]
uint16_t get_raw_pixel_data(rgb444_t pixel) noexcept {
    return pixel.rgb.r << 8 | pixel.rgb.g << 4 | pixel.rgb.b;
}
