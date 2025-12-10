
#include "xparameters.h" //is generated for the platform as part of the XSA
#include "xil_printf.h" //used to write to the UART
#include "xgpio.h" //provides the functionality for enumerating and
//accessing the GPIOs in a more user-friendly manner.
#include "xil_types.h" //C types such as u32

#include "framebuffer.hxx"
#include <xil_io.h>

int main(void)
{
    Framebuffer fb;

    rgb444_t red_pixel {
        .r = 0xF,
        .g = 0x0,
        .b = 0x0
    };

    uint32_t offset = 0;
    uint8_t* addr = (uint8_t*0xC0000000);
    while (true) {  
        Xil_Out32(addr + offset, 0xFFFFFFFF);
        offset++;
    }
}
