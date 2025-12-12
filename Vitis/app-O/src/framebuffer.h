#ifndef H_FRAMEBUFFER
#define H_FRAMEBUFFER

#include "xparameters.h"
#include "xil_types.h"

typedef struct {
    uint16_t x, y;
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

#define PIXEL_RED  ((pixel_t) { .b = 0, .g = 0, .r = 0xF })
#define PIXEL_BLUE ((pixel_t) { .b = 0xF, .g = 0, .r = 0 })

#define FB_BASE_PTR ((volatile uint32_t*) XPAR_AXI_BRAM_CTRL_0_BASEADDR)
#define FB_WIDTH    (640)
#define FB_HEIGHT   (480)
#define FB_SIZE     (FB_WIDTH * FB_HEIGHT)

volatile uint32_t* fb_address(screen_point_t point);
void fb_write(screen_point_t point, pixel_t pixel);
pixel_t fb_read(screen_point_t point);

#endif
