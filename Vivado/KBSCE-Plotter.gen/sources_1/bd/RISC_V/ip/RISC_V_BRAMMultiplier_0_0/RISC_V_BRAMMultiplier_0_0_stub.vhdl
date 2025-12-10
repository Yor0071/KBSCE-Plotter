-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Wed Dec 10 12:26:51 2025
-- Host        : mrt-fed-lap running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/maartenvk/src/KBSCE-Plotter/Vivado/KBSCE-Plotter.gen/sources_1/bd/RISC_V/ip/RISC_V_BRAMMultiplier_0_0/RISC_V_BRAMMultiplier_0_0_stub.vhdl
-- Design      : RISC_V_BRAMMultiplier_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RISC_V_BRAMMultiplier_0_0 is
  Port ( 
    s_in_en : in STD_LOGIC;
    s_in_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_in_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_in_we : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_in_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_in_clk : in STD_LOGIC;
    s_in_rst : in STD_LOGIC;
    s_out_a_en : out STD_LOGIC;
    s_out_a_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_out_a_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_out_a_we : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_out_a_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_out_a_clk : out STD_LOGIC;
    s_out_a_rst : out STD_LOGIC;
    s_out_b_en : out STD_LOGIC;
    s_out_b_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_out_b_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_out_b_we : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_out_b_addr : out STD_LOGIC_VECTOR ( 18 downto 0 );
    s_out_b_clk : out STD_LOGIC;
    s_out_b_rst : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RISC_V_BRAMMultiplier_0_0 : entity is "RISC_V_BRAMMultiplier_0_0,BRAMMultiplier,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of RISC_V_BRAMMultiplier_0_0 : entity is "RISC_V_BRAMMultiplier_0_0,BRAMMultiplier,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=BRAMMultiplier,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of RISC_V_BRAMMultiplier_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of RISC_V_BRAMMultiplier_0_0 : entity is "module_ref";
end RISC_V_BRAMMultiplier_0_0;

architecture stub of RISC_V_BRAMMultiplier_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "s_in_en,s_in_dout[31:0],s_in_din[31:0],s_in_we[0:0],s_in_addr[31:0],s_in_clk,s_in_rst,s_out_a_en,s_out_a_dout[31:0],s_out_a_din[31:0],s_out_a_we[0:0],s_out_a_addr[31:0],s_out_a_clk,s_out_a_rst,s_out_b_en,s_out_b_dout[31:0],s_out_b_din[31:0],s_out_b_we[0:0],s_out_b_addr[18:0],s_out_b_clk,s_out_b_rst";
  attribute x_interface_info : string;
  attribute x_interface_info of s_in_en : signal is "xilinx.com:interface:bram:1.0 DLMB_BRAM_CONTROLLER_PORT_IN EN";
  attribute x_interface_mode : string;
  attribute x_interface_mode of s_in_en : signal is "slave DLMB_BRAM_CONTROLLER_PORT_IN";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s_in_en : signal is "XIL_INTERFACENAME DLMB_BRAM_CONTROLLER_PORT_IN, MEM_SIZE 65536, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  attribute x_interface_info of s_in_dout : signal is "xilinx.com:interface:bram:1.0 DLMB_BRAM_CONTROLLER_PORT_IN DOUT";
  attribute x_interface_info of s_in_din : signal is "xilinx.com:interface:bram:1.0 DLMB_BRAM_CONTROLLER_PORT_IN DIN";
  attribute x_interface_info of s_in_we : signal is "xilinx.com:interface:bram:1.0 DLMB_BRAM_CONTROLLER_PORT_IN WE";
  attribute x_interface_info of s_in_addr : signal is "xilinx.com:interface:bram:1.0 DLMB_BRAM_CONTROLLER_PORT_IN ADDR";
  attribute x_interface_info of s_in_clk : signal is "xilinx.com:interface:bram:1.0 DLMB_BRAM_CONTROLLER_PORT_IN CLK";
  attribute x_interface_info of s_in_rst : signal is "xilinx.com:interface:bram:1.0 DLMB_BRAM_CONTROLLER_PORT_IN RST";
  attribute x_interface_info of s_out_a_en : signal is "xilinx.com:interface:bram:1.0 LMB_BRAM_OUT_PORT_A EN";
  attribute x_interface_mode of s_out_a_en : signal is "master LMB_BRAM_OUT_PORT_A";
  attribute x_interface_parameter of s_out_a_en : signal is "XIL_INTERFACENAME LMB_BRAM_OUT_PORT_A, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1";
  attribute x_interface_info of s_out_a_dout : signal is "xilinx.com:interface:bram:1.0 LMB_BRAM_OUT_PORT_A DOUT";
  attribute x_interface_info of s_out_a_din : signal is "xilinx.com:interface:bram:1.0 LMB_BRAM_OUT_PORT_A DIN";
  attribute x_interface_info of s_out_a_we : signal is "xilinx.com:interface:bram:1.0 LMB_BRAM_OUT_PORT_A WE";
  attribute x_interface_info of s_out_a_addr : signal is "xilinx.com:interface:bram:1.0 LMB_BRAM_OUT_PORT_A ADDR";
  attribute x_interface_info of s_out_a_clk : signal is "xilinx.com:interface:bram:1.0 LMB_BRAM_OUT_PORT_A CLK";
  attribute x_interface_info of s_out_a_rst : signal is "xilinx.com:interface:bram:1.0 LMB_BRAM_OUT_PORT_A RST";
  attribute x_interface_info of s_out_b_en : signal is "xilinx.com:interface:bram:1.0 FRAMEBUFFER_BRAM_OUT_PORT_B EN";
  attribute x_interface_mode of s_out_b_en : signal is "master FRAMEBUFFER_BRAM_OUT_PORT_B";
  attribute x_interface_parameter of s_out_b_en : signal is "XIL_INTERFACENAME FRAMEBUFFER_BRAM_OUT_PORT_B, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1";
  attribute x_interface_info of s_out_b_dout : signal is "xilinx.com:interface:bram:1.0 FRAMEBUFFER_BRAM_OUT_PORT_B DOUT";
  attribute x_interface_info of s_out_b_din : signal is "xilinx.com:interface:bram:1.0 FRAMEBUFFER_BRAM_OUT_PORT_B DIN";
  attribute x_interface_info of s_out_b_we : signal is "xilinx.com:interface:bram:1.0 FRAMEBUFFER_BRAM_OUT_PORT_B WE";
  attribute x_interface_info of s_out_b_addr : signal is "xilinx.com:interface:bram:1.0 FRAMEBUFFER_BRAM_OUT_PORT_B ADDR";
  attribute x_interface_info of s_out_b_clk : signal is "xilinx.com:interface:bram:1.0 FRAMEBUFFER_BRAM_OUT_PORT_B CLK";
  attribute x_interface_info of s_out_b_rst : signal is "xilinx.com:interface:bram:1.0 FRAMEBUFFER_BRAM_OUT_PORT_B RST";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "BRAMMultiplier,Vivado 2025.1";
begin
end;
