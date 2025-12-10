// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Wed Dec 10 11:25:44 2025
// Host        : mrt-fed-lap running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ RISC_V_axi_lmb_bridge_0_0_stub.v
// Design      : RISC_V_axi_lmb_bridge_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "RISC_V_axi_lmb_bridge_0_0,axi_lmb_bridge,{}" *) (* core_generation_info = "RISC_V_axi_lmb_bridge_0_0,axi_lmb_bridge,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_lmb_bridge,x_ipVersion=1.0,x_ipCoreRevision=4,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_DATA_WIDTH=32,C_ADDR_WIDTH=32,C_AXI_AW_DEPTH=2,C_AXI_W_DEPTH=8,C_AXI_AR_DEPTH=2,C_AXI_R_DEPTH=8,C_AXI_ID_WIDTH=1,C_USE_PAUSE=0,C_LMB_PROTOCOL=0}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "axi_lmb_bridge,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(Clk, Rst, S_AXI_AWADDR, S_AXI_AWLEN, 
  S_AXI_AWSIZE, S_AXI_AWBURST, S_AXI_AWVALID, S_AXI_AWREADY, S_AXI_WDATA, S_AXI_WSTRB, 
  S_AXI_WLAST, S_AXI_WVALID, S_AXI_WREADY, S_AXI_BRESP, S_AXI_BVALID, S_AXI_BREADY, 
  S_AXI_ARADDR, S_AXI_ARLEN, S_AXI_ARSIZE, S_AXI_ARBURST, S_AXI_ARVALID, S_AXI_ARREADY, 
  S_AXI_RDATA, S_AXI_RRESP, S_AXI_RLAST, S_AXI_RVALID, S_AXI_RREADY, M_ABus, LMB_ReadDBus, 
  M_DBus, M_AddrStrobe, M_ReadStrobe, M_WriteStrobe, LMB_Ready, LMB_Wait, LMB_CE, LMB_UE, M_BE)
/* synthesis syn_black_box black_box_pad_pin="Rst,S_AXI_AWADDR[31:0],S_AXI_AWLEN[7:0],S_AXI_AWSIZE[2:0],S_AXI_AWBURST[1:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WLAST,S_AXI_WVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARADDR[31:0],S_AXI_ARLEN[7:0],S_AXI_ARSIZE[2:0],S_AXI_ARBURST[1:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RLAST,S_AXI_RVALID,S_AXI_RREADY,M_ABus[0:31],LMB_ReadDBus[0:31],M_DBus[0:31],M_AddrStrobe,M_ReadStrobe,M_WriteStrobe,LMB_Ready,LMB_Wait,LMB_CE,LMB_UE,M_BE[0:3]" */
/* synthesis syn_force_seq_prim="Clk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* x_interface_mode = "slave CLK.CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input Clk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* x_interface_mode = "slave RST.RESET" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input Rst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_mode = "slave S_AXI" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, READ_WRITE_MODE READ_WRITE, SUPPORTS_NARROW_BURST 1, HAS_BURST 1, HAS_LOCK 0, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]S_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]S_AXI_AWLEN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]S_AXI_AWSIZE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]S_AXI_AWBURST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input S_AXI_WLAST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]S_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]S_AXI_ARLEN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]S_AXI_ARSIZE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]S_AXI_ARBURST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output S_AXI_RLAST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB ABUS" *) (* x_interface_mode = "master LMB" *) (* x_interface_parameter = "XIL_INTERFACENAME LMB, ADDR_WIDTH 32, DATA_WIDTH 32, PROTOCOL STANDARD, READ_WRITE_MODE READ_WRITE" *) output [0:31]M_ABus;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB READDBUS" *) input [0:31]LMB_ReadDBus;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB WRITEDBUS" *) output [0:31]M_DBus;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB ADDRSTROBE" *) output M_AddrStrobe;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB READSTROBE" *) output M_ReadStrobe;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB WRITESTROBE" *) output M_WriteStrobe;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB READY" *) input LMB_Ready;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB WAIT" *) input LMB_Wait;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB CE" *) input LMB_CE;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB UE" *) input LMB_UE;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB BE" *) output [0:3]M_BE;
endmodule
