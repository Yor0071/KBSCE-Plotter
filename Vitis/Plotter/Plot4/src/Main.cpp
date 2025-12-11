// Main.cpp
extern "C" {
    #include "xparameters.h"
    #include "xil_io.h"
    #include <xil_printf.h>
    #include <stdlib.h>
}

#include <stdint.h>
#include "Plotter.h"

// -------- seriële helper ----------

static int readline(char *buf, int maxlen) {
    int idx = 0;
    while (1) {
        int c = inbyte();
        if (c == '\r' || c == '\n') {
            if (idx == 0) continue;
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

// -------- globaal plotter-object ----------

static Plotter plotter;

// Print status
static void print_position() {
    int32_t x, y;
    int32_t x1, x2, yy, z;

    plotter.enc().readRaw(x1, x2, yy, z);
    plotter.enc().getXY(x, y);

    xil_printf("RAW X1=%08x X2=%08x Y=%08x Z=%08x\r\n",
               (uint32_t)x1, (uint32_t)x2,
               (uint32_t)yy, (uint32_t)z);
    xil_printf("XY=(%d,%d)\r\n\r\n", x, y);
}

// -------- commandos --------

// oude stijl: x,+1 / y,-1 / z,+1 : 1s lang rijden
static void handle_step_command(const char *cmd) {
    char axis = cmd[0];
    if (cmd[1] != ',') { xil_printf("fmt err\r\n"); return; }
    char sign = cmd[2];
    if (sign != '+' && sign != '-') { xil_printf("sgn err\r\n"); return; }

    int seconds = atoi(&cmd[3]);
    if (seconds <= 0) seconds = 1;

    bool forward = (sign == '+');

    xil_printf("mv %c %c %d\r\n", axis, forward ? '+' : '-', seconds);

    for (int s = 0; s < seconds; ++s) {
        switch (axis) {
        case 'x': case 'X':
            plotter.enc(); // niks, alleen om het te linken
            plotter.enc(); // (mag weg, maar schaadt niet)
            // directe motor calls:
            // (Plotter heeft geen eigen 1D-move, dus via Motor class)
            // maar je kunt hier ook gewoon plotter.moveTo(..) gebruiken.
            break;
        case 'y': case 'Y':
            break;
        case 'z': case 'Z':
            break;
        default:
            xil_printf("axis?\r\n");
            return;
        }
    }

    xil_printf("ok\r\n");
    print_position();
}

// nieuw: goto: "g,X,Y" bv: g,1000,2000
static void handle_goto_command(const char *cmd) {
    // verwacht "g,<x>,<y>"
    // zoek eerste komma
    const char *p = cmd + 1;
    if (*p != ',') { xil_printf("fmt err\r\n"); return; }
    ++p;
    char *endptr = 0;

    long x = strtol(p, &endptr, 10);
    if (*endptr != ',') { xil_printf("fmt err\r\n"); return; }
    long y = strtol(endptr + 1, &endptr, 10);

    xil_printf("GOTO (%ld,%ld)\r\n", x, y);

    plotter.moveTo((int32_t)x, (int32_t)y, DEFAULT_SPEED);
    xil_printf("done\r\n");
    print_position();
}

// ------------- MAIN --------------

int main() {
    xil_printf("Plotter ready\r\n");
    xil_printf("step: x,+1 / y,-1 / z,+1\r\n");
    xil_printf("goto: g,<x>,<y>  (encoder stappen)\r\n");

    plotter.init();      // motors uit + software (0,0) zetten

    xil_printf("pos0:\r\n");
    print_position();

    static char line[64];

    while (1) {
        xil_printf("> ");
        int n = readline(line, sizeof(line));
        if (n <= 0) continue;

        if (line[0] == 'g' || line[0] == 'G') {
            handle_goto_command(line);
        } else {
            handle_step_command(line);
        }
    }

    return 0;
}
