-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Thu Dec 11 18:33:14 2025
-- Host        : mrt-fed-lap running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/maartenvk/src/KBSCE-Plotter/Vivado/KBSCE-Plotter.gen/sources_1/bd/RISC_V/ip/RISC_V_BRAMEater_0_0/RISC_V_BRAMEater_0_0_stub.vhdl
-- Design      : RISC_V_BRAMEater_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RISC_V_BRAMEater_0_0 is
  Port ( 
    bram_en : in STD_LOGIC;
    bram_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    bram_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    bram_we : in STD_LOGIC_VECTOR ( 0 to 0 );
    bram_addr : in STD_LOGIC_VECTOR ( 18 downto 0 );
    bram_clk : in STD_LOGIC;
    bram_rst : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RISC_V_BRAMEater_0_0 : entity is "RISC_V_BRAMEater_0_0,BRAMEater,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of RISC_V_BRAMEater_0_0 : entity is "RISC_V_BRAMEater_0_0,BRAMEater,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=BRAMEater,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of RISC_V_BRAMEater_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of RISC_V_BRAMEater_0_0 : entity is "module_ref";
end RISC_V_BRAMEater_0_0;

architecture stub of RISC_V_BRAMEater_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "bram_en,bram_dout[11:0],bram_din[11:0],bram_we[0:0],bram_addr[18:0],bram_clk,bram_rst";
  attribute x_interface_info : string;
  attribute x_interface_info of bram_en : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT EN";
  attribute x_interface_mode : string;
  attribute x_interface_mode of bram_en : signal is "slave BRAM_IN_PORT";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of bram_en : signal is "XIL_INTERFACENAME BRAM_IN_PORT, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 2";
  attribute x_interface_info of bram_dout : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT DOUT";
  attribute x_interface_info of bram_din : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT DIN";
  attribute x_interface_info of bram_we : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT WE";
  attribute x_interface_info of bram_addr : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT ADDR";
  attribute x_interface_info of bram_clk : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT CLK";
  attribute x_interface_info of bram_rst : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT RST";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "BRAMEater,Vivado 2025.1";
begin
end;
