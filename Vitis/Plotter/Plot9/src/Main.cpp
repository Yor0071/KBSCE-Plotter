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
#include "Geometry.h"
#include "Framebuffer.hxx"

static Plotter plotter;

// Dummy vector array (square)
static const Vec2 square[] = 
{
    // {2250,3750} -> {2680,2680}
    {2250,3750},
    {2336,3536},
    {2422,3322},
    {2508,3108},
    {2594,2894},
    {2680,2680},

    // {2680,2680} -> {3750,2680}
    {2894,2680},
    {3108,2680},
    {3322,2680},
    {3536,2680},
    {3750,2680},

    // {3750,2680} -> {2900,2150}
    {3580,2574},
    {3410,2468},
    {3240,2362},
    {3070,2256},
    {2900,2150},

    // {2900,2150} -> {3250,900}
    {2970,1900},
    {3040,1650},
    {3110,1400},
    {3180,1150},
    {3250, 900},

    // {3250,900} -> {2250,1600}
    {3050,1040},
    {2850,1180},
    {2650,1320},
    {2450,1460},
    {2250,1600},

    // {2250,1600} -> {1250,900}
    {2050,1460},
    {1850,1320},
    {1650,1180},
    {1450,1040},
    {1250, 900},

    // {1250,900} -> {1600,2150}
    {1320,1150},
    {1390,1400},
    {1460,1650},
    {1530,1900},
    {1600,2150},

    // {1600,2150} -> {750,2680}
    {1430,2256},
    {1260,2362},
    {1090,2468},
    { 920,2574},
    { 750,2680},

    // {750,2680} -> {1820,2680}
    { 964,2680},
    {1178,2680},
    {1392,2680},
    {1606,2680},
    {1820,2680},

    // {1820,2680} -> {2250,3750}
    {1906,2894},
    {1992,3108},
    {2078,3322},
    {2164,3536},
    {2250,3750}
};

static void print_z_only()
{
    int32_t x1, x2, yy, zraw32;
    plotter.enc().readRaw(x1, x2, yy, zraw32);

    // Interpretatie als 16-bit signed (heel waarschijnlijk wat jouw IP core bedoelt)
    int16_t zraw16 = (int16_t)(uint16_t)zraw32;

    int32_t zrel = plotter.enc().getZ();

    xil_printf("RAW Z=%08x  (Z16=%d)  Zrel=%d\r\n",
               (uint32_t)zraw32, (int)zraw16, (int)zrel);
}

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

void draw_test() {
    xil_printf("Drawing to the framebuffer\r\n");
    FB::Framebuffer fb;

    for (uint16_t y = 0; y < fb.HEIGHT; y++) {
        for (uint16_t x = 0; x < fb.WIDTH; x++) {
            fb.write({ .x = x, .y = y }, { .b = 0xF, .g = 0x0, .r = 0x0 });
        }
    }

    xil_printf("done\r\n");
}

// ------------- MAIN --------------

int main() {
    xil_printf("Motor + OV7670 test interface\r\n");

    // ===== OV7670 + I2C initialisatie =====
    xil_printf("Starting OV7670 initialization...\r\n");
    // int Status = Ov7670_Init();
    // if (Status == XST_SUCCESS) {
    //     // xil_printf("OV7670 init OK.\r\n");
    // } else {
    //     // xil_printf("OV7670 init FAILED! (Status = %d)\r\n", Status);
    //     // while (1) {
    //         // stil blijven hangen als de camera/I2C init faalt
    //     // }
    // }
    // ======================================

    xil_printf("Homing plotter\r\n");
    plotter.home();
    xil_printf("Plotter homed\r\n");

    xil_printf("Plotter ready\r\n");
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
            xil_printf("Drawing square line array\r\n");
            plotter.drawLineArray(squares, squares_count, 225);
            xil_printf("Done\r\n");
        }
        else if (line[0] == 'z' || line[0] == 'Z')
        {
            print_z_only();
        }
        else if (line[0] == 'd' || line[0] == 'D')
        {
            draw_test();
        }
    }

    return 0;
}
