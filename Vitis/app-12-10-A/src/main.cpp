#include "xparameters.h" //is generated for the platform as part of the XSA
#include "xil_printf.h" //used to write to the UART
#include "xgpio.h" //provides the functionality for enumerating and
//accessing the GPIOs in a more user-friendly manner.
#include "xil_types.h" //C types such as u32

#include "framebuffer.hxx"
#include <xil_io.h>

void loop(void);

int main(void)
{
    Framebuffer fb;

    rgb444_t red_pixel {
        .r = 0xF,
        .g = 0x0,
        .b = 0x0
    };

    for (uint64_t n = 0; n < 307200; n++) {
        Xil_Out32(XPAR_LMB_BRAM_IF_CNTLR_0_BASEADDR + n, 0xFFFFFFFF);
    }

    uint64_t n {0};
    while (true) {
        Xil_Out32(XPAR_LMB_BRAM_IF_CNTLR_0_BASEADDR + n, 0xFFFFFFFF);
        n++;
    }
}
