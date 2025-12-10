#ifndef H_FRAMEBUFFER
#define H_FRAMEBUFFER

#include <unistd.h>
#include <xparameters.h>
#include <xil_printf.h>
#include <assert.h>

typedef struct {
    uint16_t r : 4;
    uint16_t g : 4;
    uint16_t b : 4;
} rgb444_t;

rgb444_t make_pixel(uint16_t raw_pixel_data) noexcept;
uint16_t get_raw_pixel_data(rgb444_t pixel) noexcept;

class Framebuffer {
private:
    volatile uint32_t* const base_ptr;
    volatile uint32_t* get_address(uint32_t byte_offset) const noexcept;

public:
    Framebuffer() noexcept;

    void write(uint32_t byte_offset, rgb444_t pixel) const noexcept;
    [[nodiscard]] rgb444_t read(uint32_t byte_offset) const noexcept;
    [[nodiscard]] bool is_in_bounds(uint32_t byte_offset) const noexcept;
};

#endif
