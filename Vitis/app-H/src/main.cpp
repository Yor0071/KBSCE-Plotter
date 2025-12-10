
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

    rgb444_t pixel_r = { .rgb = rgb(0xF, 0x0, 0x0) };
    rgb444_t pixel_g = { .rgb = rgb(0x0, 0xF, 0x0) };
    rgb444_t pixel_b = { .rgb = rgb(0x0, 0x0, 0xF) };

    while (true) {
        for (volatile uint8_t* addr = (uint8_t*)XPAR_AXI_BRAM_CTRL_0_BASEADDR; addr <= (uint8_t*)XPAR_AXI_BRAM_CTRL_0_HIGHADDR; addr++) {
            *(volatile uint32_t*)addr = pixel_r.raw.data;
        }
    }
}
