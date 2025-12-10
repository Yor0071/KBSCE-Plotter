
#include "xparameters.h" //is generated for the platform as part of the XSA
#include "xil_printf.h" //used to write to the UART
#include "xgpio.h" //provides the functionality for enumerating and
//accessing the GPIOs in a more user-friendly manner.
#include "xil_types.h" //C types such as u32

#include "framebuffer.hxx"
#include "xil_io.h"

struct {
    uint32_t base_addr = XPAR_AXI_BRAM_CTRL_0_BASEADDR;
    uint32_t high_addr = XPAR_AXI_BRAM_CTRL_0_BASEADDR + 307200;
} FBAddr;

int main(void)
{
    Framebuffer fb;

    rgb444_t pixel_r = { .rgb = rgb(0xF, 0x0, 0x0) };
    rgb444_t pixel_g = { .rgb = rgb(0x0, 0xF, 0x0) };
    rgb444_t pixel_b = { .rgb = rgb(0x0, 0x0, 0xF) };

    rgb444_t pixel[] = {pixel_r, pixel_g, pixel_b};
    while (true) {
        for (uint32_t n = 0; n <= 2; n++) {
            for (volatile uint8_t* addr = reinterpret_cast<uint8_t*>(FBAddr.base_addr);
                 addr <= reinterpret_cast<uint8_t*>(FBAddr.high_addr);
                 addr++) {
                *(volatile uint32_t*)addr = pixel[n].raw.data;
            }
        }
    }
}
