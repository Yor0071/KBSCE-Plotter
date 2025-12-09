#include "framebuffer.hxx"

Framebuffer::Framebuffer() noexcept : base_ptr{(volatile uint32_t*)XPAR_AXI_BRAM_CTRL_0_BASEADDR} {}

volatile uint32_t* Framebuffer::get_address(uint64_t byte_offset) const noexcept {
    if (!is_in_bounds(byte_offset)) [[unlikely]] {
        xil_printf("[CRIT] Attempted access outside of bounds for offset (WRITE): %lu\n", byte_offset);
        return base_ptr;
    }

    return this->base_ptr + byte_offset / (sizeof(uint32_t) / sizeof(uint8_t));
}

[[nodiscard]]
bool Framebuffer::is_in_bounds(uint64_t offset) const noexcept {
    uint64_t max_offset = XPAR_AXI_BRAM_CTRL_0_HIGHADDR - XPAR_AXI_BRAM_CTRL_0_BASEADDR;
    return offset <= max_offset;
}

void Framebuffer::write(uint64_t byte_offset, rgb444_t pixel) const noexcept {
    *get_address(byte_offset) = get_raw_pixel_data(pixel);
}

[[nodiscard]]
rgb444_t Framebuffer::read(uint64_t byte_offset) const noexcept {
    return make_pixel(*get_address(byte_offset));
}

rgb444_t make_pixel(uint16_t raw_pixel_data) noexcept {
    rgb444_t pixel;
    pixel.r = raw_pixel_data >> 8 & 0xF;
    pixel.g = raw_pixel_data >> 4 & 0xF;
    pixel.b = raw_pixel_data & 0xF;

    return pixel;
}

uint16_t get_raw_pixel_data(rgb444_t pixel) noexcept {
    return pixel.r << 8 | pixel.g << 4 | pixel.b;
}
