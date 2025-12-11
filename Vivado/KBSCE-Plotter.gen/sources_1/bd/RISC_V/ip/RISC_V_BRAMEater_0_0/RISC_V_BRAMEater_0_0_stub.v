// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu Dec 11 18:33:14 2025
// Host        : mrt-fed-lap running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/maartenvk/src/KBSCE-Plotter/Vivado/KBSCE-Plotter.gen/sources_1/bd/RISC_V/ip/RISC_V_BRAMEater_0_0/RISC_V_BRAMEater_0_0_stub.v
// Design      : RISC_V_BRAMEater_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "RISC_V_BRAMEater_0_0,BRAMEater,{}" *) (* core_generation_info = "RISC_V_BRAMEater_0_0,BRAMEater,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=BRAMEater,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "BRAMEater,Vivado 2025.1" *) 
module RISC_V_BRAMEater_0_0(bram_en, bram_dout, bram_din, bram_we, bram_addr, 
  bram_clk, bram_rst)
/* synthesis syn_black_box black_box_pad_pin="bram_en,bram_dout[11:0],bram_din[11:0],bram_we[0:0],bram_addr[18:0],bram_clk,bram_rst" */;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT EN" *) (* x_interface_mode = "slave BRAM_IN_PORT" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_IN_PORT, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 2" *) input bram_en;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT DOUT" *) output [11:0]bram_dout;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT DIN" *) input [11:0]bram_din;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT WE" *) input [0:0]bram_we;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT ADDR" *) input [18:0]bram_addr;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT CLK" *) input bram_clk;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT RST" *) input bram_rst;
endmodule
