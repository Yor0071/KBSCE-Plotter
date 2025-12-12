
#include "xparameters.h" //is generated for the platform as part of the XSA
#include "xil_printf.h" //used to write to the UART
#include "xgpio.h" //provides the functionality for enumerating and
//accessing the GPIOs in a more user-friendly manner.
#include "xil_types.h" //C types such as u32

// #include "framebuffer.hxx"
#include "xil_io.h"
// using namespace FB;

int main(void)
{
    // Framebuffer fb;

    while (1) {
    //     // pixel_t pixel = fb.read(screen_point_t {
    //     //     .x = 0, .y = 0
    //     // });

    //     outbyte('X');
    //     // print("TESTTEST\n");
        xil_printf("test\n");
    }
}