
#include "xparameters.h" //is generated for the platform as part of the XSA
#include "xil_printf.h" //used to write to the UART
#include "xgpio.h" //provides the functionality for enumerating and
//accessing the GPIOs in a more user-friendly manner.
#include "xil_types.h" //C types such as u32

#include "framebuffer.hxx"
#include "xil_io.h"

struct {
    uint64_t size = 307200 * 4;
    uint8_t* base_addr = (uint8_t*)XPAR_AXI_BRAM_CTRL_0_BASEADDR;
    uint8_t* high_addr = (uint8_t*)XPAR_AXI_BRAM_CTRL_0_BASEADDR + size;

    rgb444_t read(uint64_t offset) {
        return rgb444_t { .raw = {.data = (uint16_t)*(volatile uint32_t*)(base_addr + offset) }};
    }

    void write(uint64_t offset, rgb444_t pixel) {
        *(volatile uint32_t*)(base_addr + offset) = pixel.raw.data;
    }
} FB;

int main(void)
{
    Framebuffer fb;

    rgb444_t pixel_r = { .rgb = rgb(0xF, 0x0, 0x0) };
    rgb444_t pixel_g = { .rgb = rgb(0x0, 0xF, 0x0) };
    rgb444_t pixel_b = { .rgb = rgb(0x0, 0x0, 0xF) };

    rgb444_t pixel[] = {pixel_r, pixel_g, pixel_b};
    while (true) {
        for (uint32_t n = 0; n <= 2; n++) {
            for (uint64_t offset = 0; offset < FB.size; offset++) {
                FB.write(offset, pixel[n]);
            }
        }
    }
}
