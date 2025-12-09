// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Tue Dec  9 14:41:03 2025
// Host        : mrt-fed-lap running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/maartenvk/src/KBSCE-Plotter/Vivado/KBSCE-Plotter.gen/sources_1/bd/RISC_V/ip/RISC_V_BRAMMux_0_1/RISC_V_BRAMMux_0_1_stub.v
// Design      : RISC_V_BRAMMux_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "RISC_V_BRAMMux_0_1,BRAMMux,{}" *) (* core_generation_info = "RISC_V_BRAMMux_0_1,BRAMMux,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=BRAMMux,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "BRAMMux,Vivado 2025.1" *) 
module RISC_V_BRAMMux_0_1(s_in_microblaze_en, s_in_microblaze_dout, 
  s_in_microblaze_din, s_in_microblaze_we, s_in_microblaze_addr, s_in_microblaze_clk, 
  s_in_microblaze_rst, s_in_camera_en, s_in_camera_dout, s_in_camera_din, s_in_camera_we, 
  s_in_camera_addr, s_in_camera_clk, s_in_camera_rst, s_out_fb_en, s_out_fb_dout, 
  s_out_fb_din, s_out_fb_we, s_out_fb_addr, s_out_fb_clk, s_out_fb_rst)
/* synthesis syn_black_box black_box_pad_pin="s_in_microblaze_en,s_in_microblaze_dout[31:0],s_in_microblaze_din[31:0],s_in_microblaze_we[0:0],s_in_microblaze_addr[18:0],s_in_microblaze_clk,s_in_microblaze_rst,s_in_camera_en,s_in_camera_dout[11:0],s_in_camera_din[11:0],s_in_camera_we[0:0],s_in_camera_addr[18:0],s_in_camera_clk,s_in_camera_rst,s_out_fb_en,s_out_fb_dout[11:0],s_out_fb_din[11:0],s_out_fb_we[0:0],s_out_fb_addr[18:0],s_out_fb_clk,s_out_fb_rst" */;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE EN" *) (* x_interface_mode = "slave BRAM_IN_PORT_MICROBLAZE" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_IN_PORT_MICROBLAZE, MEM_SIZE 4096, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input s_in_microblaze_en;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE DOUT" *) output [31:0]s_in_microblaze_dout;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE DIN" *) input [31:0]s_in_microblaze_din;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE WE" *) input [0:0]s_in_microblaze_we;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE ADDR" *) input [18:0]s_in_microblaze_addr;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE CLK" *) input s_in_microblaze_clk;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE RST" *) input s_in_microblaze_rst;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA EN" *) (* x_interface_mode = "slave BRAM_IN_PORT_CAMERA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_IN_PORT_CAMERA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 2" *) input s_in_camera_en;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA DOUT" *) output [11:0]s_in_camera_dout;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA DIN" *) input [11:0]s_in_camera_din;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA WE" *) input [0:0]s_in_camera_we;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA ADDR" *) input [18:0]s_in_camera_addr;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA CLK" *) input s_in_camera_clk;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA RST" *) input s_in_camera_rst;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB EN" *) (* x_interface_mode = "master BRAM_OUT_PORT_FB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_OUT_PORT_FB, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1" *) output s_out_fb_en;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB DOUT" *) input [11:0]s_out_fb_dout;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB DIN" *) output [11:0]s_out_fb_din;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB WE" *) output [0:0]s_out_fb_we;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB ADDR" *) output [18:0]s_out_fb_addr;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB CLK" *) output s_out_fb_clk;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB RST" *) output s_out_fb_rst;
endmodule
