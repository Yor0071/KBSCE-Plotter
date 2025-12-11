// Combined main: Camera + Motor

extern "C" {
    #include "xparameters.h"
    #include "xstatus.h"
    #include "xil_printf.h"
}

#include <cstdlib>

#include "Motor.h"
#include "ov7670_i2c.h"

// Optional instance (though Motor methods are static)
Motor motors = Motor();

static void delay_1s(void) {
    for (volatile int i = 0; i < 10000000; i++);
}

// forward declarations from motor main
static int readline(char *buf, int maxlen);
static void handle_command(const char *cmd);

int main(void) {
    xil_printf("Motor + OV7670 test interface\r\n");

    // ===== OV7670 + I2C initialisatie =====
    xil_printf("Starting OV7670 initialization...\r\n");
    int Status = Ov7670_Init();
    if (Status == XST_SUCCESS) {
        // xil_printf("OV7670 init OK.\r\n");
    } else {
        // xil_printf("OV7670 init FAILED! (Status = %d)\r\n", Status);
        while (1) {
            // stil blijven hangen als de camera/I2C init faalt
        }
    }
    // ======================================

    xil_printf("Typ bijv: x,+1 of y,-1 en druk enter\r\n");

    motors.stop_motors();

    char line[32];
    while (1) {
        xil_printf("> ");
        int n = readline(line, sizeof(line));
        if (n <= 0) continue;
        handle_command(line);
    }
    return 0;
}

// Copy helper functions from motor main
static int readline(char *buf, int maxlen) {
    int idx = 0;

    while (1) {
        // Als jouw BSP geen getchar() heeft, gebruik dan inbyte()
        int c = inbyte();   // werkt vaak ook in Vitis

        if (c == '\r' || c == '\n') {
            if (idx == 0) {
                // lege regel negeren
                continue;
            }
            buf[idx] = '\0';
            xil_printf("\r\n");
            return idx;
        }

        if (idx < maxlen - 1) {
            buf[idx++] = (char)c;
            // echo terug:
            xil_printf("%c", (char)c);
        }
    }
}

// Parse commando's als "x,+1" of "y,-1"
static void handle_command(const char *cmd) {
    // Verwacht formaat: <axis>,<+|-><tijd_in_seconden>

    char axis = cmd[0];
    if (cmd[1] != ',') {
        xil_printf("Fout formaat (verwacht: x,+1)\r\n");
        return;
    }

    char sign = cmd[2];
    if (sign != '+' && sign != '-') {
        xil_printf("Fout teken (gebruik + of -)\r\n");
        return;
    }

    // Tijd in seconden uit string halen (mag ook altijd 1 zijn)
    int seconds = atoi(&cmd[3]);   // vanaf het cijfer
    if (seconds <= 0) {
        seconds = 1; // default 1 seconde
    }

    bool forward = (sign == '+');

    xil_printf("\r\nBeweeg as %c richting %c voor %d s\r\n",
               axis, forward ? '+' : '-', seconds);

    // Veiligheid: alles eerst stoppen
    motors.stop_motors();

    // As kiezen
    for (int s = 0; s < seconds; ++s) {
        switch (axis) {
            case 'x':
            case 'X':
                motors.move_X(forward, DEFAULT_SPEED);
                break;

            case 'y':
            case 'Y':
                motors.move_Y(forward, DEFAULT_SPEED);
                break;

            case 'z':
            case 'Z':
                motors.move_Z(forward, DEFAULT_SPEED);
                break;

            default:
                xil_printf("Onbekende as '%c' (gebruik x, y of z)\r\n", axis);
                motors.stop_motors();
                return;
        }

        delay_1s();  // 1 seconde bewegen
    }

    // Daarna weer stoppen
    motors.stop_motors();
    xil_printf("Klaar.\r\n");
}
