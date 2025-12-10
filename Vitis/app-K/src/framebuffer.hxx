#ifndef H_FRAMEBUFFER
#define H_FRAMEBUFFER

#include <unistd.h>
#include <xparameters.h>
#include <xil_printf.h>
#include <assert.h>

namespace FB {

typedef struct {
    const uint16_t x, y;
} screen_point_t;

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

    void write(screen_point_t point, pixel_t pixel) const noexcept;
    [[nodiscard]] pixel_t read(screen_point_t point) const noexcept;
    [[nodiscard]] inline bool is_in_bounds(screen_point_t point) const noexcept;
};

}

#endif
