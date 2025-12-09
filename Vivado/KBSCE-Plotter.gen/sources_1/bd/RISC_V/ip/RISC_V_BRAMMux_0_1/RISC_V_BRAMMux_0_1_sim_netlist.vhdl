-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Tue Dec  9 10:58:37 2025
-- Host        : mrt-fed-lap running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/maartenvk/src/KBSCE-Plotter/Vivado/KBSCE-Plotter.gen/sources_1/bd/RISC_V/ip/RISC_V_BRAMMux_0_1/RISC_V_BRAMMux_0_1_sim_netlist.vhdl
-- Design      : RISC_V_BRAMMux_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RISC_V_BRAMMux_0_1 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of RISC_V_BRAMMux_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RISC_V_BRAMMux_0_1 : entity is "RISC_V_BRAMMux_0_1,BRAMMux,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of RISC_V_BRAMMux_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of RISC_V_BRAMMux_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of RISC_V_BRAMMux_0_1 : entity is "BRAMMux,Vivado 2025.1";
end RISC_V_BRAMMux_0_1;

architecture STRUCTURE of RISC_V_BRAMMux_0_1 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of s_in_camera_clk : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA CLK";
  attribute x_interface_info of s_in_camera_en : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA EN";
  attribute x_interface_mode : string;
  attribute x_interface_mode of s_in_camera_en : signal is "slave BRAM_IN_PORT_CAMERA";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s_in_camera_en : signal is "XIL_INTERFACENAME BRAM_IN_PORT_CAMERA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  attribute x_interface_info of s_in_camera_rst : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA RST";
  attribute x_interface_info of s_in_microblaze_clk : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE CLK";
  attribute x_interface_info of s_in_microblaze_en : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE EN";
  attribute x_interface_mode of s_in_microblaze_en : signal is "slave BRAM_IN_PORT_MICROBLAZE";
  attribute x_interface_parameter of s_in_microblaze_en : signal is "XIL_INTERFACENAME BRAM_IN_PORT_MICROBLAZE, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  attribute x_interface_info of s_in_microblaze_rst : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE RST";
  attribute x_interface_info of s_out_fb_clk : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB CLK";
  attribute x_interface_info of s_out_fb_en : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB EN";
  attribute x_interface_mode of s_out_fb_en : signal is "master BRAM_OUT_PORT_FB";
  attribute x_interface_parameter of s_out_fb_en : signal is "XIL_INTERFACENAME BRAM_OUT_PORT_FB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  attribute x_interface_info of s_out_fb_rst : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB RST";
  attribute x_interface_info of s_in_camera_addr : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA ADDR";
  attribute x_interface_info of s_in_camera_din : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA DIN";
  attribute x_interface_info of s_in_camera_dout : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA DOUT";
  attribute x_interface_info of s_in_camera_we : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA WE";
  attribute x_interface_info of s_in_microblaze_addr : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE ADDR";
  attribute x_interface_info of s_in_microblaze_din : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE DIN";
  attribute x_interface_info of s_in_microblaze_dout : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE DOUT";
  attribute x_interface_info of s_in_microblaze_we : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE WE";
  attribute x_interface_info of s_out_fb_addr : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB ADDR";
  attribute x_interface_info of s_out_fb_din : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB DIN";
  attribute x_interface_info of s_out_fb_dout : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB DOUT";
  attribute x_interface_info of s_out_fb_we : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB WE";
begin
  s_in_camera_dout(11) <= \<const0>\;
  s_in_camera_dout(10) <= \<const0>\;
  s_in_camera_dout(9) <= \<const0>\;
  s_in_camera_dout(8) <= \<const0>\;
  s_in_camera_dout(7) <= \<const0>\;
  s_in_camera_dout(6) <= \<const0>\;
  s_in_camera_dout(5) <= \<const0>\;
  s_in_camera_dout(4) <= \<const0>\;
  s_in_camera_dout(3) <= \<const0>\;
  s_in_camera_dout(2) <= \<const0>\;
  s_in_camera_dout(1) <= \<const0>\;
  s_in_camera_dout(0) <= \<const0>\;
  s_in_microblaze_dout(11) <= \<const0>\;
  s_in_microblaze_dout(10) <= \<const0>\;
  s_in_microblaze_dout(9) <= \<const0>\;
  s_in_microblaze_dout(8) <= \<const0>\;
  s_in_microblaze_dout(7) <= \<const0>\;
  s_in_microblaze_dout(6) <= \<const0>\;
  s_in_microblaze_dout(5) <= \<const0>\;
  s_in_microblaze_dout(4) <= \<const0>\;
  s_in_microblaze_dout(3) <= \<const0>\;
  s_in_microblaze_dout(2) <= \<const0>\;
  s_in_microblaze_dout(1) <= \<const0>\;
  s_in_microblaze_dout(0) <= \<const0>\;
  s_out_fb_addr(9) <= \<const0>\;
  s_out_fb_addr(8) <= \<const0>\;
  s_out_fb_addr(7) <= \<const0>\;
  s_out_fb_addr(6) <= \<const0>\;
  s_out_fb_addr(5) <= \<const0>\;
  s_out_fb_addr(4) <= \<const0>\;
  s_out_fb_addr(3) <= \<const0>\;
  s_out_fb_addr(2) <= \<const0>\;
  s_out_fb_addr(1) <= \<const0>\;
  s_out_fb_addr(0) <= \<const0>\;
  s_out_fb_clk <= \<const0>\;
  s_out_fb_din(11) <= \<const0>\;
  s_out_fb_din(10) <= \<const0>\;
  s_out_fb_din(9) <= \<const0>\;
  s_out_fb_din(8) <= \<const0>\;
  s_out_fb_din(7) <= \<const0>\;
  s_out_fb_din(6) <= \<const0>\;
  s_out_fb_din(5) <= \<const0>\;
  s_out_fb_din(4) <= \<const0>\;
  s_out_fb_din(3) <= \<const0>\;
  s_out_fb_din(2) <= \<const0>\;
  s_out_fb_din(1) <= \<const0>\;
  s_out_fb_din(0) <= \<const0>\;
  s_out_fb_en <= \<const0>\;
  s_out_fb_rst <= \<const0>\;
  s_out_fb_we(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
