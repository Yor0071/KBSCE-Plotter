// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Fri Dec 12 13:13:10 2025
// Host        : mrt-fed-lap running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/maartenvk/src/KBSCE-Plotter/Vivado/KBSCE-Plotter.gen/sources_1/bd/RISC_V/ip/RISC_V_BRAMAddressDivider_0_0/RISC_V_BRAMAddressDivider_0_0_sim_netlist.v
// Design      : RISC_V_BRAMAddressDivider_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RISC_V_BRAMAddressDivider_0_0,BRAMAddressDivider,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "BRAMAddressDivider,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module RISC_V_BRAMAddressDivider_0_0
   (bram_in_en,
    bram_in_dout,
    bram_in_din,
    bram_in_we,
    bram_in_addr,
    bram_in_clk,
    bram_in_rst,
    bram_out_en,
    bram_out_dout,
    bram_out_din,
    bram_out_we,
    bram_out_addr,
    bram_out_clk,
    bram_out_rst);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT_IN EN" *) (* x_interface_mode = "slave BRAM_PORT_IN" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORT_IN, MASTER_TYPE OTHER, MEM_SIZE 2097152, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1" *) input bram_in_en;
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

  wire \<const0> ;
  wire [31:0]bram_in_addr;
  wire bram_in_clk;
  wire [31:0]bram_in_din;
  wire bram_in_en;
  wire bram_in_rst;
  wire [0:0]bram_in_we;
  wire [31:0]bram_out_dout;

  assign bram_in_dout[31:0] = bram_out_dout;
  assign bram_out_addr[31] = \<const0> ;
  assign bram_out_addr[30] = \<const0> ;
  assign bram_out_addr[29:0] = bram_in_addr[31:2];
  assign bram_out_clk = bram_in_clk;
  assign bram_out_din[31:0] = bram_in_din;
  assign bram_out_en = bram_in_en;
  assign bram_out_rst = bram_in_rst;
  assign bram_out_we[0] = bram_in_we;
  GND GND
       (.G(\<const0> ));
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
