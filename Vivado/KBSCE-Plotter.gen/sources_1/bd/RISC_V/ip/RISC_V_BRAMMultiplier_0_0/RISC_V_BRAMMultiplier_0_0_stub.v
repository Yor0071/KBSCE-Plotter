// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Wed Dec 10 12:26:51 2025
// Host        : mrt-fed-lap running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/maartenvk/src/KBSCE-Plotter/Vivado/KBSCE-Plotter.gen/sources_1/bd/RISC_V/ip/RISC_V_BRAMMultiplier_0_0/RISC_V_BRAMMultiplier_0_0_stub.v
// Design      : RISC_V_BRAMMultiplier_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "RISC_V_BRAMMultiplier_0_0,BRAMMultiplier,{}" *) (* core_generation_info = "RISC_V_BRAMMultiplier_0_0,BRAMMultiplier,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=BRAMMultiplier,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "BRAMMultiplier,Vivado 2025.1" *) 
module RISC_V_BRAMMultiplier_0_0(s_in_en, s_in_dout, s_in_din, s_in_we, s_in_addr, 
  s_in_clk, s_in_rst, s_out_a_en, s_out_a_dout, s_out_a_din, s_out_a_we, s_out_a_addr, 
  s_out_a_clk, s_out_a_rst, s_out_b_en, s_out_b_dout, s_out_b_din, s_out_b_we, s_out_b_addr, 
  s_out_b_clk, s_out_b_rst)
/* synthesis syn_black_box black_box_pad_pin="s_in_en,s_in_dout[31:0],s_in_din[31:0],s_in_we[0:0],s_in_addr[31:0],s_in_clk,s_in_rst,s_out_a_en,s_out_a_dout[31:0],s_out_a_din[31:0],s_out_a_we[0:0],s_out_a_addr[31:0],s_out_a_clk,s_out_a_rst,s_out_b_en,s_out_b_dout[31:0],s_out_b_din[31:0],s_out_b_we[0:0],s_out_b_addr[18:0],s_out_b_clk,s_out_b_rst" */;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 DLMB_BRAM_CONTROLLER_PORT_IN EN" *) (* x_interface_mode = "slave DLMB_BRAM_CONTROLLER_PORT_IN" *) (* x_interface_parameter = "XIL_INTERFACENAME DLMB_BRAM_CONTROLLER_PORT_IN, MEM_SIZE 65536, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input s_in_en;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 DLMB_BRAM_CONTROLLER_PORT_IN DOUT" *) output [31:0]s_in_dout;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 DLMB_BRAM_CONTROLLER_PORT_IN DIN" *) input [31:0]s_in_din;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 DLMB_BRAM_CONTROLLER_PORT_IN WE" *) input [0:0]s_in_we;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 DLMB_BRAM_CONTROLLER_PORT_IN ADDR" *) input [31:0]s_in_addr;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 DLMB_BRAM_CONTROLLER_PORT_IN CLK" *) input s_in_clk;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 DLMB_BRAM_CONTROLLER_PORT_IN RST" *) input s_in_rst;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 LMB_BRAM_OUT_PORT_A EN" *) (* x_interface_mode = "master LMB_BRAM_OUT_PORT_A" *) (* x_interface_parameter = "XIL_INTERFACENAME LMB_BRAM_OUT_PORT_A, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1" *) output s_out_a_en;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 LMB_BRAM_OUT_PORT_A DOUT" *) input [31:0]s_out_a_dout;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 LMB_BRAM_OUT_PORT_A DIN" *) output [31:0]s_out_a_din;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 LMB_BRAM_OUT_PORT_A WE" *) output [0:0]s_out_a_we;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 LMB_BRAM_OUT_PORT_A ADDR" *) output [31:0]s_out_a_addr;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 LMB_BRAM_OUT_PORT_A CLK" *) output s_out_a_clk;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 LMB_BRAM_OUT_PORT_A RST" *) output s_out_a_rst;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 FRAMEBUFFER_BRAM_OUT_PORT_B EN" *) (* x_interface_mode = "master FRAMEBUFFER_BRAM_OUT_PORT_B" *) (* x_interface_parameter = "XIL_INTERFACENAME FRAMEBUFFER_BRAM_OUT_PORT_B, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1" *) output s_out_b_en;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 FRAMEBUFFER_BRAM_OUT_PORT_B DOUT" *) input [31:0]s_out_b_dout;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 FRAMEBUFFER_BRAM_OUT_PORT_B DIN" *) output [31:0]s_out_b_din;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 FRAMEBUFFER_BRAM_OUT_PORT_B WE" *) output [0:0]s_out_b_we;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 FRAMEBUFFER_BRAM_OUT_PORT_B ADDR" *) output [18:0]s_out_b_addr;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 FRAMEBUFFER_BRAM_OUT_PORT_B CLK" *) output s_out_b_clk;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 FRAMEBUFFER_BRAM_OUT_PORT_B RST" *) output s_out_b_rst;
endmodule
