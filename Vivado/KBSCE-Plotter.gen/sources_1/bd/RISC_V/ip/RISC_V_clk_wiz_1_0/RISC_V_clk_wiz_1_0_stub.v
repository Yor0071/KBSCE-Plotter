// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Fri Dec 19 10:48:02 2025
// Host        : mrt-fed-lap running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/maartenvk/src/KBSCE-Plotter/Vivado/KBSCE-Plotter.gen/sources_1/bd/RISC_V/ip/RISC_V_clk_wiz_1_0/RISC_V_clk_wiz_1_0_stub.v
// Design      : RISC_V_clk_wiz_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CORE_GENERATION_INFO = "RISC_V_clk_wiz_1_0,clk_wiz_v6_0_16_0_0,{component_name=RISC_V_clk_wiz_1_0,use_phase_alignment=true,use_min_o_jitter=false,use_max_i_jitter=false,use_dyn_phase_shift=false,use_inclk_switchover=false,use_dyn_reconfig=false,enable_axi=0,feedback_source=FDBK_AUTO,PRIMITIVE=MMCM,num_out_clk=3,clkin1_period=10.0,clkin2_period=10.0,use_power_down=false,use_reset=true,use_locked=false,use_inclk_stopped=false,feedback_type=SINGLE,CLOCK_MGR_TYPE=NA,manual_override=false}" *) 
module RISC_V_clk_wiz_1_0(clk_out1, VGA_PCLK, cam_clk, reset, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="reset,clk_in1" */
/* synthesis syn_force_seq_prim="clk_out1" */
/* synthesis syn_force_seq_prim="VGA_PCLK" */
/* synthesis syn_force_seq_prim="cam_clk" */;
  output clk_out1 /* synthesis syn_isclock = 1 */;
  output VGA_PCLK /* synthesis syn_isclock = 1 */;
  output cam_clk /* synthesis syn_isclock = 1 */;
  input reset;
  input clk_in1;
endmodule
