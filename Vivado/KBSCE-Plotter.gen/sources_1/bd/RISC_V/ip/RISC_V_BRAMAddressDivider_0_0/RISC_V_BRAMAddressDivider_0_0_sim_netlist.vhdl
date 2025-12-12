-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Fri Dec 12 10:46:58 2025
-- Host        : mrt-fed-lap running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/maartenvk/src/KBSCE-Plotter/Vivado/KBSCE-Plotter.gen/sources_1/bd/RISC_V/ip/RISC_V_BRAMAddressDivider_0_0/RISC_V_BRAMAddressDivider_0_0_sim_netlist.vhdl
-- Design      : RISC_V_BRAMAddressDivider_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RISC_V_BRAMAddressDivider_0_0 is
  port (
    bram_in_en : in STD_LOGIC;
    bram_in_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_in_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_in_we : in STD_LOGIC_VECTOR ( 0 to 0 );
    bram_in_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_in_clk : in STD_LOGIC;
    bram_in_rst : in STD_LOGIC;
    bram_out_en : out STD_LOGIC;
    bram_out_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_out_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_out_we : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_out_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_out_clk : out STD_LOGIC;
    bram_out_rst : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of RISC_V_BRAMAddressDivider_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RISC_V_BRAMAddressDivider_0_0 : entity is "RISC_V_BRAMAddressDivider_0_0,BRAMAddressDivider,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of RISC_V_BRAMAddressDivider_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of RISC_V_BRAMAddressDivider_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of RISC_V_BRAMAddressDivider_0_0 : entity is "BRAMAddressDivider,Vivado 2025.1";
end RISC_V_BRAMAddressDivider_0_0;

architecture STRUCTURE of RISC_V_BRAMAddressDivider_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^bram_in_addr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^bram_in_clk\ : STD_LOGIC;
  signal \^bram_in_din\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^bram_in_en\ : STD_LOGIC;
  signal \^bram_in_rst\ : STD_LOGIC;
  signal \^bram_in_we\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^bram_out_dout\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of bram_in_clk : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT_IN CLK";
  attribute x_interface_info of bram_in_en : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT_IN EN";
  attribute x_interface_mode : string;
  attribute x_interface_mode of bram_in_en : signal is "slave BRAM_PORT_IN";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of bram_in_en : signal is "XIL_INTERFACENAME BRAM_PORT_IN, MASTER_TYPE OTHER, MEM_SIZE 2097152, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 2";
  attribute x_interface_info of bram_in_rst : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT_IN RST";
  attribute x_interface_info of bram_out_clk : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT CLK";
  attribute x_interface_info of bram_out_en : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT EN";
  attribute x_interface_mode of bram_out_en : signal is "master BRAM_PORT_OUT";
  attribute x_interface_parameter of bram_out_en : signal is "XIL_INTERFACENAME BRAM_PORT_OUT, MASTER_TYPE OTHER, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1";
  attribute x_interface_info of bram_out_rst : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT RST";
  attribute x_interface_info of bram_in_addr : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT_IN ADDR";
  attribute x_interface_info of bram_in_din : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT_IN DIN";
  attribute x_interface_info of bram_in_dout : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT_IN DOUT";
  attribute x_interface_info of bram_in_we : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT_IN WE";
  attribute x_interface_info of bram_out_addr : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT ADDR";
  attribute x_interface_info of bram_out_din : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT DIN";
  attribute x_interface_info of bram_out_dout : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT DOUT";
  attribute x_interface_info of bram_out_we : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT WE";
begin
  \^bram_in_addr\(31 downto 2) <= bram_in_addr(31 downto 2);
  \^bram_in_clk\ <= bram_in_clk;
  \^bram_in_din\(31 downto 0) <= bram_in_din(31 downto 0);
  \^bram_in_en\ <= bram_in_en;
  \^bram_in_rst\ <= bram_in_rst;
  \^bram_in_we\(0) <= bram_in_we(0);
  \^bram_out_dout\(31 downto 0) <= bram_out_dout(31 downto 0);
  bram_in_dout(31 downto 0) <= \^bram_out_dout\(31 downto 0);
  bram_out_addr(31) <= \<const0>\;
  bram_out_addr(30) <= \<const0>\;
  bram_out_addr(29 downto 0) <= \^bram_in_addr\(31 downto 2);
  bram_out_clk <= \^bram_in_clk\;
  bram_out_din(31 downto 0) <= \^bram_in_din\(31 downto 0);
  bram_out_en <= \^bram_in_en\;
  bram_out_rst <= \^bram_in_rst\;
  bram_out_we(0) <= \^bram_in_we\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
