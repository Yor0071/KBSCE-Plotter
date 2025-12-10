// Includes
extern "C"{
    #include "xparameters.h"
    #include "xil_io.h"
    #include <xil_printf.h>
}

#include <cstdlib>   // voor atoi()
#include "Motor.h"

// Globale motor-controller
Motor motors = Motor();

// Simpele ~1s delay (busy wait)
static void delay_1s(void) {
    for (volatile int i = 0; i < 10000000; i++);
}

// static void delay_ms(int milliseconds){
//     int period = milliseconds*10000;
//     for (volatile int i = 0; i < period; i++);
// }


// Lees één regel van de seriële poort tot '\r' of '\n'
// en zet er een '\0' achter. Echo de input terug.
static int readline(char *buf, int maxlen) {
    int idx = 0;

    while (1) {
        // Als jouw BSP geen getchar() heeft, gebruik dan inbyte()
        // char c = inbyte();
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
    // Voor jou is vooral +1 / -1 interessant.

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

// ---------------------------------------------------------
//  MAIN
// ---------------------------------------------------------
int main(void) {
     // __uint32_t curent;
    // __uint32_t prev = Xil_In32(ENCODER_X1_REG);

    xil_printf("Motor test interface\r\n");
    xil_printf("Typ bijv: x,+1 of y,-1 en druk enter\r\n");

    // Alles uit voor de zekerheid
    motors.stop_motors();

    char line[32];

    while (1) {
        xil_printf("> ");
        int n = readline(line, sizeof(line));
        if (n <= 0) {
            continue;
        }

        handle_command(line);

        // curent = Xil_In32(ENCODER_X1_REG);

        // if(prev != curent){
        //     xil_printf(tostring(curent), "\n");
        // }

        // prev = curent;


        // if(Xil_In32(ENCODER_X1_REG) & ENCODER_S1_BIT){
        //     xil_printf("S1", "\n");
        // }else if (Xil_In32(ENCODER_X1_REG) & ENCODER_S2_BIT) {
        //     xil_printf("S2", "\n");
        // }
    }

    return 0;
}

