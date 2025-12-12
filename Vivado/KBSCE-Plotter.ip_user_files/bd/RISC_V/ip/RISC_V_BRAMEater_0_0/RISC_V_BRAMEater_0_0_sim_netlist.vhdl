-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Thu Dec 11 18:33:14 2025
-- Host        : mrt-fed-lap running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/maartenvk/src/KBSCE-Plotter/Vivado/KBSCE-Plotter.gen/sources_1/bd/RISC_V/ip/RISC_V_BRAMEater_0_0/RISC_V_BRAMEater_0_0_sim_netlist.vhdl
-- Design      : RISC_V_BRAMEater_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RISC_V_BRAMEater_0_0 is
  port (
    bram_en : in STD_LOGIC;
    bram_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    bram_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    bram_we : in STD_LOGIC_VECTOR ( 0 to 0 );
    bram_addr : in STD_LOGIC_VECTOR ( 18 downto 0 );
    bram_clk : in STD_LOGIC;
    bram_rst : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of RISC_V_BRAMEater_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RISC_V_BRAMEater_0_0 : entity is "RISC_V_BRAMEater_0_0,BRAMEater,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of RISC_V_BRAMEater_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of RISC_V_BRAMEater_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of RISC_V_BRAMEater_0_0 : entity is "BRAMEater,Vivado 2025.1";
end RISC_V_BRAMEater_0_0;

architecture STRUCTURE of RISC_V_BRAMEater_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of bram_clk : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT CLK";
  attribute x_interface_info of bram_en : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT EN";
  attribute x_interface_mode : string;
  attribute x_interface_mode of bram_en : signal is "slave BRAM_IN_PORT";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of bram_en : signal is "XIL_INTERFACENAME BRAM_IN_PORT, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 2";
  attribute x_interface_info of bram_rst : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT RST";
  attribute x_interface_info of bram_addr : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT ADDR";
  attribute x_interface_info of bram_din : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT DIN";
  attribute x_interface_info of bram_dout : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT DOUT";
  attribute x_interface_info of bram_we : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT WE";
begin
  bram_dout(11) <= \<const0>\;
  bram_dout(10) <= \<const0>\;
  bram_dout(9) <= \<const0>\;
  bram_dout(8) <= \<const0>\;
  bram_dout(7) <= \<const0>\;
  bram_dout(6) <= \<const0>\;
  bram_dout(5) <= \<const0>\;
  bram_dout(4) <= \<const0>\;
  bram_dout(3) <= \<const0>\;
  bram_dout(2) <= \<const0>\;
  bram_dout(1) <= \<const0>\;
  bram_dout(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
