// Main.cpp
extern "C" {
    #include "xparameters.h"
    #include "xil_io.h"
    #include <xil_printf.h>
    #include <stdlib.h>
    #include "xstatus.h"
}

#include <stdint.h>
#include "Plotter.h"
#include "ov7670_i2c.h"

// Dummy vector array (square)
static const Vec2 square[] = 
{
    {2000,1500},
    {1962,1691},
    {1854,1854},
    {1691,1962},
    {1500,2000},
    {1309,1962},
    {1146,1854},
    {1038,1691},
    {1000,1500},
    {1038,1309},
    {1146,1146},
    {1309,1038},
    {1500,1000},
    {1691,1038},
    {1854,1146},
    {1962,1309},
    {2000,1500}
};

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

// goto: "g,X,Y" bv: g,1000,2000
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
    xil_printf("Motor + OV7670 test interface\r\n");

    // ===== OV7670 + I2C initialisatie =====
    xil_printf("Starting OV7670 initialization...\r\n");
    int Status = Ov7670_Init();
    if (Status == XST_SUCCESS) {
        // xil_printf("OV7670 init OK.\r\n");
    } else {
        // xil_printf("OV7670 init FAILED! (Status = %d)\r\n", Status);
        // while (1) {
            // stil blijven hangen als de camera/I2C init faalt
        // }
    }
    // ======================================

    xil_printf("Typ bijv: x,+1 of y,-1 en druk enter\r\n");



    xil_printf("Plotter ready\r\n");
    xil_printf("step: x,+1 / y,-1 / z,+1\r\n");
    xil_printf("goto: g,<x>,<y>  (encoder stappen)\r\n");

    plotter.init();      // motors uit + software (0,0) zetten

    xil_printf("pos0:\r\n");
    print_position();

    static char line[64];

    while (1) 
    {
        xil_printf("> ");
        int n = readline(line, sizeof(line));
        if (n <= 0) continue;

        if (line[0] == 'g' || line[0] == 'G') 
        {
            handle_goto_command(line);
        } 
        else if (line[0] == 's') 
        {
            xil_printf("Drawing square\r\n");
            plotter.drawPath(square, sizeof(square)/sizeof(square[0]), 175);
            xil_printf("Done square\r\n");
        }
    }

    return 0;
}
