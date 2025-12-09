#include "xparameters.h" //is generated for the platform as part of the XSA
#include "xil_printf.h" //used to write to the UART
#include "xgpio.h" //provides the functionality for enumerating and
//accessing the GPIOs in a more user-friendly manner.
#include "xil_types.h" //C types such as u32

//#define XPAR_AXI_BRAM_CTRL_0_COMPATIBLE "xlnx,axi-bram-ctrl-4.1"
//#define XPAR_AXI_BRAM_CTRL_0_BASEADDR 0x37ff0000
//#define XPAR_AXI_BRAM_CTRL_0_HIGHADDR 0x37ff1fff
//#define XPAR_AXI_BRAM_CTRL_0_DATA_WIDTH 0x20
//#define XPAR_AXI_BRAM_CTRL_0_ECC 0x0
//#define XPAR_AXI_BRAM_CTRL_0_FAULT_INJECT 0x0
//#define XPAR_AXI_BRAM_CTRL_0_ECC_ONOFF_RESET_VALUE 0x0

#include "framebuffer.hxx"

int main()
{
    
// XGpio Gpio_led, Gpio_switches;
// XGpio_Initialize(&Gpio_led, XPAR_AXI_GPIO_LEDS_BASEADDR);
// XGpio_Initialize(&Gpio_switches, XPAR_AXI_GPIO_SWITCHES_BASEADDR);
// volatile int Delay;
// XGpio_SetDataDirection(&Gpio_led, LED_CHANNEL, ~LED);
// XGpio_SetDataDirection(&Gpio_switches, SWITCH_CHANNEL, SWITCH);
// /* Loop forever blinking the LED */
// while (1) {
// u32 value = XGpio_DiscreteRead(&Gpio_switches, SWITCH_CHANNEL);
// XGpio_DiscreteWrite(&Gpio_led, LED_CHANNEL, value);
// /* Wait a small amount of time so the LED is visible */
// for (Delay = 0; Delay < LED_DELAY; Delay++);
// }
}