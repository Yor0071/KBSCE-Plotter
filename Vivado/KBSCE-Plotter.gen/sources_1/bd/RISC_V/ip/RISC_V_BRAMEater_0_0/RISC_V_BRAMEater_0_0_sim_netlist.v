// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu Dec 11 18:33:14 2025
// Host        : mrt-fed-lap running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/maartenvk/src/KBSCE-Plotter/Vivado/KBSCE-Plotter.gen/sources_1/bd/RISC_V/ip/RISC_V_BRAMEater_0_0/RISC_V_BRAMEater_0_0_sim_netlist.v
// Design      : RISC_V_BRAMEater_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RISC_V_BRAMEater_0_0,BRAMEater,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "BRAMEater,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module RISC_V_BRAMEater_0_0
   (bram_en,
    bram_dout,
    bram_din,
    bram_we,
    bram_addr,
    bram_clk,
    bram_rst);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT EN" *) (* x_interface_mode = "slave BRAM_IN_PORT" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_IN_PORT, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 2" *) input bram_en;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT DOUT" *) output [11:0]bram_dout;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT DIN" *) input [11:0]bram_din;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT WE" *) input [0:0]bram_we;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT ADDR" *) input [18:0]bram_addr;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT CLK" *) input bram_clk;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT RST" *) input bram_rst;

  wire \<const0> ;

  assign bram_dout[11] = \<const0> ;
  assign bram_dout[10] = \<const0> ;
  assign bram_dout[9] = \<const0> ;
  assign bram_dout[8] = \<const0> ;
  assign bram_dout[7] = \<const0> ;
  assign bram_dout[6] = \<const0> ;
  assign bram_dout[5] = \<const0> ;
  assign bram_dout[4] = \<const0> ;
  assign bram_dout[3] = \<const0> ;
  assign bram_dout[2] = \<const0> ;
  assign bram_dout[1] = \<const0> ;
  assign bram_dout[0] = \<const0> ;
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
