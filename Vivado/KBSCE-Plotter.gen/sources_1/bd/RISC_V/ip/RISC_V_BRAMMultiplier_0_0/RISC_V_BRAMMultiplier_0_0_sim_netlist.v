// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Wed Dec 10 12:26:51 2025
// Host        : mrt-fed-lap running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/maartenvk/src/KBSCE-Plotter/Vivado/KBSCE-Plotter.gen/sources_1/bd/RISC_V/ip/RISC_V_BRAMMultiplier_0_0/RISC_V_BRAMMultiplier_0_0_sim_netlist.v
// Design      : RISC_V_BRAMMultiplier_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RISC_V_BRAMMultiplier_0_0,BRAMMultiplier,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "BRAMMultiplier,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module RISC_V_BRAMMultiplier_0_0
   (s_in_en,
    s_in_dout,
    s_in_din,
    s_in_we,
    s_in_addr,
    s_in_clk,
    s_in_rst,
    s_out_a_en,
    s_out_a_dout,
    s_out_a_din,
    s_out_a_we,
    s_out_a_addr,
    s_out_a_clk,
    s_out_a_rst,
    s_out_b_en,
    s_out_b_dout,
    s_out_b_din,
    s_out_b_we,
    s_out_b_addr,
    s_out_b_clk,
    s_out_b_rst);
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

  wire [31:0]s_in_addr;
  wire s_in_clk;
  wire [31:0]s_in_din;
  wire [31:0]s_in_dout;
  wire s_in_en;
  wire s_in_rst;
  wire [0:0]s_in_we;
  wire [31:0]s_out_a_dout;
  wire [31:0]s_out_b_dout;

  assign s_out_a_addr[31:0] = s_in_addr;
  assign s_out_a_clk = s_in_clk;
  assign s_out_a_din[31:0] = s_in_din;
  assign s_out_a_en = s_in_en;
  assign s_out_a_rst = s_in_rst;
  assign s_out_a_we[0] = s_in_we;
  assign s_out_b_addr[18:0] = s_in_addr[18:0];
  assign s_out_b_clk = s_in_clk;
  assign s_out_b_din[31:0] = s_in_din;
  assign s_out_b_en = s_in_en;
  assign s_out_b_rst = s_in_rst;
  assign s_out_b_we[0] = s_in_we;
  RISC_V_BRAMMultiplier_0_0_BRAMMultiplier U0
       (.s_in_dout(s_in_dout),
        .s_out_a_dout(s_out_a_dout),
        .s_out_b_dout(s_out_b_dout));
endmodule

(* ORIG_REF_NAME = "BRAMMultiplier" *) 
module RISC_V_BRAMMultiplier_0_0_BRAMMultiplier
   (s_in_dout,
    s_out_a_dout,
    s_out_b_dout);
  output [31:0]s_in_dout;
  input [31:0]s_out_a_dout;
  input [31:0]s_out_b_dout;

  wire [31:0]s_in_dout;
  wire [31:0]s_out_a_dout;
  wire [31:0]s_out_b_dout;

  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[0]_INST_0 
       (.I0(s_out_a_dout[0]),
        .I1(s_out_b_dout[0]),
        .O(s_in_dout[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[10]_INST_0 
       (.I0(s_out_a_dout[10]),
        .I1(s_out_b_dout[10]),
        .O(s_in_dout[10]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[11]_INST_0 
       (.I0(s_out_a_dout[11]),
        .I1(s_out_b_dout[11]),
        .O(s_in_dout[11]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[12]_INST_0 
       (.I0(s_out_a_dout[12]),
        .I1(s_out_b_dout[12]),
        .O(s_in_dout[12]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[13]_INST_0 
       (.I0(s_out_a_dout[13]),
        .I1(s_out_b_dout[13]),
        .O(s_in_dout[13]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[14]_INST_0 
       (.I0(s_out_a_dout[14]),
        .I1(s_out_b_dout[14]),
        .O(s_in_dout[14]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[15]_INST_0 
       (.I0(s_out_a_dout[15]),
        .I1(s_out_b_dout[15]),
        .O(s_in_dout[15]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[16]_INST_0 
       (.I0(s_out_a_dout[16]),
        .I1(s_out_b_dout[16]),
        .O(s_in_dout[16]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[17]_INST_0 
       (.I0(s_out_a_dout[17]),
        .I1(s_out_b_dout[17]),
        .O(s_in_dout[17]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[18]_INST_0 
       (.I0(s_out_a_dout[18]),
        .I1(s_out_b_dout[18]),
        .O(s_in_dout[18]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[19]_INST_0 
       (.I0(s_out_a_dout[19]),
        .I1(s_out_b_dout[19]),
        .O(s_in_dout[19]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[1]_INST_0 
       (.I0(s_out_a_dout[1]),
        .I1(s_out_b_dout[1]),
        .O(s_in_dout[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[20]_INST_0 
       (.I0(s_out_a_dout[20]),
        .I1(s_out_b_dout[20]),
        .O(s_in_dout[20]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[21]_INST_0 
       (.I0(s_out_a_dout[21]),
        .I1(s_out_b_dout[21]),
        .O(s_in_dout[21]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[22]_INST_0 
       (.I0(s_out_a_dout[22]),
        .I1(s_out_b_dout[22]),
        .O(s_in_dout[22]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[23]_INST_0 
       (.I0(s_out_a_dout[23]),
        .I1(s_out_b_dout[23]),
        .O(s_in_dout[23]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[24]_INST_0 
       (.I0(s_out_a_dout[24]),
        .I1(s_out_b_dout[24]),
        .O(s_in_dout[24]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[25]_INST_0 
       (.I0(s_out_a_dout[25]),
        .I1(s_out_b_dout[25]),
        .O(s_in_dout[25]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[26]_INST_0 
       (.I0(s_out_a_dout[26]),
        .I1(s_out_b_dout[26]),
        .O(s_in_dout[26]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[27]_INST_0 
       (.I0(s_out_a_dout[27]),
        .I1(s_out_b_dout[27]),
        .O(s_in_dout[27]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[28]_INST_0 
       (.I0(s_out_a_dout[28]),
        .I1(s_out_b_dout[28]),
        .O(s_in_dout[28]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[29]_INST_0 
       (.I0(s_out_a_dout[29]),
        .I1(s_out_b_dout[29]),
        .O(s_in_dout[29]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[2]_INST_0 
       (.I0(s_out_a_dout[2]),
        .I1(s_out_b_dout[2]),
        .O(s_in_dout[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[30]_INST_0 
       (.I0(s_out_a_dout[30]),
        .I1(s_out_b_dout[30]),
        .O(s_in_dout[30]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[31]_INST_0 
       (.I0(s_out_a_dout[31]),
        .I1(s_out_b_dout[31]),
        .O(s_in_dout[31]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[3]_INST_0 
       (.I0(s_out_a_dout[3]),
        .I1(s_out_b_dout[3]),
        .O(s_in_dout[3]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[4]_INST_0 
       (.I0(s_out_a_dout[4]),
        .I1(s_out_b_dout[4]),
        .O(s_in_dout[4]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[5]_INST_0 
       (.I0(s_out_a_dout[5]),
        .I1(s_out_b_dout[5]),
        .O(s_in_dout[5]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[6]_INST_0 
       (.I0(s_out_a_dout[6]),
        .I1(s_out_b_dout[6]),
        .O(s_in_dout[6]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[7]_INST_0 
       (.I0(s_out_a_dout[7]),
        .I1(s_out_b_dout[7]),
        .O(s_in_dout[7]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[8]_INST_0 
       (.I0(s_out_a_dout[8]),
        .I1(s_out_b_dout[8]),
        .O(s_in_dout[8]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_in_dout[9]_INST_0 
       (.I0(s_out_a_dout[9]),
        .I1(s_out_b_dout[9]),
        .O(s_in_dout[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
