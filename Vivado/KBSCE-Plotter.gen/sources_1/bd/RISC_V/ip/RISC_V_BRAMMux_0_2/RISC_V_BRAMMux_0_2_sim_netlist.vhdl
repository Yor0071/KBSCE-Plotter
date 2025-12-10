-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Wed Dec 10 13:33:36 2025
-- Host        : mrt-fed-lap running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/maartenvk/src/KBSCE-Plotter/Vivado/KBSCE-Plotter.gen/sources_1/bd/RISC_V/ip/RISC_V_BRAMMux_0_2/RISC_V_BRAMMux_0_2_sim_netlist.vhdl
-- Design      : RISC_V_BRAMMux_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RISC_V_BRAMMux_0_2 is
  port (
    s_in_microblaze_en : in STD_LOGIC;
    s_in_microblaze_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_in_microblaze_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_in_microblaze_we : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_in_microblaze_addr : in STD_LOGIC_VECTOR ( 18 downto 0 );
    s_in_microblaze_clk : in STD_LOGIC;
    s_in_microblaze_rst : in STD_LOGIC;
    s_in_camera_en : in STD_LOGIC;
    s_in_camera_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_in_camera_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_in_camera_we : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_in_camera_addr : in STD_LOGIC_VECTOR ( 18 downto 0 );
    s_in_camera_clk : in STD_LOGIC;
    s_in_camera_rst : in STD_LOGIC;
    s_out_fb_en : out STD_LOGIC;
    s_out_fb_dout : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_out_fb_din : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_out_fb_we : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_out_fb_addr : out STD_LOGIC_VECTOR ( 18 downto 0 );
    s_out_fb_clk : out STD_LOGIC;
    s_out_fb_rst : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of RISC_V_BRAMMux_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RISC_V_BRAMMux_0_2 : entity is "RISC_V_BRAMMux_0_2,BRAMMux,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of RISC_V_BRAMMux_0_2 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of RISC_V_BRAMMux_0_2 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of RISC_V_BRAMMux_0_2 : entity is "BRAMMux,Vivado 2025.1";
end RISC_V_BRAMMux_0_2;

architecture STRUCTURE of RISC_V_BRAMMux_0_2 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_in_microblaze_addr\ : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \^s_in_microblaze_clk\ : STD_LOGIC;
  signal \^s_in_microblaze_din\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_in_microblaze_en\ : STD_LOGIC;
  signal \^s_in_microblaze_rst\ : STD_LOGIC;
  signal \^s_in_microblaze_we\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of s_in_camera_clk : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA CLK";
  attribute x_interface_info of s_in_camera_en : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA EN";
  attribute x_interface_mode : string;
  attribute x_interface_mode of s_in_camera_en : signal is "slave BRAM_IN_PORT_CAMERA";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s_in_camera_en : signal is "XIL_INTERFACENAME BRAM_IN_PORT_CAMERA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 2";
  attribute x_interface_info of s_in_camera_rst : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA RST";
  attribute x_interface_info of s_in_microblaze_clk : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE CLK";
  attribute x_interface_info of s_in_microblaze_en : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE EN";
  attribute x_interface_mode of s_in_microblaze_en : signal is "slave BRAM_IN_PORT_MICROBLAZE";
  attribute x_interface_parameter of s_in_microblaze_en : signal is "XIL_INTERFACENAME BRAM_IN_PORT_MICROBLAZE, MEM_SIZE 65536, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  attribute x_interface_info of s_in_microblaze_rst : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE RST";
  attribute x_interface_info of s_out_fb_clk : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB CLK";
  attribute x_interface_info of s_out_fb_en : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB EN";
  attribute x_interface_mode of s_out_fb_en : signal is "master BRAM_OUT_PORT_FB";
  attribute x_interface_parameter of s_out_fb_en : signal is "XIL_INTERFACENAME BRAM_OUT_PORT_FB, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1";
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
  \^s_in_microblaze_addr\(18 downto 0) <= s_in_microblaze_addr(18 downto 0);
  \^s_in_microblaze_clk\ <= s_in_microblaze_clk;
  \^s_in_microblaze_din\(11 downto 0) <= s_in_microblaze_din(11 downto 0);
  \^s_in_microblaze_en\ <= s_in_microblaze_en;
  \^s_in_microblaze_rst\ <= s_in_microblaze_rst;
  \^s_in_microblaze_we\(0) <= s_in_microblaze_we(0);
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
  s_in_microblaze_dout(31) <= \<const0>\;
  s_in_microblaze_dout(30) <= \<const0>\;
  s_in_microblaze_dout(29) <= \<const0>\;
  s_in_microblaze_dout(28) <= \<const0>\;
  s_in_microblaze_dout(27) <= \<const0>\;
  s_in_microblaze_dout(26) <= \<const0>\;
  s_in_microblaze_dout(25) <= \<const0>\;
  s_in_microblaze_dout(24) <= \<const0>\;
  s_in_microblaze_dout(23) <= \<const0>\;
  s_in_microblaze_dout(22) <= \<const0>\;
  s_in_microblaze_dout(21) <= \<const0>\;
  s_in_microblaze_dout(20) <= \<const0>\;
  s_in_microblaze_dout(19) <= \<const0>\;
  s_in_microblaze_dout(18) <= \<const0>\;
  s_in_microblaze_dout(17) <= \<const0>\;
  s_in_microblaze_dout(16) <= \<const0>\;
  s_in_microblaze_dout(15) <= \<const0>\;
  s_in_microblaze_dout(14) <= \<const0>\;
  s_in_microblaze_dout(13) <= \<const0>\;
  s_in_microblaze_dout(12) <= \<const0>\;
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
  s_out_fb_addr(18 downto 0) <= \^s_in_microblaze_addr\(18 downto 0);
  s_out_fb_clk <= \^s_in_microblaze_clk\;
  s_out_fb_din(11 downto 0) <= \^s_in_microblaze_din\(11 downto 0);
  s_out_fb_en <= \^s_in_microblaze_en\;
  s_out_fb_rst <= \^s_in_microblaze_rst\;
  s_out_fb_we(0) <= \^s_in_microblaze_we\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
