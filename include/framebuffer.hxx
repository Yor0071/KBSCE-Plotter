#ifndef H_FRAMEBUFFER
#define H_FRAMEBUFFER

#define XPAR_AXI_BRAM_CTRL_0_BASEADDR 0

#include <cstdint>
// #include <xparameters.h>
// #include <xil_printf.h>
#include <cassert>
#include <iostream>

namespace FB {

typedef struct {
    uint16_t x, y;
} screen_point_t;

screen_point_t offset(screen_point_t point, uint16_t x, uint16_t y) noexcept;

typedef union {
    struct __attribute__((__packed__)) {
        uint32_t raw : 12;
    };

    struct __attribute__((__packed__)) {
        uint32_t b : 4;
        uint32_t g : 4;
        uint32_t r : 4;
    };
} pixel_t;

[[nodiscard]] uint16_t intensity(pixel_t pixel) noexcept;
[[nodiscard]] pixel_t from_intensity(uint16_t intensity) noexcept;

class Framebuffer {
private:
    volatile uint32_t* base_ptr;

    [[nodiscard]] inline volatile uint32_t* get_address(screen_point_t point) const noexcept;

public:
    static constexpr uint32_t WIDTH = 640;
    static constexpr uint32_t HEIGHT = 480;
    static constexpr uint32_t SIZE = (WIDTH * HEIGHT) * 4;

    Framebuffer() noexcept;
    ~Framebuffer() = default;

    virtual void write(screen_point_t point, pixel_t pixel) const noexcept;
    [[nodiscard]] virtual pixel_t read(screen_point_t point) const noexcept;
    [[nodiscard]] bool is_in_bounds(screen_point_t point) const noexcept;
};

}

#endif
