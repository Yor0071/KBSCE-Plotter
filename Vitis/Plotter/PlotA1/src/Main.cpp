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
#include "RoutePlanner.h"
#include "EdgeDetect.hxx"

static Plotter plotter;

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
            uint16_t n = (y / 16) % 3;
            FB::pixel_t pixel = { .b = 0, .g = 0, .r = 0xF };
            if (n == 1) {
                pixel = { .b = 0, .g = 0xF, .r = 0 };
            } else if (n == 2) {
                pixel = { .b = 0xF, .g = 0, .r = 0 };
            }

            if (n++ > 1) {
                n = 0;
            }

            fb.write({ .x = x, .y = y }, pixel);
        }
    }

    xil_printf("done\r\n");
}

void edge_detect_single_pixel(FB::screen_point_t const& point, bool& is_pen_down) {
    if (EdgeDetect::is_edge(point)) {
        Vec2 vec = screen_point_to_vec2(point);
        plotter.moveTo(vec.x, vec.y, Plotter::MAX_SPEED);
        if (!is_pen_down) {
            is_pen_down = true;
            plotter.penDown();
        }
    } else if (is_pen_down) {
        plotter.penLift();
        is_pen_down = false;
    }
}

void do_edge_detect() {
    plotter.penLift();
    plotter.home();
    
    FB::screen_point_t point = { .x = 0, . y = 0 };
    
    bool is_pen_down = false;
    bool is_direction_right = true;
    for (point.y = 1; point.y < FB::Framebuffer::HEIGHT; point.y += 3) {
        if (is_direction_right) {
            for (point.x = 3; point.x < FB::Framebuffer::WIDTH - 3; point.x++) {
                edge_detect_single_pixel(point, is_pen_down);
            }
        } else {
            for (point.x = FB::Framebuffer::WIDTH - 3; point.x >= 3; point.x--) {
                edge_detect_single_pixel(point, is_pen_down);
            }
        }

        is_direction_right = !is_direction_right; // Toggle between left-to-right, right-to-left
        if (is_pen_down) {
            plotter.penLift();
            is_pen_down = false;
        }
    }
    
    plotter.penUp();
    plotter.home();
}

// ------------- MAIN --------------

int main() {
    xil_printf("Motor + OV7670 test interface\r\n");

    // ===== OV7670 + I2C initialisatie =====
    xil_printf("Starting OV7670 initialization...\r\n");
    int Status = Ov7670_Init();
    if (Status == XST_SUCCESS) {
        xil_printf("OV7670 init OK.\r\n");
    } else {
        xil_printf("OV7670 init FAILED! (Status = %d)\r\n", Status);
        while (1) {
            // stil blijven hangen als de camera/I2C init faalt
        }
    }
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
            
            xil_printf("Planning route...\r\n");

            RoutePlanner rp;
            RouteStep steps[32];

            int32_t sx, sy;
            plotter.enc().getXY(sx, sy);

            uint16_t n = rp.buildPlan_LongToShort_EntryNN(
                smiley,
                smiley_count,
                sx, sy,
                steps
            );

            for (uint16_t i = 0; i < n; ++i) {
                const RouteStep& st = steps[i];
                plotter.penLift();

                const PolylineView& pl = smiley[st.polyIndex];
                const Vec2& start = st.reverse ? pl.pts[pl.count - 1] : pl.pts[0];

                plotter.moveTo(start.x, start.y, 225);
                plotter.penDown();
                plotter.drawPolyline(pl, st.reverse, 225);
            }
            plotter.penUp();

            xil_printf("Done\r\n");
        }
        else if (line[0] == 'z' || line[0] == 'Z')
        {
            print_z_only();
        }
        else if (line[0] == 'd' || line[0] == 'D')
        {
            draw_test();
        } else if ((line[0] == 'p' || line[0] == 'P') && (line[1] == 'd' || line[1] == 'D'))
        {
            xil_printf("Pen DOWN\r\n");
            plotter.penDown();
        }
        else if ((line[0] == 'p' || line[0] == 'P') && (line[1] == 'l' || line[1] == 'L'))
        {
            xil_printf("Pen LIFT\r\n");
            plotter.penLift();
        }
        else if ((line[0] == 'p' || line[0] == 'P') && (line[1] == 'u' || line[1] == 'U'))
        {
            xil_printf("Pen UP\r\n");
            plotter.penUp();
        }
        else if (line[0] == 'h' || line[0] == 'H')
        {
            xil_printf("Homing plotter...\r\n");
            plotter.home();
            xil_printf("Homing done\r\n");

            print_position();
        }
        else if (line[0] == 'e' || line[0] == 'E') {
            xil_printf("Performing edge detection...\r\n");
            do_edge_detect();
            xil_printf("Done\r\n");
        }
    }

    return 0;
}
