-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Fri Dec 12 13:13:10 2025
-- Host        : mrt-fed-lap running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/maartenvk/src/KBSCE-Plotter/Vivado/KBSCE-Plotter.gen/sources_1/bd/RISC_V/ip/RISC_V_BRAMAddressDivider_0_0/RISC_V_BRAMAddressDivider_0_0_stub.vhdl
-- Design      : RISC_V_BRAMAddressDivider_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RISC_V_BRAMAddressDivider_0_0 is
  Port ( 
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

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RISC_V_BRAMAddressDivider_0_0 : entity is "RISC_V_BRAMAddressDivider_0_0,BRAMAddressDivider,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of RISC_V_BRAMAddressDivider_0_0 : entity is "RISC_V_BRAMAddressDivider_0_0,BRAMAddressDivider,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=BRAMAddressDivider,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of RISC_V_BRAMAddressDivider_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of RISC_V_BRAMAddressDivider_0_0 : entity is "module_ref";
end RISC_V_BRAMAddressDivider_0_0;

architecture stub of RISC_V_BRAMAddressDivider_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "bram_in_en,bram_in_dout[31:0],bram_in_din[31:0],bram_in_we[0:0],bram_in_addr[31:0],bram_in_clk,bram_in_rst,bram_out_en,bram_out_dout[31:0],bram_out_din[31:0],bram_out_we[0:0],bram_out_addr[31:0],bram_out_clk,bram_out_rst";
  attribute x_interface_info : string;
  attribute x_interface_info of bram_in_en : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT_IN EN";
  attribute x_interface_mode : string;
  attribute x_interface_mode of bram_in_en : signal is "slave BRAM_PORT_IN";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of bram_in_en : signal is "XIL_INTERFACENAME BRAM_PORT_IN, MASTER_TYPE OTHER, MEM_SIZE 2097152, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1";
  attribute x_interface_info of bram_in_dout : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT_IN DOUT";
  attribute x_interface_info of bram_in_din : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT_IN DIN";
  attribute x_interface_info of bram_in_we : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT_IN WE";
  attribute x_interface_info of bram_in_addr : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT_IN ADDR";
  attribute x_interface_info of bram_in_clk : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT_IN CLK";
  attribute x_interface_info of bram_in_rst : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT_IN RST";
  attribute x_interface_info of bram_out_en : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT EN";
  attribute x_interface_mode of bram_out_en : signal is "master BRAM_PORT_OUT";
  attribute x_interface_parameter of bram_out_en : signal is "XIL_INTERFACENAME BRAM_PORT_OUT, MASTER_TYPE OTHER, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1";
  attribute x_interface_info of bram_out_dout : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT DOUT";
  attribute x_interface_info of bram_out_din : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT DIN";
  attribute x_interface_info of bram_out_we : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT WE";
  attribute x_interface_info of bram_out_addr : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT ADDR";
  attribute x_interface_info of bram_out_clk : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT CLK";
  attribute x_interface_info of bram_out_rst : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT RST";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "BRAMAddressDivider,Vivado 2025.1";
begin
end;
