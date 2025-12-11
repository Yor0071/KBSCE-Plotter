extern "C" {
    #include "xstatus.h"
    #include "xil_printf.h"
}

#include "ov7670_i2c.h"

int main()
{
    xil_printf("Starting OV7670 initialization...\r\n");

    int Status = Ov7670_Init();

    if (Status == XST_SUCCESS) {
        // xil_printf("OV7670 init OK.\r\n");
    } else {
        // xil_printf("OV7670 init FAILED! (Status = %d)\r\n", Status);
        while (1) { }     // stil blijven staan
    }

    // xil_printf("Entering main loop.\r\n");

    while (1) {
        // jouw applicatie
    }

    return 0;
}
