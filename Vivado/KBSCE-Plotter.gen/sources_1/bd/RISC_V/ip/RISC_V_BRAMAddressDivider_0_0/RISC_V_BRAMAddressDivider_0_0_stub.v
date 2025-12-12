// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Fri Dec 12 11:51:29 2025
// Host        : mrt-fed-lap running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/maartenvk/src/KBSCE-Plotter/Vivado/KBSCE-Plotter.gen/sources_1/bd/RISC_V/ip/RISC_V_BRAMAddressDivider_0_0/RISC_V_BRAMAddressDivider_0_0_stub.v
// Design      : RISC_V_BRAMAddressDivider_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "RISC_V_BRAMAddressDivider_0_0,BRAMAddressDivider,{}" *) (* core_generation_info = "RISC_V_BRAMAddressDivider_0_0,BRAMAddressDivider,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=BRAMAddressDivider,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "BRAMAddressDivider,Vivado 2025.1" *) 
module RISC_V_BRAMAddressDivider_0_0(bram_in_en, bram_in_dout, bram_in_din, 
  bram_in_we, bram_in_addr, bram_in_clk, bram_in_rst, bram_out_en, bram_out_dout, bram_out_din, 
  bram_out_we, bram_out_addr, bram_out_clk, bram_out_rst)
/* synthesis syn_black_box black_box_pad_pin="bram_in_en,bram_in_dout[31:0],bram_in_din[31:0],bram_in_we[0:0],bram_in_addr[31:0],bram_in_clk,bram_in_rst,bram_out_en,bram_out_dout[31:0],bram_out_din[31:0],bram_out_we[0:0],bram_out_addr[31:0],bram_out_clk,bram_out_rst" */;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT_IN EN" *) (* x_interface_mode = "slave BRAM_PORT_IN" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORT_IN, MASTER_TYPE OTHER, MEM_SIZE 2097152, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 2" *) input bram_in_en;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT_IN DOUT" *) output [31:0]bram_in_dout;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT_IN DIN" *) input [31:0]bram_in_din;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT_IN WE" *) input [0:0]bram_in_we;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT_IN ADDR" *) input [31:0]bram_in_addr;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT_IN CLK" *) input bram_in_clk;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT_IN RST" *) input bram_in_rst;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT EN" *) (* x_interface_mode = "master BRAM_PORT_OUT" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORT_OUT, MASTER_TYPE OTHER, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1" *) output bram_out_en;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT DOUT" *) input [31:0]bram_out_dout;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT DIN" *) output [31:0]bram_out_din;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT WE" *) output [0:0]bram_out_we;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT ADDR" *) output [31:0]bram_out_addr;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT CLK" *) output bram_out_clk;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT RST" *) output bram_out_rst;
endmodule
