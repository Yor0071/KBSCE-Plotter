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
    const uint16_t x, y;
} screen_point_t;

typedef union {
    struct {
        uint16_t raw : 12;
    };

    struct {
        uint16_t b : 4;
        uint16_t g : 4;
        uint16_t r : 4;
    };
} pixel_t;

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
    [[nodiscard]] inline bool is_in_bounds(screen_point_t point) const noexcept;
};

}

#endif
