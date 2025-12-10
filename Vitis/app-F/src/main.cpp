
#include "xparameters.h" //is generated for the platform as part of the XSA
#include "xil_printf.h" //used to write to the UART
#include "xgpio.h" //provides the functionality for enumerating and
//accessing the GPIOs in a more user-friendly manner.
#include "xil_types.h" //C types such as u32

#include "framebuffer.hxx"
#include "xil_io.h"

int main(void)
{
    Framebuffer fb;

    rgb444_t red_pixel {
        .r = 0xF,
        .g = 0x0,
        .b = 0x0
    };

    uint16_t pixel = 0;
    while (true) {
        for (uint64_t addr = XPAR_AXI_BRAM_CTRL_0_BASEADDR; addr <= XPAR_AXI_BRAM_CTRL_0_HIGHADDR; addr++) {
            Xil_Out32(addr, pixel++);
            if (pixel > 0xFFF) {
                pixel = 0;
            }
        pixel++;
        }
    }
}
