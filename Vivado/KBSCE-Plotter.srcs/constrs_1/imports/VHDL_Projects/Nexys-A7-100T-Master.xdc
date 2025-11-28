## ================================
## Nexys A7-100T + OV7670 + VGA
## top: top_ov7670_vga
## ================================

## ---------- CLOCK & RESET ----------
set_property -dict { PACKAGE_PIN E3  IOSTANDARD LVCMOS33 } [get_ports { CLK100MHZ }];
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { CLK100MHZ }];

set_property -dict { PACKAGE_PIN C12 IOSTANDARD LVCMOS33 } [get_ports { CPU_RESETN }];

## ---------- LED ----------
# LED0 komt uit je top_ov7670_vga entity
set_property -dict { PACKAGE_PIN H17 IOSTANDARD LVCMOS33 } [get_ports { LED0 }];
set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { LED1 }]; #IO_L24P_T3_RS1_15 Sch=led[1]

## ---------- OV7670 CONTROL (JA) ----------
# JA1: PCLK  (camera -> FPGA)
set_property -dict { PACKAGE_PIN C17 IOSTANDARD LVCMOS33 } [get_ports { OV_PCLK }];

# JA2: VSYNC
set_property -dict { PACKAGE_PIN D18 IOSTANDARD LVCMOS33 } [get_ports { OV_VSYNC }];

# JA3: HREF
set_property -dict { PACKAGE_PIN E18 IOSTANDARD LVCMOS33 } [get_ports { OV_HREF }];

# JA4: XCLK (FPGA 25 MHz -> camera)
set_property -dict { PACKAGE_PIN G17 IOSTANDARD LVCMOS33 } [get_ports { OV_XCLK }];

# JA7: SIOC (SCCB clock)
set_property -dict { PACKAGE_PIN D17 IOSTANDARD LVCMOS33 } [get_ports { OV_SIOC }];

# JA8: SIOD (SCCB data)
set_property -dict { PACKAGE_PIN E17 IOSTANDARD LVCMOS33 } [get_ports { OV_SIOD }];

# JA9: PWDN
set_property -dict { PACKAGE_PIN F18 IOSTANDARD LVCMOS33 } [get_ports { OV_PWDN }];

# JA10: RESET
set_property -dict { PACKAGE_PIN G18 IOSTANDARD LVCMOS33 } [get_ports { OV_RESET }];

## ---------- OV7670 DATA (JB) ----------
# D0..D7 op JB(1, 2, 3, 4) (7, 8, 9, 10)
set_property -dict { PACKAGE_PIN D14 IOSTANDARD LVCMOS33 } [get_ports { OV_D[0] }];
set_property -dict { PACKAGE_PIN F16 IOSTANDARD LVCMOS33 } [get_ports { OV_D[1] }];
set_property -dict { PACKAGE_PIN G16 IOSTANDARD LVCMOS33 } [get_ports { OV_D[2] }];
set_property -dict { PACKAGE_PIN H14 IOSTANDARD LVCMOS33 } [get_ports { OV_D[3] }];
set_property -dict { PACKAGE_PIN E16 IOSTANDARD LVCMOS33 } [get_ports { OV_D[4] }];
set_property -dict { PACKAGE_PIN F13 IOSTANDARD LVCMOS33 } [get_ports { OV_D[5] }];
set_property -dict { PACKAGE_PIN G13 IOSTANDARD LVCMOS33 } [get_ports { OV_D[6] }];
set_property -dict { PACKAGE_PIN H16 IOSTANDARD LVCMOS33 } [get_ports { OV_D[7] }];

## ---------- VGA CONNECTOR ----------
set_property -dict { PACKAGE_PIN A3  IOSTANDARD LVCMOS33 } [get_ports { VGA_R[0] }];
set_property -dict { PACKAGE_PIN B4  IOSTANDARD LVCMOS33 } [get_ports { VGA_R[1] }];
set_property -dict { PACKAGE_PIN C5  IOSTANDARD LVCMOS33 } [get_ports { VGA_R[2] }];
set_property -dict { PACKAGE_PIN A4  IOSTANDARD LVCMOS33 } [get_ports { VGA_R[3] }];

set_property -dict { PACKAGE_PIN C6  IOSTANDARD LVCMOS33 } [get_ports { VGA_G[0] }];
set_property -dict { PACKAGE_PIN A5  IOSTANDARD LVCMOS33 } [get_ports { VGA_G[1] }];
set_property -dict { PACKAGE_PIN B6  IOSTANDARD LVCMOS33 } [get_ports { VGA_G[2] }];
set_property -dict { PACKAGE_PIN A6  IOSTANDARD LVCMOS33 } [get_ports { VGA_G[3] }];

set_property -dict { PACKAGE_PIN B7  IOSTANDARD LVCMOS33 } [get_ports { VGA_B[0] }];
set_property -dict { PACKAGE_PIN C7  IOSTANDARD LVCMOS33 } [get_ports { VGA_B[1] }];
set_property -dict { PACKAGE_PIN D7  IOSTANDARD LVCMOS33 } [get_ports { VGA_B[2] }];
set_property -dict { PACKAGE_PIN D8  IOSTANDARD LVCMOS33 } [get_ports { VGA_B[3] }];

set_property -dict { PACKAGE_PIN B11 IOSTANDARD LVCMOS33 } [get_ports { VGA_HS }];
set_property -dict { PACKAGE_PIN B12 IOSTANDARD LVCMOS33 } [get_ports { VGA_VS }];

#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets OV_PCLK_IBUF];

