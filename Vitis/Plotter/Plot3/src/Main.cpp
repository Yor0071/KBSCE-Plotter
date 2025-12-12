// Includes
extern "C"{
    #include "xparameters.h"
    #include "xil_io.h"
    #include <xil_printf.h>
    #include <stdlib.h>   // atoi()
}

// NOG DOEN:
// BRAM verhogen in vivado :)

#include "Motor.h"

// Globale motor-controller
Motor motors;

// Simpele ~1s delay (busy wait)
static void delay_1s(void) {
    for (volatile int i = 0; i < 10000000; i++);
}

// Lees één regel van de seriële poort tot '\r' of '\n'
// en zet er een '\0' achter. Echo de input terug.
static int readline(char *buf, int maxlen) {
    int idx = 0;

    while (1) {
        int c = inbyte();   // Vitis/UART functie

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
            xil_printf("%c", (char)c); // echo
        }
    }
}

// Print encoderwaarden + simpel X/Y coord
static void print_position(void) {
    int x1 = (int)Xil_In32(ENCODER_X1_REG);
    int x2 = (int)Xil_In32(ENCODER_X2_REG);
    int y  = (int)Xil_In32(ENCODER_Y_REG);
    int z  = (int)Xil_In32(ENCODER_Z_REG);

    int x = (x1 + x2) / 2;   // simpele definitie: gemiddelde X1/X2

    xil_printf("RAW X1=%08lx X2=%08lx Y=%08lx Z=%08lx\r\n",
               (unsigned long)x1,
               (unsigned long)x2,
               (unsigned long)y,
               (unsigned long)z);

    xil_printf("XY=(%ld,%ld)\r\n\r\n", (long)x, (long)y);
}

// Parse commando's als "x,+1" of "y,-1" en beweeg de as
static void handle_command(const char *cmd) {
    // Verwacht: <axis>,<+|-><sekonden>, bv "x,+1"
    char axis = cmd[0];
    if (cmd[1] != ',') {
        xil_printf("fmt err\r\n");
        return;
    }

    char sign = cmd[2];
    if (sign != '+' && sign != '-') {
        xil_printf("sgn err\r\n");
        return;
    }

    int seconds = atoi(&cmd[3]);
    if (seconds <= 0) {
        seconds = 1;
    }

    int forward = (sign == '+');

    xil_printf("mv %c %c %d\r\n", axis, forward ? '+' : '-', seconds);

    // Veiligheid
    motors.stop_motors();

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
                xil_printf("axis?\r\n");
                motors.stop_motors();
                return;
        }
        delay_1s();
    }

    motors.stop_motors();
    xil_printf("ok\r\n");

    // Positie na de beweging
    print_position();
}

// ---------------------------------------------------------
//  MAIN
// ---------------------------------------------------------
int main(void) {
    xil_printf("Plotter ready\r\n");
    xil_printf("cmd: x,+1 / y,-1 / z,+1\r\n");

    motors.stop_motors();

    xil_printf("pos0:\r\n");
    print_position();

    static char line[32];

    while (1) {
        xil_printf("> ");
        int n = readline(line, sizeof(line));
        if (n <= 0) {
            continue;
        }

        handle_command(line);
    }

    return 0;
}
