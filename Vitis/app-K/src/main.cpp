
#include "xparameters.h" //is generated for the platform as part of the XSA
#include "xil_printf.h" //used to write to the UART
#include "xgpio.h" //provides the functionality for enumerating and
//accessing the GPIOs in a more user-friendly manner.
#include "xil_types.h" //C types such as u32

#include "framebuffer.hxx"
#include "xil_io.h"

using namespace FB;

int main(void) noexcept
{
    Framebuffer fb;

    pixel_t pixel_r = { .b = 0x0, .g = 0x0, .r = 0xF };
    pixel_t pixel_g = { .b = 0x0, .g = 0xF, .r = 0x0 };
    pixel_t pixel_b = { .b = 0xF, .g = 0x0, .r = 0x0 };

    const pixel_t pixel[] = {pixel_r, pixel_g, pixel_b};

    while (true) {
        for (uint32_t pixel_n = 0; pixel_n <= 2; pixel_n++) {
            for (uint16_t y = 0; y < fb.HEIGHT; y++) {
                for (uint16_t x = 0; x < fb.WIDTH; x++) {
                    fb.write({ .x = x, .y = y }, pixel[pixel_n]);
                }
            }
        }
    }
}
