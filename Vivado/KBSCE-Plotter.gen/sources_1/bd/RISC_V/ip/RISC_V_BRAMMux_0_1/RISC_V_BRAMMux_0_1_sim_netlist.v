// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Tue Dec  9 11:07:34 2025
// Host        : mrt-fed-lap running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/maartenvk/src/KBSCE-Plotter/Vivado/KBSCE-Plotter.gen/sources_1/bd/RISC_V/ip/RISC_V_BRAMMux_0_1/RISC_V_BRAMMux_0_1_sim_netlist.v
// Design      : RISC_V_BRAMMux_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RISC_V_BRAMMux_0_1,BRAMMux,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "BRAMMux,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module RISC_V_BRAMMux_0_1
   (s_in_microblaze_en,
    s_in_microblaze_dout,
    s_in_microblaze_din,
    s_in_microblaze_we,
    s_in_microblaze_addr,
    s_in_microblaze_clk,
    s_in_microblaze_rst,
    s_in_camera_en,
    s_in_camera_dout,
    s_in_camera_din,
    s_in_camera_we,
    s_in_camera_addr,
    s_in_camera_clk,
    s_in_camera_rst,
    s_out_fb_en,
    s_out_fb_dout,
    s_out_fb_din,
    s_out_fb_we,
    s_out_fb_addr,
    s_out_fb_clk,
    s_out_fb_rst);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE EN" *) (* x_interface_mode = "slave BRAM_IN_PORT_MICROBLAZE" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_IN_PORT_MICROBLAZE, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input s_in_microblaze_en;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE DOUT" *) output [11:0]s_in_microblaze_dout;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE DIN" *) input [11:0]s_in_microblaze_din;
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB EN" *) (* x_interface_mode = "master BRAM_OUT_PORT_FB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_OUT_PORT_FB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) output s_out_fb_en;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB DOUT" *) input [11:0]s_out_fb_dout;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB DIN" *) output [11:0]s_out_fb_din;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB WE" *) output [0:0]s_out_fb_we;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB ADDR" *) output [18:0]s_out_fb_addr;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB CLK" *) output s_out_fb_clk;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB RST" *) output s_out_fb_rst;

  wire \<const0> ;

  assign s_in_camera_dout[11] = \<const0> ;
  assign s_in_camera_dout[10] = \<const0> ;
  assign s_in_camera_dout[9] = \<const0> ;
  assign s_in_camera_dout[8] = \<const0> ;
  assign s_in_camera_dout[7] = \<const0> ;
  assign s_in_camera_dout[6] = \<const0> ;
  assign s_in_camera_dout[5] = \<const0> ;
  assign s_in_camera_dout[4] = \<const0> ;
  assign s_in_camera_dout[3] = \<const0> ;
  assign s_in_camera_dout[2] = \<const0> ;
  assign s_in_camera_dout[1] = \<const0> ;
  assign s_in_camera_dout[0] = \<const0> ;
  assign s_in_microblaze_dout[11] = \<const0> ;
  assign s_in_microblaze_dout[10] = \<const0> ;
  assign s_in_microblaze_dout[9] = \<const0> ;
  assign s_in_microblaze_dout[8] = \<const0> ;
  assign s_in_microblaze_dout[7] = \<const0> ;
  assign s_in_microblaze_dout[6] = \<const0> ;
  assign s_in_microblaze_dout[5] = \<const0> ;
  assign s_in_microblaze_dout[4] = \<const0> ;
  assign s_in_microblaze_dout[3] = \<const0> ;
  assign s_in_microblaze_dout[2] = \<const0> ;
  assign s_in_microblaze_dout[1] = \<const0> ;
  assign s_in_microblaze_dout[0] = \<const0> ;
  assign s_out_fb_addr[18] = \<const0> ;
  assign s_out_fb_addr[17] = \<const0> ;
  assign s_out_fb_addr[16] = \<const0> ;
  assign s_out_fb_addr[15] = \<const0> ;
  assign s_out_fb_addr[14] = \<const0> ;
  assign s_out_fb_addr[13] = \<const0> ;
  assign s_out_fb_addr[12] = \<const0> ;
  assign s_out_fb_addr[11] = \<const0> ;
  assign s_out_fb_addr[10] = \<const0> ;
  assign s_out_fb_addr[9] = \<const0> ;
  assign s_out_fb_addr[8] = \<const0> ;
  assign s_out_fb_addr[7] = \<const0> ;
  assign s_out_fb_addr[6] = \<const0> ;
  assign s_out_fb_addr[5] = \<const0> ;
  assign s_out_fb_addr[4] = \<const0> ;
  assign s_out_fb_addr[3] = \<const0> ;
  assign s_out_fb_addr[2] = \<const0> ;
  assign s_out_fb_addr[1] = \<const0> ;
  assign s_out_fb_addr[0] = \<const0> ;
  assign s_out_fb_clk = \<const0> ;
  assign s_out_fb_din[11] = \<const0> ;
  assign s_out_fb_din[10] = \<const0> ;
  assign s_out_fb_din[9] = \<const0> ;
  assign s_out_fb_din[8] = \<const0> ;
  assign s_out_fb_din[7] = \<const0> ;
  assign s_out_fb_din[6] = \<const0> ;
  assign s_out_fb_din[5] = \<const0> ;
  assign s_out_fb_din[4] = \<const0> ;
  assign s_out_fb_din[3] = \<const0> ;
  assign s_out_fb_din[2] = \<const0> ;
  assign s_out_fb_din[1] = \<const0> ;
  assign s_out_fb_din[0] = \<const0> ;
  assign s_out_fb_en = \<const0> ;
  assign s_out_fb_rst = \<const0> ;
  assign s_out_fb_we[0] = \<const0> ;
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
