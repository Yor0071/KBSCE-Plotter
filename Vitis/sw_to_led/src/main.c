#include "xparameters.h" //is generated for the platform as part of the XSA
#include "xil_printf.h" //used to write to the UART
#include "xgpio.h" //provides the functionality for enumerating and
//accessing the GPIOs in a more user-friendly manner.
#include "xil_types.h" //C types such as u32

#define LED_CHANNEL 1
#define SWITCH_CHANNEL 1
#define LED 0xFFFF
#define SWITCH 0xFFFF
#define LED_DELAY 10000

int main()
{
XGpio Gpio_led, Gpio_switches;
XGpio_Initialize(&Gpio_led, XPAR_AXI_GPIO_LEDS_BASEADDR);
XGpio_Initialize(&Gpio_switches, XPAR_AXI_GPIO_SWITCHES_BASEADDR);
volatile int Delay;
XGpio_SetDataDirection(&Gpio_led, LED_CHANNEL, ~LED);
XGpio_SetDataDirection(&Gpio_switches, SWITCH_CHANNEL, SWITCH);
/* Loop forever blinking the LED */
while (1) {
u32 value = XGpio_DiscreteRead(&Gpio_switches, SWITCH_CHANNEL);
XGpio_DiscreteWrite(&Gpio_led, LED_CHANNEL, value);
/* Wait a small amount of time so the LED is visible */
for (Delay = 0; Delay < LED_DELAY; Delay++);
}
}