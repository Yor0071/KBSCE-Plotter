-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Tue Dec  9 10:58:37 2025
-- Host        : mrt-fed-lap running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/maartenvk/src/KBSCE-Plotter/Vivado/KBSCE-Plotter.gen/sources_1/bd/RISC_V/ip/RISC_V_BRAMMux_0_1/RISC_V_BRAMMux_0_1_stub.vhdl
-- Design      : RISC_V_BRAMMux_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RISC_V_BRAMMux_0_1 is
  Port ( 
    s_in_microblaze_en : in STD_LOGIC;
    s_in_microblaze_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_in_microblaze_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_in_microblaze_we : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_in_microblaze_addr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_in_microblaze_clk : in STD_LOGIC;
    s_in_microblaze_rst : in STD_LOGIC;
    s_in_camera_en : in STD_LOGIC;
    s_in_camera_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_in_camera_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_in_camera_we : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_in_camera_addr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_in_camera_clk : in STD_LOGIC;
    s_in_camera_rst : in STD_LOGIC;
    s_out_fb_en : out STD_LOGIC;
    s_out_fb_dout : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_out_fb_din : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_out_fb_we : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_out_fb_addr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_out_fb_clk : out STD_LOGIC;
    s_out_fb_rst : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RISC_V_BRAMMux_0_1 : entity is "RISC_V_BRAMMux_0_1,BRAMMux,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of RISC_V_BRAMMux_0_1 : entity is "RISC_V_BRAMMux_0_1,BRAMMux,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=BRAMMux,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of RISC_V_BRAMMux_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of RISC_V_BRAMMux_0_1 : entity is "module_ref";
end RISC_V_BRAMMux_0_1;

architecture stub of RISC_V_BRAMMux_0_1 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "s_in_microblaze_en,s_in_microblaze_dout[11:0],s_in_microblaze_din[11:0],s_in_microblaze_we[0:0],s_in_microblaze_addr[9:0],s_in_microblaze_clk,s_in_microblaze_rst,s_in_camera_en,s_in_camera_dout[11:0],s_in_camera_din[11:0],s_in_camera_we[0:0],s_in_camera_addr[9:0],s_in_camera_clk,s_in_camera_rst,s_out_fb_en,s_out_fb_dout[11:0],s_out_fb_din[11:0],s_out_fb_we[0:0],s_out_fb_addr[9:0],s_out_fb_clk,s_out_fb_rst";
  attribute x_interface_info : string;
  attribute x_interface_info of s_in_microblaze_en : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE EN";
  attribute x_interface_mode : string;
  attribute x_interface_mode of s_in_microblaze_en : signal is "slave BRAM_IN_PORT_MICROBLAZE";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s_in_microblaze_en : signal is "XIL_INTERFACENAME BRAM_IN_PORT_MICROBLAZE, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  attribute x_interface_info of s_in_microblaze_dout : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE DOUT";
  attribute x_interface_info of s_in_microblaze_din : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE DIN";
  attribute x_interface_info of s_in_microblaze_we : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE WE";
  attribute x_interface_info of s_in_microblaze_addr : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE ADDR";
  attribute x_interface_info of s_in_microblaze_clk : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE CLK";
  attribute x_interface_info of s_in_microblaze_rst : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE RST";
  attribute x_interface_info of s_in_camera_en : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA EN";
  attribute x_interface_mode of s_in_camera_en : signal is "slave BRAM_IN_PORT_CAMERA";
  attribute x_interface_parameter of s_in_camera_en : signal is "XIL_INTERFACENAME BRAM_IN_PORT_CAMERA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  attribute x_interface_info of s_in_camera_dout : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA DOUT";
  attribute x_interface_info of s_in_camera_din : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA DIN";
  attribute x_interface_info of s_in_camera_we : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA WE";
  attribute x_interface_info of s_in_camera_addr : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA ADDR";
  attribute x_interface_info of s_in_camera_clk : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA CLK";
  attribute x_interface_info of s_in_camera_rst : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA RST";
  attribute x_interface_info of s_out_fb_en : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB EN";
  attribute x_interface_mode of s_out_fb_en : signal is "master BRAM_OUT_PORT_FB";
  attribute x_interface_parameter of s_out_fb_en : signal is "XIL_INTERFACENAME BRAM_OUT_PORT_FB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  attribute x_interface_info of s_out_fb_dout : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB DOUT";
  attribute x_interface_info of s_out_fb_din : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB DIN";
  attribute x_interface_info of s_out_fb_we : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB WE";
  attribute x_interface_info of s_out_fb_addr : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB ADDR";
  attribute x_interface_info of s_out_fb_clk : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB CLK";
  attribute x_interface_info of s_out_fb_rst : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB RST";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "BRAMMux,Vivado 2025.1";
begin
end;
