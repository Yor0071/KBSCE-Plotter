// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Thu Dec 11 10:26:39 2025
// Host        : ThinkpadP1_Liam running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/liamb/GitHub/KBSCE-Plotter/Vivado/KBSCE-Plotter.gen/sources_1/bd/RISC_V/ip/RISC_V_motor_ctrl_0_0/RISC_V_motor_ctrl_0_0_sim_netlist.v
// Design      : RISC_V_motor_ctrl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RISC_V_motor_ctrl_0_0,motor_ctrl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "motor_ctrl,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module RISC_V_motor_ctrl_0_0
   (m1_in1,
    m1_in2,
    m2_in1,
    m2_in2,
    m3_in1,
    m3_in2,
    m4_in1,
    m4_in2,
    enc_x1_a,
    enc_x1_b,
    enc_x2_a,
    enc_x2_b,
    enc_y_a,
    enc_y_b,
    enc_z_a,
    enc_z_b,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  output m1_in1;
  output m1_in2;
  output m2_in1;
  output m2_in2;
  output m3_in1;
  output m3_in2;
  output m4_in1;
  output m4_in2;
  input enc_x1_a;
  input enc_x1_b;
  input enc_x2_a;
  input enc_x2_b;
  input enc_y_a;
  input enc_y_b;
  input enc_z_a;
  input enc_z_b;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_mode = "slave S00_AXI_CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_mode = "slave S00_AXI_RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_mode = "slave S00_AXI" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [4:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  wire enc_x1_a;
  wire enc_x1_b;
  wire enc_x2_a;
  wire enc_x2_b;
  wire enc_y_a;
  wire enc_y_b;
  wire enc_z_a;
  wire enc_z_b;
  wire m1_in1;
  wire m1_in2;
  wire m2_in1;
  wire m2_in2;
  wire m3_in1;
  wire m3_in2;
  wire m4_in1;
  wire m4_in2;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  RISC_V_motor_ctrl_0_0_motor_ctrl U0
       (.axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_rvalid_reg(s00_axi_rvalid),
        .enc_x1_a(enc_x1_a),
        .enc_x1_b(enc_x1_b),
        .enc_x2_a(enc_x2_a),
        .enc_x2_b(enc_x2_b),
        .enc_y_a(enc_y_a),
        .enc_y_b(enc_y_b),
        .enc_z_a(enc_z_a),
        .enc_z_b(enc_z_b),
        .m1_in1(m1_in1),
        .m1_in2(m1_in2),
        .m2_in1(m2_in1),
        .m2_in2(m2_in2),
        .m3_in1(m3_in1),
        .m3_in2(m3_in2),
        .m4_in1(m4_in1),
        .m4_in2(m4_in2),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "MotorControl" *) 
module RISC_V_motor_ctrl_0_0_MotorControl
   (cnt_reg,
    CO,
    SR,
    s00_axi_aclk,
    DI,
    S);
  output [7:0]cnt_reg;
  output [0:0]CO;
  input [0:0]SR;
  input s00_axi_aclk;
  input [3:0]DI;
  input [3:0]S;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [3:0]S;
  wire [0:0]SR;
  wire \cnt[0]_i_2_n_0 ;
  wire [7:0]cnt_reg;
  wire \cnt_reg[0]_i_1_n_0 ;
  wire \cnt_reg[0]_i_1_n_1 ;
  wire \cnt_reg[0]_i_1_n_2 ;
  wire \cnt_reg[0]_i_1_n_3 ;
  wire \cnt_reg[0]_i_1_n_4 ;
  wire \cnt_reg[0]_i_1_n_5 ;
  wire \cnt_reg[0]_i_1_n_6 ;
  wire \cnt_reg[0]_i_1_n_7 ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_1 ;
  wire \cnt_reg[4]_i_1_n_2 ;
  wire \cnt_reg[4]_i_1_n_3 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_1 ;
  wire \cnt_reg[8]_i_1_n_2 ;
  wire \cnt_reg[8]_i_1_n_3 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire in10_carry_n_1;
  wire in10_carry_n_2;
  wire in10_carry_n_3;
  wire s00_axi_aclk;
  wire [3:3]\NLW_cnt_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_in10_carry_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_2 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_2_n_0 ));
  FDRE \cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[0] ),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_1_n_0 ,\cnt_reg[0]_i_1_n_1 ,\cnt_reg[0]_i_1_n_2 ,\cnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_1_n_4 ,\cnt_reg[0]_i_1_n_5 ,\cnt_reg[0]_i_1_n_6 ,\cnt_reg[0]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[3] ,\cnt_reg_n_0_[2] ,\cnt_reg_n_0_[1] ,\cnt[0]_i_2_n_0 }));
  FDRE \cnt_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(cnt_reg[6]),
        .R(SR));
  FDRE \cnt_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(cnt_reg[7]),
        .R(SR));
  FDRE \cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[1] ),
        .R(SR));
  FDRE \cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[2] ),
        .R(SR));
  FDRE \cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[3] ),
        .R(SR));
  FDRE \cnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(cnt_reg[0]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(\cnt_reg[0]_i_1_n_0 ),
        .CO({\cnt_reg[4]_i_1_n_0 ,\cnt_reg[4]_i_1_n_1 ,\cnt_reg[4]_i_1_n_2 ,\cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S(cnt_reg[3:0]));
  FDRE \cnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(cnt_reg[1]),
        .R(SR));
  FDRE \cnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(cnt_reg[2]),
        .R(SR));
  FDRE \cnt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(cnt_reg[3]),
        .R(SR));
  FDRE \cnt_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_7 ),
        .Q(cnt_reg[4]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[4]_i_1_n_0 ),
        .CO({\NLW_cnt_reg[8]_i_1_CO_UNCONNECTED [3],\cnt_reg[8]_i_1_n_1 ,\cnt_reg[8]_i_1_n_2 ,\cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .S(cnt_reg[7:4]));
  FDRE \cnt_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(cnt_reg[5]),
        .R(SR));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 in10_carry
       (.CI(1'b0),
        .CO({CO,in10_carry_n_1,in10_carry_n_2,in10_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_in10_carry_O_UNCONNECTED[3:0]),
        .S(S));
endmodule

(* ORIG_REF_NAME = "MotorControl" *) 
module RISC_V_motor_ctrl_0_0_MotorControl_0
   (\slv_reg1_reg[6] ,
    m2_in1,
    m2_in1_0);
  output [0:0]\slv_reg1_reg[6] ;
  input [3:0]m2_in1;
  input [3:0]m2_in1_0;

  wire in10_carry_n_1;
  wire in10_carry_n_2;
  wire in10_carry_n_3;
  wire [3:0]m2_in1;
  wire [3:0]m2_in1_0;
  wire [0:0]\slv_reg1_reg[6] ;
  wire [3:0]NLW_in10_carry_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 in10_carry
       (.CI(1'b0),
        .CO({\slv_reg1_reg[6] ,in10_carry_n_1,in10_carry_n_2,in10_carry_n_3}),
        .CYINIT(1'b0),
        .DI(m2_in1),
        .O(NLW_in10_carry_O_UNCONNECTED[3:0]),
        .S(m2_in1_0));
endmodule

(* ORIG_REF_NAME = "MotorControl" *) 
module RISC_V_motor_ctrl_0_0_MotorControl_1
   (\slv_reg2_reg[6] ,
    m3_in1,
    m3_in1_0);
  output [0:0]\slv_reg2_reg[6] ;
  input [3:0]m3_in1;
  input [3:0]m3_in1_0;

  wire in10_carry_n_1;
  wire in10_carry_n_2;
  wire in10_carry_n_3;
  wire [3:0]m3_in1;
  wire [3:0]m3_in1_0;
  wire [0:0]\slv_reg2_reg[6] ;
  wire [3:0]NLW_in10_carry_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 in10_carry
       (.CI(1'b0),
        .CO({\slv_reg2_reg[6] ,in10_carry_n_1,in10_carry_n_2,in10_carry_n_3}),
        .CYINIT(1'b0),
        .DI(m3_in1),
        .O(NLW_in10_carry_O_UNCONNECTED[3:0]),
        .S(m3_in1_0));
endmodule

(* ORIG_REF_NAME = "MotorControl" *) 
module RISC_V_motor_ctrl_0_0_MotorControl_2
   (\slv_reg3_reg[6] ,
    m4_in1,
    m4_in1_0);
  output [0:0]\slv_reg3_reg[6] ;
  input [3:0]m4_in1;
  input [3:0]m4_in1_0;

  wire in10_carry_n_1;
  wire in10_carry_n_2;
  wire in10_carry_n_3;
  wire [3:0]m4_in1;
  wire [3:0]m4_in1_0;
  wire [0:0]\slv_reg3_reg[6] ;
  wire [3:0]NLW_in10_carry_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 in10_carry
       (.CI(1'b0),
        .CO({\slv_reg3_reg[6] ,in10_carry_n_1,in10_carry_n_2,in10_carry_n_3}),
        .CYINIT(1'b0),
        .DI(m4_in1),
        .O(NLW_in10_carry_O_UNCONNECTED[3:0]),
        .S(m4_in1_0));
endmodule

(* ORIG_REF_NAME = "motor_ctrl" *) 
module RISC_V_motor_ctrl_0_0_motor_ctrl
   (axi_awready_reg,
    axi_arready_reg,
    axi_rvalid_reg,
    s00_axi_bvalid,
    m1_in1,
    m1_in2,
    m2_in1,
    m2_in2,
    m3_in1,
    m3_in2,
    m4_in1,
    m4_in2,
    s00_axi_rdata,
    s00_axi_wready,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_aresetn,
    s00_axi_wdata,
    s00_axi_araddr,
    enc_x1_a,
    enc_x1_b,
    enc_x2_a,
    enc_x2_b,
    enc_y_a,
    enc_y_b,
    enc_z_a,
    enc_z_b,
    s00_axi_bready,
    s00_axi_wstrb);
  output axi_awready_reg;
  output axi_arready_reg;
  output axi_rvalid_reg;
  output s00_axi_bvalid;
  output m1_in1;
  output m1_in2;
  output m2_in1;
  output m2_in2;
  output m3_in1;
  output m3_in2;
  output m4_in1;
  output m4_in2;
  output [31:0]s00_axi_rdata;
  output s00_axi_wready;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [2:0]s00_axi_awaddr;
  input s00_axi_aresetn;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input enc_x1_a;
  input enc_x1_b;
  input enc_x2_a;
  input enc_x2_b;
  input enc_y_a;
  input enc_y_b;
  input enc_z_a;
  input enc_z_b;
  input s00_axi_bready;
  input [3:0]s00_axi_wstrb;

  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_rvalid_reg;
  wire [11:4]cnt_reg;
  wire enc_x1_a;
  wire enc_x1_b;
  wire enc_x2_a;
  wire enc_x2_b;
  wire enc_y_a;
  wire enc_y_b;
  wire enc_z_a;
  wire enc_z_b;
  wire m1_in1;
  wire m1_in2;
  wire m2_in1;
  wire m2_in2;
  wire m3_in1;
  wire m3_in2;
  wire m4_in1;
  wire m4_in2;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_15;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_16;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_17;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_18;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_19;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_20;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_21;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_22;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_23;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_24;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_25;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_26;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_27;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_28;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_29;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_30;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_31;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_32;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_33;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_34;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_35;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_36;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_37;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_38;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_39;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_40;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_41;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_42;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_43;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_44;
  wire motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_45;
  wire [3:0]p_0_in;
  wire pwm;
  wire pwm_0;
  wire pwm_1;
  wire pwm_2;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [1:0]x1_a_sync;
  wire [1:0]x1_b_sync;
  wire \x1_count[0]_i_1_n_0 ;
  wire \x1_count[0]_i_3_n_0 ;
  wire \x1_count[0]_i_4_n_0 ;
  wire \x1_count[0]_i_5_n_0 ;
  wire \x1_count[0]_i_6_n_0 ;
  wire \x1_count[12]_i_2_n_0 ;
  wire \x1_count[12]_i_3_n_0 ;
  wire \x1_count[12]_i_4_n_0 ;
  wire \x1_count[12]_i_5_n_0 ;
  wire \x1_count[16]_i_2_n_0 ;
  wire \x1_count[16]_i_3_n_0 ;
  wire \x1_count[16]_i_4_n_0 ;
  wire \x1_count[16]_i_5_n_0 ;
  wire \x1_count[20]_i_2_n_0 ;
  wire \x1_count[20]_i_3_n_0 ;
  wire \x1_count[20]_i_4_n_0 ;
  wire \x1_count[20]_i_5_n_0 ;
  wire \x1_count[24]_i_2_n_0 ;
  wire \x1_count[24]_i_3_n_0 ;
  wire \x1_count[24]_i_4_n_0 ;
  wire \x1_count[24]_i_5_n_0 ;
  wire \x1_count[28]_i_2_n_0 ;
  wire \x1_count[28]_i_3_n_0 ;
  wire \x1_count[28]_i_4_n_0 ;
  wire \x1_count[28]_i_5_n_0 ;
  wire \x1_count[4]_i_2_n_0 ;
  wire \x1_count[4]_i_3_n_0 ;
  wire \x1_count[4]_i_4_n_0 ;
  wire \x1_count[4]_i_5_n_0 ;
  wire \x1_count[8]_i_2_n_0 ;
  wire \x1_count[8]_i_3_n_0 ;
  wire \x1_count[8]_i_4_n_0 ;
  wire \x1_count[8]_i_5_n_0 ;
  wire [31:0]x1_count_reg;
  wire \x1_count_reg[0]_i_2_n_0 ;
  wire \x1_count_reg[0]_i_2_n_1 ;
  wire \x1_count_reg[0]_i_2_n_2 ;
  wire \x1_count_reg[0]_i_2_n_3 ;
  wire \x1_count_reg[0]_i_2_n_4 ;
  wire \x1_count_reg[0]_i_2_n_5 ;
  wire \x1_count_reg[0]_i_2_n_6 ;
  wire \x1_count_reg[0]_i_2_n_7 ;
  wire \x1_count_reg[12]_i_1_n_0 ;
  wire \x1_count_reg[12]_i_1_n_1 ;
  wire \x1_count_reg[12]_i_1_n_2 ;
  wire \x1_count_reg[12]_i_1_n_3 ;
  wire \x1_count_reg[12]_i_1_n_4 ;
  wire \x1_count_reg[12]_i_1_n_5 ;
  wire \x1_count_reg[12]_i_1_n_6 ;
  wire \x1_count_reg[12]_i_1_n_7 ;
  wire \x1_count_reg[16]_i_1_n_0 ;
  wire \x1_count_reg[16]_i_1_n_1 ;
  wire \x1_count_reg[16]_i_1_n_2 ;
  wire \x1_count_reg[16]_i_1_n_3 ;
  wire \x1_count_reg[16]_i_1_n_4 ;
  wire \x1_count_reg[16]_i_1_n_5 ;
  wire \x1_count_reg[16]_i_1_n_6 ;
  wire \x1_count_reg[16]_i_1_n_7 ;
  wire \x1_count_reg[20]_i_1_n_0 ;
  wire \x1_count_reg[20]_i_1_n_1 ;
  wire \x1_count_reg[20]_i_1_n_2 ;
  wire \x1_count_reg[20]_i_1_n_3 ;
  wire \x1_count_reg[20]_i_1_n_4 ;
  wire \x1_count_reg[20]_i_1_n_5 ;
  wire \x1_count_reg[20]_i_1_n_6 ;
  wire \x1_count_reg[20]_i_1_n_7 ;
  wire \x1_count_reg[24]_i_1_n_0 ;
  wire \x1_count_reg[24]_i_1_n_1 ;
  wire \x1_count_reg[24]_i_1_n_2 ;
  wire \x1_count_reg[24]_i_1_n_3 ;
  wire \x1_count_reg[24]_i_1_n_4 ;
  wire \x1_count_reg[24]_i_1_n_5 ;
  wire \x1_count_reg[24]_i_1_n_6 ;
  wire \x1_count_reg[24]_i_1_n_7 ;
  wire \x1_count_reg[28]_i_1_n_1 ;
  wire \x1_count_reg[28]_i_1_n_2 ;
  wire \x1_count_reg[28]_i_1_n_3 ;
  wire \x1_count_reg[28]_i_1_n_4 ;
  wire \x1_count_reg[28]_i_1_n_5 ;
  wire \x1_count_reg[28]_i_1_n_6 ;
  wire \x1_count_reg[28]_i_1_n_7 ;
  wire \x1_count_reg[4]_i_1_n_0 ;
  wire \x1_count_reg[4]_i_1_n_1 ;
  wire \x1_count_reg[4]_i_1_n_2 ;
  wire \x1_count_reg[4]_i_1_n_3 ;
  wire \x1_count_reg[4]_i_1_n_4 ;
  wire \x1_count_reg[4]_i_1_n_5 ;
  wire \x1_count_reg[4]_i_1_n_6 ;
  wire \x1_count_reg[4]_i_1_n_7 ;
  wire \x1_count_reg[8]_i_1_n_0 ;
  wire \x1_count_reg[8]_i_1_n_1 ;
  wire \x1_count_reg[8]_i_1_n_2 ;
  wire \x1_count_reg[8]_i_1_n_3 ;
  wire \x1_count_reg[8]_i_1_n_4 ;
  wire \x1_count_reg[8]_i_1_n_5 ;
  wire \x1_count_reg[8]_i_1_n_6 ;
  wire \x1_count_reg[8]_i_1_n_7 ;
  wire [1:0]x2_a_sync;
  wire [1:0]x2_b_sync;
  wire \x2_count[0]_i_1_n_0 ;
  wire \x2_count[0]_i_3_n_0 ;
  wire \x2_count[0]_i_4_n_0 ;
  wire \x2_count[0]_i_5_n_0 ;
  wire \x2_count[0]_i_6_n_0 ;
  wire \x2_count[12]_i_2_n_0 ;
  wire \x2_count[12]_i_3_n_0 ;
  wire \x2_count[12]_i_4_n_0 ;
  wire \x2_count[12]_i_5_n_0 ;
  wire \x2_count[16]_i_2_n_0 ;
  wire \x2_count[16]_i_3_n_0 ;
  wire \x2_count[16]_i_4_n_0 ;
  wire \x2_count[16]_i_5_n_0 ;
  wire \x2_count[20]_i_2_n_0 ;
  wire \x2_count[20]_i_3_n_0 ;
  wire \x2_count[20]_i_4_n_0 ;
  wire \x2_count[20]_i_5_n_0 ;
  wire \x2_count[24]_i_2_n_0 ;
  wire \x2_count[24]_i_3_n_0 ;
  wire \x2_count[24]_i_4_n_0 ;
  wire \x2_count[24]_i_5_n_0 ;
  wire \x2_count[28]_i_2_n_0 ;
  wire \x2_count[28]_i_3_n_0 ;
  wire \x2_count[28]_i_4_n_0 ;
  wire \x2_count[28]_i_5_n_0 ;
  wire \x2_count[4]_i_2_n_0 ;
  wire \x2_count[4]_i_3_n_0 ;
  wire \x2_count[4]_i_4_n_0 ;
  wire \x2_count[4]_i_5_n_0 ;
  wire \x2_count[8]_i_2_n_0 ;
  wire \x2_count[8]_i_3_n_0 ;
  wire \x2_count[8]_i_4_n_0 ;
  wire \x2_count[8]_i_5_n_0 ;
  wire [31:0]x2_count_reg;
  wire \x2_count_reg[0]_i_2_n_0 ;
  wire \x2_count_reg[0]_i_2_n_1 ;
  wire \x2_count_reg[0]_i_2_n_2 ;
  wire \x2_count_reg[0]_i_2_n_3 ;
  wire \x2_count_reg[0]_i_2_n_4 ;
  wire \x2_count_reg[0]_i_2_n_5 ;
  wire \x2_count_reg[0]_i_2_n_6 ;
  wire \x2_count_reg[0]_i_2_n_7 ;
  wire \x2_count_reg[12]_i_1_n_0 ;
  wire \x2_count_reg[12]_i_1_n_1 ;
  wire \x2_count_reg[12]_i_1_n_2 ;
  wire \x2_count_reg[12]_i_1_n_3 ;
  wire \x2_count_reg[12]_i_1_n_4 ;
  wire \x2_count_reg[12]_i_1_n_5 ;
  wire \x2_count_reg[12]_i_1_n_6 ;
  wire \x2_count_reg[12]_i_1_n_7 ;
  wire \x2_count_reg[16]_i_1_n_0 ;
  wire \x2_count_reg[16]_i_1_n_1 ;
  wire \x2_count_reg[16]_i_1_n_2 ;
  wire \x2_count_reg[16]_i_1_n_3 ;
  wire \x2_count_reg[16]_i_1_n_4 ;
  wire \x2_count_reg[16]_i_1_n_5 ;
  wire \x2_count_reg[16]_i_1_n_6 ;
  wire \x2_count_reg[16]_i_1_n_7 ;
  wire \x2_count_reg[20]_i_1_n_0 ;
  wire \x2_count_reg[20]_i_1_n_1 ;
  wire \x2_count_reg[20]_i_1_n_2 ;
  wire \x2_count_reg[20]_i_1_n_3 ;
  wire \x2_count_reg[20]_i_1_n_4 ;
  wire \x2_count_reg[20]_i_1_n_5 ;
  wire \x2_count_reg[20]_i_1_n_6 ;
  wire \x2_count_reg[20]_i_1_n_7 ;
  wire \x2_count_reg[24]_i_1_n_0 ;
  wire \x2_count_reg[24]_i_1_n_1 ;
  wire \x2_count_reg[24]_i_1_n_2 ;
  wire \x2_count_reg[24]_i_1_n_3 ;
  wire \x2_count_reg[24]_i_1_n_4 ;
  wire \x2_count_reg[24]_i_1_n_5 ;
  wire \x2_count_reg[24]_i_1_n_6 ;
  wire \x2_count_reg[24]_i_1_n_7 ;
  wire \x2_count_reg[28]_i_1_n_1 ;
  wire \x2_count_reg[28]_i_1_n_2 ;
  wire \x2_count_reg[28]_i_1_n_3 ;
  wire \x2_count_reg[28]_i_1_n_4 ;
  wire \x2_count_reg[28]_i_1_n_5 ;
  wire \x2_count_reg[28]_i_1_n_6 ;
  wire \x2_count_reg[28]_i_1_n_7 ;
  wire \x2_count_reg[4]_i_1_n_0 ;
  wire \x2_count_reg[4]_i_1_n_1 ;
  wire \x2_count_reg[4]_i_1_n_2 ;
  wire \x2_count_reg[4]_i_1_n_3 ;
  wire \x2_count_reg[4]_i_1_n_4 ;
  wire \x2_count_reg[4]_i_1_n_5 ;
  wire \x2_count_reg[4]_i_1_n_6 ;
  wire \x2_count_reg[4]_i_1_n_7 ;
  wire \x2_count_reg[8]_i_1_n_0 ;
  wire \x2_count_reg[8]_i_1_n_1 ;
  wire \x2_count_reg[8]_i_1_n_2 ;
  wire \x2_count_reg[8]_i_1_n_3 ;
  wire \x2_count_reg[8]_i_1_n_4 ;
  wire \x2_count_reg[8]_i_1_n_5 ;
  wire \x2_count_reg[8]_i_1_n_6 ;
  wire \x2_count_reg[8]_i_1_n_7 ;
  wire [1:0]x2_state;
  wire [1:0]x2_state_p;
  wire [1:0]y_a_sync;
  wire [1:0]y_b_sync;
  wire \y_count[0]_i_1_n_0 ;
  wire \y_count[0]_i_3_n_0 ;
  wire \y_count[0]_i_4_n_0 ;
  wire \y_count[0]_i_5_n_0 ;
  wire \y_count[0]_i_6_n_0 ;
  wire \y_count[12]_i_2_n_0 ;
  wire \y_count[12]_i_3_n_0 ;
  wire \y_count[12]_i_4_n_0 ;
  wire \y_count[12]_i_5_n_0 ;
  wire \y_count[16]_i_2_n_0 ;
  wire \y_count[16]_i_3_n_0 ;
  wire \y_count[16]_i_4_n_0 ;
  wire \y_count[16]_i_5_n_0 ;
  wire \y_count[20]_i_2_n_0 ;
  wire \y_count[20]_i_3_n_0 ;
  wire \y_count[20]_i_4_n_0 ;
  wire \y_count[20]_i_5_n_0 ;
  wire \y_count[24]_i_2_n_0 ;
  wire \y_count[24]_i_3_n_0 ;
  wire \y_count[24]_i_4_n_0 ;
  wire \y_count[24]_i_5_n_0 ;
  wire \y_count[28]_i_2_n_0 ;
  wire \y_count[28]_i_3_n_0 ;
  wire \y_count[28]_i_4_n_0 ;
  wire \y_count[28]_i_5_n_0 ;
  wire \y_count[4]_i_2_n_0 ;
  wire \y_count[4]_i_3_n_0 ;
  wire \y_count[4]_i_4_n_0 ;
  wire \y_count[4]_i_5_n_0 ;
  wire \y_count[8]_i_2_n_0 ;
  wire \y_count[8]_i_3_n_0 ;
  wire \y_count[8]_i_4_n_0 ;
  wire \y_count[8]_i_5_n_0 ;
  wire [31:0]y_count_reg;
  wire \y_count_reg[0]_i_2_n_0 ;
  wire \y_count_reg[0]_i_2_n_1 ;
  wire \y_count_reg[0]_i_2_n_2 ;
  wire \y_count_reg[0]_i_2_n_3 ;
  wire \y_count_reg[0]_i_2_n_4 ;
  wire \y_count_reg[0]_i_2_n_5 ;
  wire \y_count_reg[0]_i_2_n_6 ;
  wire \y_count_reg[0]_i_2_n_7 ;
  wire \y_count_reg[12]_i_1_n_0 ;
  wire \y_count_reg[12]_i_1_n_1 ;
  wire \y_count_reg[12]_i_1_n_2 ;
  wire \y_count_reg[12]_i_1_n_3 ;
  wire \y_count_reg[12]_i_1_n_4 ;
  wire \y_count_reg[12]_i_1_n_5 ;
  wire \y_count_reg[12]_i_1_n_6 ;
  wire \y_count_reg[12]_i_1_n_7 ;
  wire \y_count_reg[16]_i_1_n_0 ;
  wire \y_count_reg[16]_i_1_n_1 ;
  wire \y_count_reg[16]_i_1_n_2 ;
  wire \y_count_reg[16]_i_1_n_3 ;
  wire \y_count_reg[16]_i_1_n_4 ;
  wire \y_count_reg[16]_i_1_n_5 ;
  wire \y_count_reg[16]_i_1_n_6 ;
  wire \y_count_reg[16]_i_1_n_7 ;
  wire \y_count_reg[20]_i_1_n_0 ;
  wire \y_count_reg[20]_i_1_n_1 ;
  wire \y_count_reg[20]_i_1_n_2 ;
  wire \y_count_reg[20]_i_1_n_3 ;
  wire \y_count_reg[20]_i_1_n_4 ;
  wire \y_count_reg[20]_i_1_n_5 ;
  wire \y_count_reg[20]_i_1_n_6 ;
  wire \y_count_reg[20]_i_1_n_7 ;
  wire \y_count_reg[24]_i_1_n_0 ;
  wire \y_count_reg[24]_i_1_n_1 ;
  wire \y_count_reg[24]_i_1_n_2 ;
  wire \y_count_reg[24]_i_1_n_3 ;
  wire \y_count_reg[24]_i_1_n_4 ;
  wire \y_count_reg[24]_i_1_n_5 ;
  wire \y_count_reg[24]_i_1_n_6 ;
  wire \y_count_reg[24]_i_1_n_7 ;
  wire \y_count_reg[28]_i_1_n_1 ;
  wire \y_count_reg[28]_i_1_n_2 ;
  wire \y_count_reg[28]_i_1_n_3 ;
  wire \y_count_reg[28]_i_1_n_4 ;
  wire \y_count_reg[28]_i_1_n_5 ;
  wire \y_count_reg[28]_i_1_n_6 ;
  wire \y_count_reg[28]_i_1_n_7 ;
  wire \y_count_reg[4]_i_1_n_0 ;
  wire \y_count_reg[4]_i_1_n_1 ;
  wire \y_count_reg[4]_i_1_n_2 ;
  wire \y_count_reg[4]_i_1_n_3 ;
  wire \y_count_reg[4]_i_1_n_4 ;
  wire \y_count_reg[4]_i_1_n_5 ;
  wire \y_count_reg[4]_i_1_n_6 ;
  wire \y_count_reg[4]_i_1_n_7 ;
  wire \y_count_reg[8]_i_1_n_0 ;
  wire \y_count_reg[8]_i_1_n_1 ;
  wire \y_count_reg[8]_i_1_n_2 ;
  wire \y_count_reg[8]_i_1_n_3 ;
  wire \y_count_reg[8]_i_1_n_4 ;
  wire \y_count_reg[8]_i_1_n_5 ;
  wire \y_count_reg[8]_i_1_n_6 ;
  wire \y_count_reg[8]_i_1_n_7 ;
  wire [1:0]y_state;
  wire [1:0]y_state_p;
  wire [1:0]z_a_sync;
  wire [1:0]z_b_sync;
  wire \z_count[0]_i_1_n_0 ;
  wire \z_count[0]_i_3_n_0 ;
  wire \z_count[0]_i_4_n_0 ;
  wire \z_count[0]_i_5_n_0 ;
  wire \z_count[0]_i_6_n_0 ;
  wire \z_count[12]_i_2_n_0 ;
  wire \z_count[12]_i_3_n_0 ;
  wire \z_count[12]_i_4_n_0 ;
  wire \z_count[12]_i_5_n_0 ;
  wire \z_count[16]_i_2_n_0 ;
  wire \z_count[16]_i_3_n_0 ;
  wire \z_count[16]_i_4_n_0 ;
  wire \z_count[16]_i_5_n_0 ;
  wire \z_count[20]_i_2_n_0 ;
  wire \z_count[20]_i_3_n_0 ;
  wire \z_count[20]_i_4_n_0 ;
  wire \z_count[20]_i_5_n_0 ;
  wire \z_count[24]_i_2_n_0 ;
  wire \z_count[24]_i_3_n_0 ;
  wire \z_count[24]_i_4_n_0 ;
  wire \z_count[24]_i_5_n_0 ;
  wire \z_count[28]_i_2_n_0 ;
  wire \z_count[28]_i_3_n_0 ;
  wire \z_count[28]_i_4_n_0 ;
  wire \z_count[28]_i_5_n_0 ;
  wire \z_count[4]_i_2_n_0 ;
  wire \z_count[4]_i_3_n_0 ;
  wire \z_count[4]_i_4_n_0 ;
  wire \z_count[4]_i_5_n_0 ;
  wire \z_count[8]_i_2_n_0 ;
  wire \z_count[8]_i_3_n_0 ;
  wire \z_count[8]_i_4_n_0 ;
  wire \z_count[8]_i_5_n_0 ;
  wire [31:0]z_count_reg;
  wire \z_count_reg[0]_i_2_n_0 ;
  wire \z_count_reg[0]_i_2_n_1 ;
  wire \z_count_reg[0]_i_2_n_2 ;
  wire \z_count_reg[0]_i_2_n_3 ;
  wire \z_count_reg[0]_i_2_n_4 ;
  wire \z_count_reg[0]_i_2_n_5 ;
  wire \z_count_reg[0]_i_2_n_6 ;
  wire \z_count_reg[0]_i_2_n_7 ;
  wire \z_count_reg[12]_i_1_n_0 ;
  wire \z_count_reg[12]_i_1_n_1 ;
  wire \z_count_reg[12]_i_1_n_2 ;
  wire \z_count_reg[12]_i_1_n_3 ;
  wire \z_count_reg[12]_i_1_n_4 ;
  wire \z_count_reg[12]_i_1_n_5 ;
  wire \z_count_reg[12]_i_1_n_6 ;
  wire \z_count_reg[12]_i_1_n_7 ;
  wire \z_count_reg[16]_i_1_n_0 ;
  wire \z_count_reg[16]_i_1_n_1 ;
  wire \z_count_reg[16]_i_1_n_2 ;
  wire \z_count_reg[16]_i_1_n_3 ;
  wire \z_count_reg[16]_i_1_n_4 ;
  wire \z_count_reg[16]_i_1_n_5 ;
  wire \z_count_reg[16]_i_1_n_6 ;
  wire \z_count_reg[16]_i_1_n_7 ;
  wire \z_count_reg[20]_i_1_n_0 ;
  wire \z_count_reg[20]_i_1_n_1 ;
  wire \z_count_reg[20]_i_1_n_2 ;
  wire \z_count_reg[20]_i_1_n_3 ;
  wire \z_count_reg[20]_i_1_n_4 ;
  wire \z_count_reg[20]_i_1_n_5 ;
  wire \z_count_reg[20]_i_1_n_6 ;
  wire \z_count_reg[20]_i_1_n_7 ;
  wire \z_count_reg[24]_i_1_n_0 ;
  wire \z_count_reg[24]_i_1_n_1 ;
  wire \z_count_reg[24]_i_1_n_2 ;
  wire \z_count_reg[24]_i_1_n_3 ;
  wire \z_count_reg[24]_i_1_n_4 ;
  wire \z_count_reg[24]_i_1_n_5 ;
  wire \z_count_reg[24]_i_1_n_6 ;
  wire \z_count_reg[24]_i_1_n_7 ;
  wire \z_count_reg[28]_i_1_n_1 ;
  wire \z_count_reg[28]_i_1_n_2 ;
  wire \z_count_reg[28]_i_1_n_3 ;
  wire \z_count_reg[28]_i_1_n_4 ;
  wire \z_count_reg[28]_i_1_n_5 ;
  wire \z_count_reg[28]_i_1_n_6 ;
  wire \z_count_reg[28]_i_1_n_7 ;
  wire \z_count_reg[4]_i_1_n_0 ;
  wire \z_count_reg[4]_i_1_n_1 ;
  wire \z_count_reg[4]_i_1_n_2 ;
  wire \z_count_reg[4]_i_1_n_3 ;
  wire \z_count_reg[4]_i_1_n_4 ;
  wire \z_count_reg[4]_i_1_n_5 ;
  wire \z_count_reg[4]_i_1_n_6 ;
  wire \z_count_reg[4]_i_1_n_7 ;
  wire \z_count_reg[8]_i_1_n_0 ;
  wire \z_count_reg[8]_i_1_n_1 ;
  wire \z_count_reg[8]_i_1_n_2 ;
  wire \z_count_reg[8]_i_1_n_3 ;
  wire \z_count_reg[8]_i_1_n_4 ;
  wire \z_count_reg[8]_i_1_n_5 ;
  wire \z_count_reg[8]_i_1_n_6 ;
  wire \z_count_reg[8]_i_1_n_7 ;
  wire [1:0]z_state;
  wire [1:0]z_state_p;
  wire [3:3]\NLW_x1_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_x2_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_y_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_z_count_reg[28]_i_1_CO_UNCONNECTED ;

  RISC_V_motor_ctrl_0_0_motor_ctrl_slave_lite_v1_0_S00_AXI motor_ctrl_slave_lite_v1_0_S00_AXI_inst
       (.CO(pwm),
        .DI({motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_18,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_19,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_20,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_21}),
        .S({motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_15,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_16,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_17}),
        .SR(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .cnt_reg(cnt_reg),
        .m1_in1(m1_in1),
        .m1_in2(m1_in2),
        .m2_in1(m2_in1),
        .m2_in1_0(pwm_0),
        .m2_in2(m2_in2),
        .m3_in1(m3_in1),
        .m3_in1_0(pwm_1),
        .m3_in2(m3_in2),
        .m4_in1(m4_in1),
        .m4_in1_0(pwm_2),
        .m4_in2(m4_in2),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\slv_reg1_reg[6]_0 ({motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_22,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_23,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_24,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_25}),
        .\slv_reg1_reg[6]_1 ({motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_26,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_27,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_28,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_29}),
        .\slv_reg2_reg[6]_0 ({motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_30,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_31,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_32,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_33}),
        .\slv_reg2_reg[6]_1 ({motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_34,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_35,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_36,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_37}),
        .\slv_reg3_reg[6]_0 ({motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_38,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_39,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_40,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_41}),
        .\slv_reg3_reg[6]_1 ({motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_42,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_43,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_44,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_45}),
        .x1_count_reg(x1_count_reg),
        .x2_count_reg(x2_count_reg),
        .y_count_reg(y_count_reg),
        .z_count_reg(z_count_reg));
  RISC_V_motor_ctrl_0_0_MotorControl u_m1
       (.CO(pwm),
        .DI({motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_18,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_19,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_20,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_21}),
        .S({motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_15,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_16,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_17}),
        .SR(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1),
        .cnt_reg(cnt_reg),
        .s00_axi_aclk(s00_axi_aclk));
  RISC_V_motor_ctrl_0_0_MotorControl_0 u_m2
       (.m2_in1({motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_26,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_27,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_28,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_29}),
        .m2_in1_0({motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_22,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_23,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_24,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_25}),
        .\slv_reg1_reg[6] (pwm_0));
  RISC_V_motor_ctrl_0_0_MotorControl_1 u_m3
       (.m3_in1({motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_34,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_35,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_36,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_37}),
        .m3_in1_0({motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_30,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_31,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_32,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_33}),
        .\slv_reg2_reg[6] (pwm_1));
  RISC_V_motor_ctrl_0_0_MotorControl_2 u_m4
       (.m4_in1({motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_42,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_43,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_44,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_45}),
        .m4_in1_0({motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_38,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_39,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_40,motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_41}),
        .\slv_reg3_reg[6] (pwm_2));
  FDRE \x1_a_sync_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(enc_x1_a),
        .Q(x1_a_sync[0]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_a_sync_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(x1_a_sync[0]),
        .Q(x1_a_sync[1]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_b_sync_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(enc_x1_b),
        .Q(x1_b_sync[0]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_b_sync_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(x1_b_sync[0]),
        .Q(x1_b_sync[1]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  LUT4 #(
    .INIT(16'h6996)) 
    \x1_count[0]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .O(\x1_count[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[0]_i_3 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[3]),
        .O(\x1_count[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[0]_i_4 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[2]),
        .O(\x1_count[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[0]_i_5 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[1]),
        .O(\x1_count[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x1_count[0]_i_6 
       (.I0(x1_count_reg[0]),
        .O(\x1_count[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[12]_i_2 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[15]),
        .O(\x1_count[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[12]_i_3 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[14]),
        .O(\x1_count[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[12]_i_4 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[13]),
        .O(\x1_count[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[12]_i_5 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[12]),
        .O(\x1_count[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[16]_i_2 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[19]),
        .O(\x1_count[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[16]_i_3 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[18]),
        .O(\x1_count[16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[16]_i_4 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[17]),
        .O(\x1_count[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[16]_i_5 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[16]),
        .O(\x1_count[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[20]_i_2 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[23]),
        .O(\x1_count[20]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[20]_i_3 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[22]),
        .O(\x1_count[20]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[20]_i_4 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[21]),
        .O(\x1_count[20]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[20]_i_5 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[20]),
        .O(\x1_count[20]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[24]_i_2 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[27]),
        .O(\x1_count[24]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[24]_i_3 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[26]),
        .O(\x1_count[24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[24]_i_4 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[25]),
        .O(\x1_count[24]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[24]_i_5 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[24]),
        .O(\x1_count[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[28]_i_2 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[31]),
        .O(\x1_count[28]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[28]_i_3 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[30]),
        .O(\x1_count[28]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[28]_i_4 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[29]),
        .O(\x1_count[28]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[28]_i_5 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[28]),
        .O(\x1_count[28]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[4]_i_2 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[7]),
        .O(\x1_count[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[4]_i_3 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[6]),
        .O(\x1_count[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[4]_i_4 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[5]),
        .O(\x1_count[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[4]_i_5 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[4]),
        .O(\x1_count[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[8]_i_2 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[11]),
        .O(\x1_count[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[8]_i_3 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[10]),
        .O(\x1_count[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[8]_i_4 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[9]),
        .O(\x1_count[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x1_count[8]_i_5 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(x1_count_reg[8]),
        .O(\x1_count[8]_i_5_n_0 ));
  FDRE \x1_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[0]_i_2_n_7 ),
        .Q(x1_count_reg[0]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \x1_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\x1_count_reg[0]_i_2_n_0 ,\x1_count_reg[0]_i_2_n_1 ,\x1_count_reg[0]_i_2_n_2 ,\x1_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({x1_count_reg[3:1],1'b1}),
        .O({\x1_count_reg[0]_i_2_n_4 ,\x1_count_reg[0]_i_2_n_5 ,\x1_count_reg[0]_i_2_n_6 ,\x1_count_reg[0]_i_2_n_7 }),
        .S({\x1_count[0]_i_3_n_0 ,\x1_count[0]_i_4_n_0 ,\x1_count[0]_i_5_n_0 ,\x1_count[0]_i_6_n_0 }));
  FDRE \x1_count_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[8]_i_1_n_5 ),
        .Q(x1_count_reg[10]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_count_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[8]_i_1_n_4 ),
        .Q(x1_count_reg[11]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_count_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[12]_i_1_n_7 ),
        .Q(x1_count_reg[12]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \x1_count_reg[12]_i_1 
       (.CI(\x1_count_reg[8]_i_1_n_0 ),
        .CO({\x1_count_reg[12]_i_1_n_0 ,\x1_count_reg[12]_i_1_n_1 ,\x1_count_reg[12]_i_1_n_2 ,\x1_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(x1_count_reg[15:12]),
        .O({\x1_count_reg[12]_i_1_n_4 ,\x1_count_reg[12]_i_1_n_5 ,\x1_count_reg[12]_i_1_n_6 ,\x1_count_reg[12]_i_1_n_7 }),
        .S({\x1_count[12]_i_2_n_0 ,\x1_count[12]_i_3_n_0 ,\x1_count[12]_i_4_n_0 ,\x1_count[12]_i_5_n_0 }));
  FDRE \x1_count_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[12]_i_1_n_6 ),
        .Q(x1_count_reg[13]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_count_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[12]_i_1_n_5 ),
        .Q(x1_count_reg[14]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_count_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[12]_i_1_n_4 ),
        .Q(x1_count_reg[15]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_count_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[16]_i_1_n_7 ),
        .Q(x1_count_reg[16]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \x1_count_reg[16]_i_1 
       (.CI(\x1_count_reg[12]_i_1_n_0 ),
        .CO({\x1_count_reg[16]_i_1_n_0 ,\x1_count_reg[16]_i_1_n_1 ,\x1_count_reg[16]_i_1_n_2 ,\x1_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(x1_count_reg[19:16]),
        .O({\x1_count_reg[16]_i_1_n_4 ,\x1_count_reg[16]_i_1_n_5 ,\x1_count_reg[16]_i_1_n_6 ,\x1_count_reg[16]_i_1_n_7 }),
        .S({\x1_count[16]_i_2_n_0 ,\x1_count[16]_i_3_n_0 ,\x1_count[16]_i_4_n_0 ,\x1_count[16]_i_5_n_0 }));
  FDRE \x1_count_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[16]_i_1_n_6 ),
        .Q(x1_count_reg[17]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_count_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[16]_i_1_n_5 ),
        .Q(x1_count_reg[18]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_count_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[16]_i_1_n_4 ),
        .Q(x1_count_reg[19]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[0]_i_2_n_6 ),
        .Q(x1_count_reg[1]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_count_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[20]_i_1_n_7 ),
        .Q(x1_count_reg[20]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \x1_count_reg[20]_i_1 
       (.CI(\x1_count_reg[16]_i_1_n_0 ),
        .CO({\x1_count_reg[20]_i_1_n_0 ,\x1_count_reg[20]_i_1_n_1 ,\x1_count_reg[20]_i_1_n_2 ,\x1_count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(x1_count_reg[23:20]),
        .O({\x1_count_reg[20]_i_1_n_4 ,\x1_count_reg[20]_i_1_n_5 ,\x1_count_reg[20]_i_1_n_6 ,\x1_count_reg[20]_i_1_n_7 }),
        .S({\x1_count[20]_i_2_n_0 ,\x1_count[20]_i_3_n_0 ,\x1_count[20]_i_4_n_0 ,\x1_count[20]_i_5_n_0 }));
  FDRE \x1_count_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[20]_i_1_n_6 ),
        .Q(x1_count_reg[21]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_count_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[20]_i_1_n_5 ),
        .Q(x1_count_reg[22]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_count_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[20]_i_1_n_4 ),
        .Q(x1_count_reg[23]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_count_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[24]_i_1_n_7 ),
        .Q(x1_count_reg[24]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \x1_count_reg[24]_i_1 
       (.CI(\x1_count_reg[20]_i_1_n_0 ),
        .CO({\x1_count_reg[24]_i_1_n_0 ,\x1_count_reg[24]_i_1_n_1 ,\x1_count_reg[24]_i_1_n_2 ,\x1_count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(x1_count_reg[27:24]),
        .O({\x1_count_reg[24]_i_1_n_4 ,\x1_count_reg[24]_i_1_n_5 ,\x1_count_reg[24]_i_1_n_6 ,\x1_count_reg[24]_i_1_n_7 }),
        .S({\x1_count[24]_i_2_n_0 ,\x1_count[24]_i_3_n_0 ,\x1_count[24]_i_4_n_0 ,\x1_count[24]_i_5_n_0 }));
  FDRE \x1_count_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[24]_i_1_n_6 ),
        .Q(x1_count_reg[25]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_count_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[24]_i_1_n_5 ),
        .Q(x1_count_reg[26]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_count_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[24]_i_1_n_4 ),
        .Q(x1_count_reg[27]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_count_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[28]_i_1_n_7 ),
        .Q(x1_count_reg[28]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \x1_count_reg[28]_i_1 
       (.CI(\x1_count_reg[24]_i_1_n_0 ),
        .CO({\NLW_x1_count_reg[28]_i_1_CO_UNCONNECTED [3],\x1_count_reg[28]_i_1_n_1 ,\x1_count_reg[28]_i_1_n_2 ,\x1_count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,x1_count_reg[30:28]}),
        .O({\x1_count_reg[28]_i_1_n_4 ,\x1_count_reg[28]_i_1_n_5 ,\x1_count_reg[28]_i_1_n_6 ,\x1_count_reg[28]_i_1_n_7 }),
        .S({\x1_count[28]_i_2_n_0 ,\x1_count[28]_i_3_n_0 ,\x1_count[28]_i_4_n_0 ,\x1_count[28]_i_5_n_0 }));
  FDRE \x1_count_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[28]_i_1_n_6 ),
        .Q(x1_count_reg[29]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[0]_i_2_n_5 ),
        .Q(x1_count_reg[2]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_count_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[28]_i_1_n_5 ),
        .Q(x1_count_reg[30]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_count_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[28]_i_1_n_4 ),
        .Q(x1_count_reg[31]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[0]_i_2_n_4 ),
        .Q(x1_count_reg[3]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[4]_i_1_n_7 ),
        .Q(x1_count_reg[4]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \x1_count_reg[4]_i_1 
       (.CI(\x1_count_reg[0]_i_2_n_0 ),
        .CO({\x1_count_reg[4]_i_1_n_0 ,\x1_count_reg[4]_i_1_n_1 ,\x1_count_reg[4]_i_1_n_2 ,\x1_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(x1_count_reg[7:4]),
        .O({\x1_count_reg[4]_i_1_n_4 ,\x1_count_reg[4]_i_1_n_5 ,\x1_count_reg[4]_i_1_n_6 ,\x1_count_reg[4]_i_1_n_7 }),
        .S({\x1_count[4]_i_2_n_0 ,\x1_count[4]_i_3_n_0 ,\x1_count[4]_i_4_n_0 ,\x1_count[4]_i_5_n_0 }));
  FDRE \x1_count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[4]_i_1_n_6 ),
        .Q(x1_count_reg[5]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[4]_i_1_n_5 ),
        .Q(x1_count_reg[6]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[4]_i_1_n_4 ),
        .Q(x1_count_reg[7]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_count_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[8]_i_1_n_7 ),
        .Q(x1_count_reg[8]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \x1_count_reg[8]_i_1 
       (.CI(\x1_count_reg[4]_i_1_n_0 ),
        .CO({\x1_count_reg[8]_i_1_n_0 ,\x1_count_reg[8]_i_1_n_1 ,\x1_count_reg[8]_i_1_n_2 ,\x1_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(x1_count_reg[11:8]),
        .O({\x1_count_reg[8]_i_1_n_4 ,\x1_count_reg[8]_i_1_n_5 ,\x1_count_reg[8]_i_1_n_6 ,\x1_count_reg[8]_i_1_n_7 }),
        .S({\x1_count[8]_i_2_n_0 ,\x1_count[8]_i_3_n_0 ,\x1_count[8]_i_4_n_0 ,\x1_count[8]_i_5_n_0 }));
  FDRE \x1_count_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\x1_count[0]_i_1_n_0 ),
        .D(\x1_count_reg[8]_i_1_n_6 ),
        .Q(x1_count_reg[9]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_state_p_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(p_0_in[2]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_state_p_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(p_0_in[3]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(x1_a_sync[1]),
        .Q(p_0_in[0]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x1_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(x1_b_sync[1]),
        .Q(p_0_in[1]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_a_sync_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(enc_x2_a),
        .Q(x2_a_sync[0]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_a_sync_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(x2_a_sync[0]),
        .Q(x2_a_sync[1]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_b_sync_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(enc_x2_b),
        .Q(x2_b_sync[0]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_b_sync_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(x2_b_sync[0]),
        .Q(x2_b_sync[1]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  LUT4 #(
    .INIT(16'h6996)) 
    \x2_count[0]_i_1 
       (.I0(x2_state[1]),
        .I1(x2_state[0]),
        .I2(x2_state_p[1]),
        .I3(x2_state_p[0]),
        .O(\x2_count[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[0]_i_3 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[3]),
        .O(\x2_count[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[0]_i_4 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[2]),
        .O(\x2_count[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[0]_i_5 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[1]),
        .O(\x2_count[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x2_count[0]_i_6 
       (.I0(x2_count_reg[0]),
        .O(\x2_count[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[12]_i_2 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[15]),
        .O(\x2_count[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[12]_i_3 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[14]),
        .O(\x2_count[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[12]_i_4 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[13]),
        .O(\x2_count[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[12]_i_5 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[12]),
        .O(\x2_count[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[16]_i_2 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[19]),
        .O(\x2_count[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[16]_i_3 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[18]),
        .O(\x2_count[16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[16]_i_4 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[17]),
        .O(\x2_count[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[16]_i_5 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[16]),
        .O(\x2_count[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[20]_i_2 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[23]),
        .O(\x2_count[20]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[20]_i_3 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[22]),
        .O(\x2_count[20]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[20]_i_4 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[21]),
        .O(\x2_count[20]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[20]_i_5 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[20]),
        .O(\x2_count[20]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[24]_i_2 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[27]),
        .O(\x2_count[24]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[24]_i_3 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[26]),
        .O(\x2_count[24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[24]_i_4 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[25]),
        .O(\x2_count[24]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[24]_i_5 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[24]),
        .O(\x2_count[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[28]_i_2 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[31]),
        .O(\x2_count[28]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[28]_i_3 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[30]),
        .O(\x2_count[28]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[28]_i_4 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[29]),
        .O(\x2_count[28]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[28]_i_5 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[28]),
        .O(\x2_count[28]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[4]_i_2 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[7]),
        .O(\x2_count[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[4]_i_3 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[6]),
        .O(\x2_count[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[4]_i_4 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[5]),
        .O(\x2_count[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[4]_i_5 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[4]),
        .O(\x2_count[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[8]_i_2 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[11]),
        .O(\x2_count[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[8]_i_3 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[10]),
        .O(\x2_count[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[8]_i_4 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[9]),
        .O(\x2_count[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x2_count[8]_i_5 
       (.I0(x2_state_p[0]),
        .I1(x2_state[1]),
        .I2(x2_count_reg[8]),
        .O(\x2_count[8]_i_5_n_0 ));
  FDRE \x2_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[0]_i_2_n_7 ),
        .Q(x2_count_reg[0]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \x2_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\x2_count_reg[0]_i_2_n_0 ,\x2_count_reg[0]_i_2_n_1 ,\x2_count_reg[0]_i_2_n_2 ,\x2_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({x2_count_reg[3:1],1'b1}),
        .O({\x2_count_reg[0]_i_2_n_4 ,\x2_count_reg[0]_i_2_n_5 ,\x2_count_reg[0]_i_2_n_6 ,\x2_count_reg[0]_i_2_n_7 }),
        .S({\x2_count[0]_i_3_n_0 ,\x2_count[0]_i_4_n_0 ,\x2_count[0]_i_5_n_0 ,\x2_count[0]_i_6_n_0 }));
  FDRE \x2_count_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[8]_i_1_n_5 ),
        .Q(x2_count_reg[10]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_count_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[8]_i_1_n_4 ),
        .Q(x2_count_reg[11]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_count_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[12]_i_1_n_7 ),
        .Q(x2_count_reg[12]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \x2_count_reg[12]_i_1 
       (.CI(\x2_count_reg[8]_i_1_n_0 ),
        .CO({\x2_count_reg[12]_i_1_n_0 ,\x2_count_reg[12]_i_1_n_1 ,\x2_count_reg[12]_i_1_n_2 ,\x2_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(x2_count_reg[15:12]),
        .O({\x2_count_reg[12]_i_1_n_4 ,\x2_count_reg[12]_i_1_n_5 ,\x2_count_reg[12]_i_1_n_6 ,\x2_count_reg[12]_i_1_n_7 }),
        .S({\x2_count[12]_i_2_n_0 ,\x2_count[12]_i_3_n_0 ,\x2_count[12]_i_4_n_0 ,\x2_count[12]_i_5_n_0 }));
  FDRE \x2_count_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[12]_i_1_n_6 ),
        .Q(x2_count_reg[13]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_count_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[12]_i_1_n_5 ),
        .Q(x2_count_reg[14]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_count_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[12]_i_1_n_4 ),
        .Q(x2_count_reg[15]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_count_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[16]_i_1_n_7 ),
        .Q(x2_count_reg[16]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \x2_count_reg[16]_i_1 
       (.CI(\x2_count_reg[12]_i_1_n_0 ),
        .CO({\x2_count_reg[16]_i_1_n_0 ,\x2_count_reg[16]_i_1_n_1 ,\x2_count_reg[16]_i_1_n_2 ,\x2_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(x2_count_reg[19:16]),
        .O({\x2_count_reg[16]_i_1_n_4 ,\x2_count_reg[16]_i_1_n_5 ,\x2_count_reg[16]_i_1_n_6 ,\x2_count_reg[16]_i_1_n_7 }),
        .S({\x2_count[16]_i_2_n_0 ,\x2_count[16]_i_3_n_0 ,\x2_count[16]_i_4_n_0 ,\x2_count[16]_i_5_n_0 }));
  FDRE \x2_count_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[16]_i_1_n_6 ),
        .Q(x2_count_reg[17]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_count_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[16]_i_1_n_5 ),
        .Q(x2_count_reg[18]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_count_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[16]_i_1_n_4 ),
        .Q(x2_count_reg[19]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[0]_i_2_n_6 ),
        .Q(x2_count_reg[1]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_count_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[20]_i_1_n_7 ),
        .Q(x2_count_reg[20]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \x2_count_reg[20]_i_1 
       (.CI(\x2_count_reg[16]_i_1_n_0 ),
        .CO({\x2_count_reg[20]_i_1_n_0 ,\x2_count_reg[20]_i_1_n_1 ,\x2_count_reg[20]_i_1_n_2 ,\x2_count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(x2_count_reg[23:20]),
        .O({\x2_count_reg[20]_i_1_n_4 ,\x2_count_reg[20]_i_1_n_5 ,\x2_count_reg[20]_i_1_n_6 ,\x2_count_reg[20]_i_1_n_7 }),
        .S({\x2_count[20]_i_2_n_0 ,\x2_count[20]_i_3_n_0 ,\x2_count[20]_i_4_n_0 ,\x2_count[20]_i_5_n_0 }));
  FDRE \x2_count_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[20]_i_1_n_6 ),
        .Q(x2_count_reg[21]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_count_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[20]_i_1_n_5 ),
        .Q(x2_count_reg[22]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_count_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[20]_i_1_n_4 ),
        .Q(x2_count_reg[23]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_count_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[24]_i_1_n_7 ),
        .Q(x2_count_reg[24]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \x2_count_reg[24]_i_1 
       (.CI(\x2_count_reg[20]_i_1_n_0 ),
        .CO({\x2_count_reg[24]_i_1_n_0 ,\x2_count_reg[24]_i_1_n_1 ,\x2_count_reg[24]_i_1_n_2 ,\x2_count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(x2_count_reg[27:24]),
        .O({\x2_count_reg[24]_i_1_n_4 ,\x2_count_reg[24]_i_1_n_5 ,\x2_count_reg[24]_i_1_n_6 ,\x2_count_reg[24]_i_1_n_7 }),
        .S({\x2_count[24]_i_2_n_0 ,\x2_count[24]_i_3_n_0 ,\x2_count[24]_i_4_n_0 ,\x2_count[24]_i_5_n_0 }));
  FDRE \x2_count_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[24]_i_1_n_6 ),
        .Q(x2_count_reg[25]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_count_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[24]_i_1_n_5 ),
        .Q(x2_count_reg[26]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_count_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[24]_i_1_n_4 ),
        .Q(x2_count_reg[27]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_count_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[28]_i_1_n_7 ),
        .Q(x2_count_reg[28]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \x2_count_reg[28]_i_1 
       (.CI(\x2_count_reg[24]_i_1_n_0 ),
        .CO({\NLW_x2_count_reg[28]_i_1_CO_UNCONNECTED [3],\x2_count_reg[28]_i_1_n_1 ,\x2_count_reg[28]_i_1_n_2 ,\x2_count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,x2_count_reg[30:28]}),
        .O({\x2_count_reg[28]_i_1_n_4 ,\x2_count_reg[28]_i_1_n_5 ,\x2_count_reg[28]_i_1_n_6 ,\x2_count_reg[28]_i_1_n_7 }),
        .S({\x2_count[28]_i_2_n_0 ,\x2_count[28]_i_3_n_0 ,\x2_count[28]_i_4_n_0 ,\x2_count[28]_i_5_n_0 }));
  FDRE \x2_count_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[28]_i_1_n_6 ),
        .Q(x2_count_reg[29]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[0]_i_2_n_5 ),
        .Q(x2_count_reg[2]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_count_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[28]_i_1_n_5 ),
        .Q(x2_count_reg[30]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_count_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[28]_i_1_n_4 ),
        .Q(x2_count_reg[31]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[0]_i_2_n_4 ),
        .Q(x2_count_reg[3]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[4]_i_1_n_7 ),
        .Q(x2_count_reg[4]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \x2_count_reg[4]_i_1 
       (.CI(\x2_count_reg[0]_i_2_n_0 ),
        .CO({\x2_count_reg[4]_i_1_n_0 ,\x2_count_reg[4]_i_1_n_1 ,\x2_count_reg[4]_i_1_n_2 ,\x2_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(x2_count_reg[7:4]),
        .O({\x2_count_reg[4]_i_1_n_4 ,\x2_count_reg[4]_i_1_n_5 ,\x2_count_reg[4]_i_1_n_6 ,\x2_count_reg[4]_i_1_n_7 }),
        .S({\x2_count[4]_i_2_n_0 ,\x2_count[4]_i_3_n_0 ,\x2_count[4]_i_4_n_0 ,\x2_count[4]_i_5_n_0 }));
  FDRE \x2_count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[4]_i_1_n_6 ),
        .Q(x2_count_reg[5]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[4]_i_1_n_5 ),
        .Q(x2_count_reg[6]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[4]_i_1_n_4 ),
        .Q(x2_count_reg[7]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_count_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[8]_i_1_n_7 ),
        .Q(x2_count_reg[8]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \x2_count_reg[8]_i_1 
       (.CI(\x2_count_reg[4]_i_1_n_0 ),
        .CO({\x2_count_reg[8]_i_1_n_0 ,\x2_count_reg[8]_i_1_n_1 ,\x2_count_reg[8]_i_1_n_2 ,\x2_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(x2_count_reg[11:8]),
        .O({\x2_count_reg[8]_i_1_n_4 ,\x2_count_reg[8]_i_1_n_5 ,\x2_count_reg[8]_i_1_n_6 ,\x2_count_reg[8]_i_1_n_7 }),
        .S({\x2_count[8]_i_2_n_0 ,\x2_count[8]_i_3_n_0 ,\x2_count[8]_i_4_n_0 ,\x2_count[8]_i_5_n_0 }));
  FDRE \x2_count_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\x2_count[0]_i_1_n_0 ),
        .D(\x2_count_reg[8]_i_1_n_6 ),
        .Q(x2_count_reg[9]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_state_p_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(x2_state[0]),
        .Q(x2_state_p[0]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_state_p_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(x2_state[1]),
        .Q(x2_state_p[1]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(x2_a_sync[1]),
        .Q(x2_state[0]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \x2_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(x2_b_sync[1]),
        .Q(x2_state[1]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_a_sync_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(enc_y_a),
        .Q(y_a_sync[0]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_a_sync_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(y_a_sync[0]),
        .Q(y_a_sync[1]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_b_sync_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(enc_y_b),
        .Q(y_b_sync[0]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_b_sync_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(y_b_sync[0]),
        .Q(y_b_sync[1]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  LUT4 #(
    .INIT(16'h6996)) 
    \y_count[0]_i_1 
       (.I0(y_state[1]),
        .I1(y_state[0]),
        .I2(y_state_p[1]),
        .I3(y_state_p[0]),
        .O(\y_count[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[0]_i_3 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[3]),
        .O(\y_count[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[0]_i_4 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[2]),
        .O(\y_count[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[0]_i_5 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[1]),
        .O(\y_count[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y_count[0]_i_6 
       (.I0(y_count_reg[0]),
        .O(\y_count[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[12]_i_2 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[15]),
        .O(\y_count[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[12]_i_3 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[14]),
        .O(\y_count[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[12]_i_4 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[13]),
        .O(\y_count[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[12]_i_5 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[12]),
        .O(\y_count[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[16]_i_2 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[19]),
        .O(\y_count[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[16]_i_3 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[18]),
        .O(\y_count[16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[16]_i_4 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[17]),
        .O(\y_count[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[16]_i_5 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[16]),
        .O(\y_count[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[20]_i_2 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[23]),
        .O(\y_count[20]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[20]_i_3 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[22]),
        .O(\y_count[20]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[20]_i_4 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[21]),
        .O(\y_count[20]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[20]_i_5 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[20]),
        .O(\y_count[20]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[24]_i_2 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[27]),
        .O(\y_count[24]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[24]_i_3 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[26]),
        .O(\y_count[24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[24]_i_4 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[25]),
        .O(\y_count[24]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[24]_i_5 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[24]),
        .O(\y_count[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[28]_i_2 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[31]),
        .O(\y_count[28]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[28]_i_3 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[30]),
        .O(\y_count[28]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[28]_i_4 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[29]),
        .O(\y_count[28]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[28]_i_5 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[28]),
        .O(\y_count[28]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[4]_i_2 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[7]),
        .O(\y_count[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[4]_i_3 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[6]),
        .O(\y_count[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[4]_i_4 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[5]),
        .O(\y_count[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[4]_i_5 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[4]),
        .O(\y_count[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[8]_i_2 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[11]),
        .O(\y_count[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[8]_i_3 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[10]),
        .O(\y_count[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[8]_i_4 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[9]),
        .O(\y_count[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y_count[8]_i_5 
       (.I0(y_state_p[0]),
        .I1(y_state[1]),
        .I2(y_count_reg[8]),
        .O(\y_count[8]_i_5_n_0 ));
  FDRE \y_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[0]_i_2_n_7 ),
        .Q(y_count_reg[0]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \y_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\y_count_reg[0]_i_2_n_0 ,\y_count_reg[0]_i_2_n_1 ,\y_count_reg[0]_i_2_n_2 ,\y_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({y_count_reg[3:1],1'b1}),
        .O({\y_count_reg[0]_i_2_n_4 ,\y_count_reg[0]_i_2_n_5 ,\y_count_reg[0]_i_2_n_6 ,\y_count_reg[0]_i_2_n_7 }),
        .S({\y_count[0]_i_3_n_0 ,\y_count[0]_i_4_n_0 ,\y_count[0]_i_5_n_0 ,\y_count[0]_i_6_n_0 }));
  FDRE \y_count_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[8]_i_1_n_5 ),
        .Q(y_count_reg[10]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_count_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[8]_i_1_n_4 ),
        .Q(y_count_reg[11]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_count_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[12]_i_1_n_7 ),
        .Q(y_count_reg[12]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \y_count_reg[12]_i_1 
       (.CI(\y_count_reg[8]_i_1_n_0 ),
        .CO({\y_count_reg[12]_i_1_n_0 ,\y_count_reg[12]_i_1_n_1 ,\y_count_reg[12]_i_1_n_2 ,\y_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(y_count_reg[15:12]),
        .O({\y_count_reg[12]_i_1_n_4 ,\y_count_reg[12]_i_1_n_5 ,\y_count_reg[12]_i_1_n_6 ,\y_count_reg[12]_i_1_n_7 }),
        .S({\y_count[12]_i_2_n_0 ,\y_count[12]_i_3_n_0 ,\y_count[12]_i_4_n_0 ,\y_count[12]_i_5_n_0 }));
  FDRE \y_count_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[12]_i_1_n_6 ),
        .Q(y_count_reg[13]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_count_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[12]_i_1_n_5 ),
        .Q(y_count_reg[14]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_count_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[12]_i_1_n_4 ),
        .Q(y_count_reg[15]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_count_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[16]_i_1_n_7 ),
        .Q(y_count_reg[16]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \y_count_reg[16]_i_1 
       (.CI(\y_count_reg[12]_i_1_n_0 ),
        .CO({\y_count_reg[16]_i_1_n_0 ,\y_count_reg[16]_i_1_n_1 ,\y_count_reg[16]_i_1_n_2 ,\y_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(y_count_reg[19:16]),
        .O({\y_count_reg[16]_i_1_n_4 ,\y_count_reg[16]_i_1_n_5 ,\y_count_reg[16]_i_1_n_6 ,\y_count_reg[16]_i_1_n_7 }),
        .S({\y_count[16]_i_2_n_0 ,\y_count[16]_i_3_n_0 ,\y_count[16]_i_4_n_0 ,\y_count[16]_i_5_n_0 }));
  FDRE \y_count_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[16]_i_1_n_6 ),
        .Q(y_count_reg[17]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_count_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[16]_i_1_n_5 ),
        .Q(y_count_reg[18]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_count_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[16]_i_1_n_4 ),
        .Q(y_count_reg[19]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[0]_i_2_n_6 ),
        .Q(y_count_reg[1]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_count_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[20]_i_1_n_7 ),
        .Q(y_count_reg[20]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \y_count_reg[20]_i_1 
       (.CI(\y_count_reg[16]_i_1_n_0 ),
        .CO({\y_count_reg[20]_i_1_n_0 ,\y_count_reg[20]_i_1_n_1 ,\y_count_reg[20]_i_1_n_2 ,\y_count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(y_count_reg[23:20]),
        .O({\y_count_reg[20]_i_1_n_4 ,\y_count_reg[20]_i_1_n_5 ,\y_count_reg[20]_i_1_n_6 ,\y_count_reg[20]_i_1_n_7 }),
        .S({\y_count[20]_i_2_n_0 ,\y_count[20]_i_3_n_0 ,\y_count[20]_i_4_n_0 ,\y_count[20]_i_5_n_0 }));
  FDRE \y_count_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[20]_i_1_n_6 ),
        .Q(y_count_reg[21]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_count_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[20]_i_1_n_5 ),
        .Q(y_count_reg[22]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_count_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[20]_i_1_n_4 ),
        .Q(y_count_reg[23]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_count_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[24]_i_1_n_7 ),
        .Q(y_count_reg[24]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \y_count_reg[24]_i_1 
       (.CI(\y_count_reg[20]_i_1_n_0 ),
        .CO({\y_count_reg[24]_i_1_n_0 ,\y_count_reg[24]_i_1_n_1 ,\y_count_reg[24]_i_1_n_2 ,\y_count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(y_count_reg[27:24]),
        .O({\y_count_reg[24]_i_1_n_4 ,\y_count_reg[24]_i_1_n_5 ,\y_count_reg[24]_i_1_n_6 ,\y_count_reg[24]_i_1_n_7 }),
        .S({\y_count[24]_i_2_n_0 ,\y_count[24]_i_3_n_0 ,\y_count[24]_i_4_n_0 ,\y_count[24]_i_5_n_0 }));
  FDRE \y_count_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[24]_i_1_n_6 ),
        .Q(y_count_reg[25]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_count_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[24]_i_1_n_5 ),
        .Q(y_count_reg[26]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_count_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[24]_i_1_n_4 ),
        .Q(y_count_reg[27]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_count_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[28]_i_1_n_7 ),
        .Q(y_count_reg[28]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \y_count_reg[28]_i_1 
       (.CI(\y_count_reg[24]_i_1_n_0 ),
        .CO({\NLW_y_count_reg[28]_i_1_CO_UNCONNECTED [3],\y_count_reg[28]_i_1_n_1 ,\y_count_reg[28]_i_1_n_2 ,\y_count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,y_count_reg[30:28]}),
        .O({\y_count_reg[28]_i_1_n_4 ,\y_count_reg[28]_i_1_n_5 ,\y_count_reg[28]_i_1_n_6 ,\y_count_reg[28]_i_1_n_7 }),
        .S({\y_count[28]_i_2_n_0 ,\y_count[28]_i_3_n_0 ,\y_count[28]_i_4_n_0 ,\y_count[28]_i_5_n_0 }));
  FDRE \y_count_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[28]_i_1_n_6 ),
        .Q(y_count_reg[29]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[0]_i_2_n_5 ),
        .Q(y_count_reg[2]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_count_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[28]_i_1_n_5 ),
        .Q(y_count_reg[30]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_count_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[28]_i_1_n_4 ),
        .Q(y_count_reg[31]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[0]_i_2_n_4 ),
        .Q(y_count_reg[3]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[4]_i_1_n_7 ),
        .Q(y_count_reg[4]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \y_count_reg[4]_i_1 
       (.CI(\y_count_reg[0]_i_2_n_0 ),
        .CO({\y_count_reg[4]_i_1_n_0 ,\y_count_reg[4]_i_1_n_1 ,\y_count_reg[4]_i_1_n_2 ,\y_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(y_count_reg[7:4]),
        .O({\y_count_reg[4]_i_1_n_4 ,\y_count_reg[4]_i_1_n_5 ,\y_count_reg[4]_i_1_n_6 ,\y_count_reg[4]_i_1_n_7 }),
        .S({\y_count[4]_i_2_n_0 ,\y_count[4]_i_3_n_0 ,\y_count[4]_i_4_n_0 ,\y_count[4]_i_5_n_0 }));
  FDRE \y_count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[4]_i_1_n_6 ),
        .Q(y_count_reg[5]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[4]_i_1_n_5 ),
        .Q(y_count_reg[6]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[4]_i_1_n_4 ),
        .Q(y_count_reg[7]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_count_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[8]_i_1_n_7 ),
        .Q(y_count_reg[8]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \y_count_reg[8]_i_1 
       (.CI(\y_count_reg[4]_i_1_n_0 ),
        .CO({\y_count_reg[8]_i_1_n_0 ,\y_count_reg[8]_i_1_n_1 ,\y_count_reg[8]_i_1_n_2 ,\y_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(y_count_reg[11:8]),
        .O({\y_count_reg[8]_i_1_n_4 ,\y_count_reg[8]_i_1_n_5 ,\y_count_reg[8]_i_1_n_6 ,\y_count_reg[8]_i_1_n_7 }),
        .S({\y_count[8]_i_2_n_0 ,\y_count[8]_i_3_n_0 ,\y_count[8]_i_4_n_0 ,\y_count[8]_i_5_n_0 }));
  FDRE \y_count_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\y_count[0]_i_1_n_0 ),
        .D(\y_count_reg[8]_i_1_n_6 ),
        .Q(y_count_reg[9]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_state_p_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(y_state[0]),
        .Q(y_state_p[0]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_state_p_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(y_state[1]),
        .Q(y_state_p[1]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(y_a_sync[1]),
        .Q(y_state[0]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \y_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(y_b_sync[1]),
        .Q(y_state[1]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_a_sync_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(enc_z_a),
        .Q(z_a_sync[0]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_a_sync_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(z_a_sync[0]),
        .Q(z_a_sync[1]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_b_sync_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(enc_z_b),
        .Q(z_b_sync[0]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_b_sync_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(z_b_sync[0]),
        .Q(z_b_sync[1]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  LUT4 #(
    .INIT(16'h6996)) 
    \z_count[0]_i_1 
       (.I0(z_state[1]),
        .I1(z_state[0]),
        .I2(z_state_p[1]),
        .I3(z_state_p[0]),
        .O(\z_count[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[0]_i_3 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[3]),
        .O(\z_count[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[0]_i_4 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[2]),
        .O(\z_count[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[0]_i_5 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[1]),
        .O(\z_count[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z_count[0]_i_6 
       (.I0(z_count_reg[0]),
        .O(\z_count[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[12]_i_2 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[15]),
        .O(\z_count[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[12]_i_3 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[14]),
        .O(\z_count[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[12]_i_4 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[13]),
        .O(\z_count[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[12]_i_5 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[12]),
        .O(\z_count[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[16]_i_2 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[19]),
        .O(\z_count[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[16]_i_3 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[18]),
        .O(\z_count[16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[16]_i_4 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[17]),
        .O(\z_count[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[16]_i_5 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[16]),
        .O(\z_count[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[20]_i_2 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[23]),
        .O(\z_count[20]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[20]_i_3 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[22]),
        .O(\z_count[20]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[20]_i_4 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[21]),
        .O(\z_count[20]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[20]_i_5 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[20]),
        .O(\z_count[20]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[24]_i_2 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[27]),
        .O(\z_count[24]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[24]_i_3 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[26]),
        .O(\z_count[24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[24]_i_4 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[25]),
        .O(\z_count[24]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[24]_i_5 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[24]),
        .O(\z_count[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[28]_i_2 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[31]),
        .O(\z_count[28]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[28]_i_3 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[30]),
        .O(\z_count[28]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[28]_i_4 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[29]),
        .O(\z_count[28]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[28]_i_5 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[28]),
        .O(\z_count[28]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[4]_i_2 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[7]),
        .O(\z_count[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[4]_i_3 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[6]),
        .O(\z_count[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[4]_i_4 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[5]),
        .O(\z_count[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[4]_i_5 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[4]),
        .O(\z_count[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[8]_i_2 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[11]),
        .O(\z_count[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[8]_i_3 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[10]),
        .O(\z_count[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[8]_i_4 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[9]),
        .O(\z_count[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \z_count[8]_i_5 
       (.I0(z_state_p[0]),
        .I1(z_state[1]),
        .I2(z_count_reg[8]),
        .O(\z_count[8]_i_5_n_0 ));
  FDRE \z_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[0]_i_2_n_7 ),
        .Q(z_count_reg[0]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \z_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\z_count_reg[0]_i_2_n_0 ,\z_count_reg[0]_i_2_n_1 ,\z_count_reg[0]_i_2_n_2 ,\z_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({z_count_reg[3:1],1'b1}),
        .O({\z_count_reg[0]_i_2_n_4 ,\z_count_reg[0]_i_2_n_5 ,\z_count_reg[0]_i_2_n_6 ,\z_count_reg[0]_i_2_n_7 }),
        .S({\z_count[0]_i_3_n_0 ,\z_count[0]_i_4_n_0 ,\z_count[0]_i_5_n_0 ,\z_count[0]_i_6_n_0 }));
  FDRE \z_count_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[8]_i_1_n_5 ),
        .Q(z_count_reg[10]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_count_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[8]_i_1_n_4 ),
        .Q(z_count_reg[11]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_count_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[12]_i_1_n_7 ),
        .Q(z_count_reg[12]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \z_count_reg[12]_i_1 
       (.CI(\z_count_reg[8]_i_1_n_0 ),
        .CO({\z_count_reg[12]_i_1_n_0 ,\z_count_reg[12]_i_1_n_1 ,\z_count_reg[12]_i_1_n_2 ,\z_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(z_count_reg[15:12]),
        .O({\z_count_reg[12]_i_1_n_4 ,\z_count_reg[12]_i_1_n_5 ,\z_count_reg[12]_i_1_n_6 ,\z_count_reg[12]_i_1_n_7 }),
        .S({\z_count[12]_i_2_n_0 ,\z_count[12]_i_3_n_0 ,\z_count[12]_i_4_n_0 ,\z_count[12]_i_5_n_0 }));
  FDRE \z_count_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[12]_i_1_n_6 ),
        .Q(z_count_reg[13]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_count_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[12]_i_1_n_5 ),
        .Q(z_count_reg[14]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_count_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[12]_i_1_n_4 ),
        .Q(z_count_reg[15]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_count_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[16]_i_1_n_7 ),
        .Q(z_count_reg[16]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \z_count_reg[16]_i_1 
       (.CI(\z_count_reg[12]_i_1_n_0 ),
        .CO({\z_count_reg[16]_i_1_n_0 ,\z_count_reg[16]_i_1_n_1 ,\z_count_reg[16]_i_1_n_2 ,\z_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(z_count_reg[19:16]),
        .O({\z_count_reg[16]_i_1_n_4 ,\z_count_reg[16]_i_1_n_5 ,\z_count_reg[16]_i_1_n_6 ,\z_count_reg[16]_i_1_n_7 }),
        .S({\z_count[16]_i_2_n_0 ,\z_count[16]_i_3_n_0 ,\z_count[16]_i_4_n_0 ,\z_count[16]_i_5_n_0 }));
  FDRE \z_count_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[16]_i_1_n_6 ),
        .Q(z_count_reg[17]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_count_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[16]_i_1_n_5 ),
        .Q(z_count_reg[18]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_count_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[16]_i_1_n_4 ),
        .Q(z_count_reg[19]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[0]_i_2_n_6 ),
        .Q(z_count_reg[1]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_count_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[20]_i_1_n_7 ),
        .Q(z_count_reg[20]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \z_count_reg[20]_i_1 
       (.CI(\z_count_reg[16]_i_1_n_0 ),
        .CO({\z_count_reg[20]_i_1_n_0 ,\z_count_reg[20]_i_1_n_1 ,\z_count_reg[20]_i_1_n_2 ,\z_count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(z_count_reg[23:20]),
        .O({\z_count_reg[20]_i_1_n_4 ,\z_count_reg[20]_i_1_n_5 ,\z_count_reg[20]_i_1_n_6 ,\z_count_reg[20]_i_1_n_7 }),
        .S({\z_count[20]_i_2_n_0 ,\z_count[20]_i_3_n_0 ,\z_count[20]_i_4_n_0 ,\z_count[20]_i_5_n_0 }));
  FDRE \z_count_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[20]_i_1_n_6 ),
        .Q(z_count_reg[21]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_count_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[20]_i_1_n_5 ),
        .Q(z_count_reg[22]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_count_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[20]_i_1_n_4 ),
        .Q(z_count_reg[23]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_count_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[24]_i_1_n_7 ),
        .Q(z_count_reg[24]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \z_count_reg[24]_i_1 
       (.CI(\z_count_reg[20]_i_1_n_0 ),
        .CO({\z_count_reg[24]_i_1_n_0 ,\z_count_reg[24]_i_1_n_1 ,\z_count_reg[24]_i_1_n_2 ,\z_count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(z_count_reg[27:24]),
        .O({\z_count_reg[24]_i_1_n_4 ,\z_count_reg[24]_i_1_n_5 ,\z_count_reg[24]_i_1_n_6 ,\z_count_reg[24]_i_1_n_7 }),
        .S({\z_count[24]_i_2_n_0 ,\z_count[24]_i_3_n_0 ,\z_count[24]_i_4_n_0 ,\z_count[24]_i_5_n_0 }));
  FDRE \z_count_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[24]_i_1_n_6 ),
        .Q(z_count_reg[25]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_count_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[24]_i_1_n_5 ),
        .Q(z_count_reg[26]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_count_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[24]_i_1_n_4 ),
        .Q(z_count_reg[27]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_count_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[28]_i_1_n_7 ),
        .Q(z_count_reg[28]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \z_count_reg[28]_i_1 
       (.CI(\z_count_reg[24]_i_1_n_0 ),
        .CO({\NLW_z_count_reg[28]_i_1_CO_UNCONNECTED [3],\z_count_reg[28]_i_1_n_1 ,\z_count_reg[28]_i_1_n_2 ,\z_count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,z_count_reg[30:28]}),
        .O({\z_count_reg[28]_i_1_n_4 ,\z_count_reg[28]_i_1_n_5 ,\z_count_reg[28]_i_1_n_6 ,\z_count_reg[28]_i_1_n_7 }),
        .S({\z_count[28]_i_2_n_0 ,\z_count[28]_i_3_n_0 ,\z_count[28]_i_4_n_0 ,\z_count[28]_i_5_n_0 }));
  FDRE \z_count_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[28]_i_1_n_6 ),
        .Q(z_count_reg[29]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[0]_i_2_n_5 ),
        .Q(z_count_reg[2]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_count_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[28]_i_1_n_5 ),
        .Q(z_count_reg[30]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_count_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[28]_i_1_n_4 ),
        .Q(z_count_reg[31]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[0]_i_2_n_4 ),
        .Q(z_count_reg[3]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[4]_i_1_n_7 ),
        .Q(z_count_reg[4]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \z_count_reg[4]_i_1 
       (.CI(\z_count_reg[0]_i_2_n_0 ),
        .CO({\z_count_reg[4]_i_1_n_0 ,\z_count_reg[4]_i_1_n_1 ,\z_count_reg[4]_i_1_n_2 ,\z_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(z_count_reg[7:4]),
        .O({\z_count_reg[4]_i_1_n_4 ,\z_count_reg[4]_i_1_n_5 ,\z_count_reg[4]_i_1_n_6 ,\z_count_reg[4]_i_1_n_7 }),
        .S({\z_count[4]_i_2_n_0 ,\z_count[4]_i_3_n_0 ,\z_count[4]_i_4_n_0 ,\z_count[4]_i_5_n_0 }));
  FDRE \z_count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[4]_i_1_n_6 ),
        .Q(z_count_reg[5]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[4]_i_1_n_5 ),
        .Q(z_count_reg[6]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[4]_i_1_n_4 ),
        .Q(z_count_reg[7]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_count_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[8]_i_1_n_7 ),
        .Q(z_count_reg[8]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \z_count_reg[8]_i_1 
       (.CI(\z_count_reg[4]_i_1_n_0 ),
        .CO({\z_count_reg[8]_i_1_n_0 ,\z_count_reg[8]_i_1_n_1 ,\z_count_reg[8]_i_1_n_2 ,\z_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(z_count_reg[11:8]),
        .O({\z_count_reg[8]_i_1_n_4 ,\z_count_reg[8]_i_1_n_5 ,\z_count_reg[8]_i_1_n_6 ,\z_count_reg[8]_i_1_n_7 }),
        .S({\z_count[8]_i_2_n_0 ,\z_count[8]_i_3_n_0 ,\z_count[8]_i_4_n_0 ,\z_count[8]_i_5_n_0 }));
  FDRE \z_count_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\z_count[0]_i_1_n_0 ),
        .D(\z_count_reg[8]_i_1_n_6 ),
        .Q(z_count_reg[9]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_state_p_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(z_state[0]),
        .Q(z_state_p[0]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_state_p_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(z_state[1]),
        .Q(z_state_p[1]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(z_a_sync[1]),
        .Q(z_state[0]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
  FDRE \z_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(z_b_sync[1]),
        .Q(z_state[1]),
        .R(motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1));
endmodule

(* ORIG_REF_NAME = "motor_ctrl_slave_lite_v1_0_S00_AXI" *) 
module RISC_V_motor_ctrl_0_0_motor_ctrl_slave_lite_v1_0_S00_AXI
   (axi_awready_reg_0,
    SR,
    s00_axi_bvalid,
    s00_axi_wready,
    axi_rvalid_reg_0,
    axi_arready_reg_0,
    m1_in1,
    m1_in2,
    m2_in1,
    m2_in2,
    m3_in1,
    m3_in2,
    m4_in1,
    m4_in2,
    S,
    DI,
    \slv_reg1_reg[6]_0 ,
    \slv_reg1_reg[6]_1 ,
    \slv_reg2_reg[6]_0 ,
    \slv_reg2_reg[6]_1 ,
    \slv_reg3_reg[6]_0 ,
    \slv_reg3_reg[6]_1 ,
    s00_axi_rdata,
    s00_axi_aclk,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_bready,
    s00_axi_aresetn,
    s00_axi_arvalid,
    CO,
    m2_in1_0,
    m3_in1_0,
    m4_in1_0,
    cnt_reg,
    s00_axi_wstrb,
    s00_axi_awaddr,
    z_count_reg,
    y_count_reg,
    x2_count_reg,
    x1_count_reg,
    s00_axi_rready,
    s00_axi_wdata,
    s00_axi_araddr);
  output axi_awready_reg_0;
  output [0:0]SR;
  output s00_axi_bvalid;
  output s00_axi_wready;
  output axi_rvalid_reg_0;
  output axi_arready_reg_0;
  output m1_in1;
  output m1_in2;
  output m2_in1;
  output m2_in2;
  output m3_in1;
  output m3_in2;
  output m4_in1;
  output m4_in2;
  output [3:0]S;
  output [3:0]DI;
  output [3:0]\slv_reg1_reg[6]_0 ;
  output [3:0]\slv_reg1_reg[6]_1 ;
  output [3:0]\slv_reg2_reg[6]_0 ;
  output [3:0]\slv_reg2_reg[6]_1 ;
  output [3:0]\slv_reg3_reg[6]_0 ;
  output [3:0]\slv_reg3_reg[6]_1 ;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_bready;
  input s00_axi_aresetn;
  input s00_axi_arvalid;
  input [0:0]CO;
  input [0:0]m2_in1_0;
  input [0:0]m3_in1_0;
  input [0:0]m4_in1_0;
  input [7:0]cnt_reg;
  input [3:0]s00_axi_wstrb;
  input [2:0]s00_axi_awaddr;
  input [31:0]z_count_reg;
  input [31:0]y_count_reg;
  input [31:0]x2_count_reg;
  input [31:0]x1_count_reg;
  input s00_axi_rready;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;

  wire [0:0]CO;
  wire [3:0]DI;
  wire \FSM_onehot_state_write[1]_i_1_n_0 ;
  wire \FSM_onehot_state_write[2]_i_1_n_0 ;
  wire \FSM_onehot_state_write_reg_n_0_[1] ;
  wire \FSM_onehot_state_write_reg_n_0_[2] ;
  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire [3:0]S;
  wire [0:0]SR;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire \axi_araddr[4]_i_2_n_0 ;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire \axi_awaddr_reg_n_0_[4] ;
  wire axi_awready_i_2_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_bvalid_i_2_n_0;
  wire axi_bvalid_i_3_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready;
  wire axi_wready_i_1_n_0;
  wire [7:0]cnt_reg;
  wire m1_in1;
  wire m1_in2;
  wire m2_in1;
  wire [0:0]m2_in1_0;
  wire m2_in2;
  wire m3_in1;
  wire [0:0]m3_in1_0;
  wire m3_in2;
  wire m4_in1;
  wire [0:0]m4_in1_0;
  wire m4_in2;
  wire [4:2]mem_logic__2;
  wire [31:7]p_1_in;
  wire [8:8]reg_x1_ctrl;
  wire [8:8]reg_x2_ctrl;
  wire [8:8]reg_y_ctrl;
  wire [8:8]reg_z_ctrl;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire \s00_axi_rdata[0]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_2_n_0 ;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel0;
  wire \slv_reg0_reg_n_0_[0] ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [3:0]\slv_reg1_reg[6]_0 ;
  wire [3:0]\slv_reg1_reg[6]_1 ;
  wire \slv_reg1_reg_n_0_[0] ;
  wire \slv_reg1_reg_n_0_[10] ;
  wire \slv_reg1_reg_n_0_[11] ;
  wire \slv_reg1_reg_n_0_[12] ;
  wire \slv_reg1_reg_n_0_[13] ;
  wire \slv_reg1_reg_n_0_[14] ;
  wire \slv_reg1_reg_n_0_[15] ;
  wire \slv_reg1_reg_n_0_[16] ;
  wire \slv_reg1_reg_n_0_[17] ;
  wire \slv_reg1_reg_n_0_[18] ;
  wire \slv_reg1_reg_n_0_[19] ;
  wire \slv_reg1_reg_n_0_[1] ;
  wire \slv_reg1_reg_n_0_[20] ;
  wire \slv_reg1_reg_n_0_[21] ;
  wire \slv_reg1_reg_n_0_[22] ;
  wire \slv_reg1_reg_n_0_[23] ;
  wire \slv_reg1_reg_n_0_[24] ;
  wire \slv_reg1_reg_n_0_[25] ;
  wire \slv_reg1_reg_n_0_[26] ;
  wire \slv_reg1_reg_n_0_[27] ;
  wire \slv_reg1_reg_n_0_[28] ;
  wire \slv_reg1_reg_n_0_[29] ;
  wire \slv_reg1_reg_n_0_[2] ;
  wire \slv_reg1_reg_n_0_[30] ;
  wire \slv_reg1_reg_n_0_[31] ;
  wire \slv_reg1_reg_n_0_[3] ;
  wire \slv_reg1_reg_n_0_[4] ;
  wire \slv_reg1_reg_n_0_[5] ;
  wire \slv_reg1_reg_n_0_[6] ;
  wire \slv_reg1_reg_n_0_[7] ;
  wire \slv_reg1_reg_n_0_[9] ;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [3:0]\slv_reg2_reg[6]_0 ;
  wire [3:0]\slv_reg2_reg[6]_1 ;
  wire \slv_reg2_reg_n_0_[0] ;
  wire \slv_reg2_reg_n_0_[10] ;
  wire \slv_reg2_reg_n_0_[11] ;
  wire \slv_reg2_reg_n_0_[12] ;
  wire \slv_reg2_reg_n_0_[13] ;
  wire \slv_reg2_reg_n_0_[14] ;
  wire \slv_reg2_reg_n_0_[15] ;
  wire \slv_reg2_reg_n_0_[16] ;
  wire \slv_reg2_reg_n_0_[17] ;
  wire \slv_reg2_reg_n_0_[18] ;
  wire \slv_reg2_reg_n_0_[19] ;
  wire \slv_reg2_reg_n_0_[1] ;
  wire \slv_reg2_reg_n_0_[20] ;
  wire \slv_reg2_reg_n_0_[21] ;
  wire \slv_reg2_reg_n_0_[22] ;
  wire \slv_reg2_reg_n_0_[23] ;
  wire \slv_reg2_reg_n_0_[24] ;
  wire \slv_reg2_reg_n_0_[25] ;
  wire \slv_reg2_reg_n_0_[26] ;
  wire \slv_reg2_reg_n_0_[27] ;
  wire \slv_reg2_reg_n_0_[28] ;
  wire \slv_reg2_reg_n_0_[29] ;
  wire \slv_reg2_reg_n_0_[2] ;
  wire \slv_reg2_reg_n_0_[30] ;
  wire \slv_reg2_reg_n_0_[31] ;
  wire \slv_reg2_reg_n_0_[3] ;
  wire \slv_reg2_reg_n_0_[4] ;
  wire \slv_reg2_reg_n_0_[5] ;
  wire \slv_reg2_reg_n_0_[6] ;
  wire \slv_reg2_reg_n_0_[7] ;
  wire \slv_reg2_reg_n_0_[9] ;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [3:0]\slv_reg3_reg[6]_0 ;
  wire [3:0]\slv_reg3_reg[6]_1 ;
  wire \slv_reg3_reg_n_0_[0] ;
  wire \slv_reg3_reg_n_0_[10] ;
  wire \slv_reg3_reg_n_0_[11] ;
  wire \slv_reg3_reg_n_0_[12] ;
  wire \slv_reg3_reg_n_0_[13] ;
  wire \slv_reg3_reg_n_0_[14] ;
  wire \slv_reg3_reg_n_0_[15] ;
  wire \slv_reg3_reg_n_0_[16] ;
  wire \slv_reg3_reg_n_0_[17] ;
  wire \slv_reg3_reg_n_0_[18] ;
  wire \slv_reg3_reg_n_0_[19] ;
  wire \slv_reg3_reg_n_0_[1] ;
  wire \slv_reg3_reg_n_0_[20] ;
  wire \slv_reg3_reg_n_0_[21] ;
  wire \slv_reg3_reg_n_0_[22] ;
  wire \slv_reg3_reg_n_0_[23] ;
  wire \slv_reg3_reg_n_0_[24] ;
  wire \slv_reg3_reg_n_0_[25] ;
  wire \slv_reg3_reg_n_0_[26] ;
  wire \slv_reg3_reg_n_0_[27] ;
  wire \slv_reg3_reg_n_0_[28] ;
  wire \slv_reg3_reg_n_0_[29] ;
  wire \slv_reg3_reg_n_0_[2] ;
  wire \slv_reg3_reg_n_0_[30] ;
  wire \slv_reg3_reg_n_0_[31] ;
  wire \slv_reg3_reg_n_0_[3] ;
  wire \slv_reg3_reg_n_0_[4] ;
  wire \slv_reg3_reg_n_0_[5] ;
  wire \slv_reg3_reg_n_0_[6] ;
  wire \slv_reg3_reg_n_0_[7] ;
  wire \slv_reg3_reg_n_0_[9] ;
  wire [1:0]state_read;
  wire [31:0]x1_count_reg;
  wire [31:0]x2_count_reg;
  wire [31:0]y_count_reg;
  wire [31:0]z_count_reg;

  LUT6 #(
    .INIT(64'hFFFFBFAAFFFFBF00)) 
    \FSM_onehot_state_write[1]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(axi_awready_reg_0),
        .I3(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I4(axi_wready),
        .I5(\FSM_onehot_state_write_reg_n_0_[2] ),
        .O(\FSM_onehot_state_write[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0F0F0800)) 
    \FSM_onehot_state_write[2]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_write_reg_n_0_[2] ),
        .O(\FSM_onehot_state_write[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,wdata:100,waddr:010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_write_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(axi_wready),
        .S(SR));
  (* FSM_ENCODED_STATES = "idle:001,wdata:100,waddr:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state_write[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_write_reg_n_0_[1] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "idle:001,wdata:100,waddr:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_write_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state_write[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_write_reg_n_0_[2] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFF0007777FFFF)) 
    \FSM_sequential_state_read[0]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_rready),
        .I3(axi_rvalid_reg_0),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0FFF88880000)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rready),
        .I3(axi_rvalid_reg_0),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:00,rdata:10,raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[0]_i_1_n_0 ),
        .Q(state_read[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "idle:00,rdata:10,raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \axi_araddr[4]_i_2 
       (.I0(s00_axi_aresetn),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_arvalid),
        .I3(state_read[0]),
        .I4(state_read[1]),
        .O(\axi_araddr[4]_i_2_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hC4C4C4C4FFCFCFCF)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(state_read[1]),
        .I3(s00_axi_rready),
        .I4(axi_rvalid_reg_0),
        .I5(state_read[0]),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(axi_arready_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_aresetn),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .I4(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_aresetn),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .I4(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_aresetn),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .I4(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[4] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'hFAFFEAEAFFFFEAEA)) 
    axi_awready_i_2
       (.I0(axi_wready),
        .I1(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I2(s00_axi_wvalid),
        .I3(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I4(axi_awready_reg_0),
        .I5(s00_axi_awvalid),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(axi_awready_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAA8ABA8BB88BB88)) 
    axi_bvalid_i_1
       (.I0(axi_bvalid_i_2_n_0),
        .I1(axi_bvalid_i_3_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_bvalid),
        .I4(s00_axi_bready),
        .I5(\FSM_onehot_state_write_reg_n_0_[2] ),
        .O(axi_bvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFAEAEAEAEAEAEAEA)) 
    axi_bvalid_i_2
       (.I0(axi_wready),
        .I1(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I2(s00_axi_wvalid),
        .I3(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I4(s00_axi_awvalid),
        .I5(axi_awready_reg_0),
        .O(axi_bvalid_i_2_n_0));
  LUT6 #(
    .INIT(64'hAA80808080808080)) 
    axi_bvalid_i_3
       (.I0(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I1(s00_axi_bvalid),
        .I2(s00_axi_bready),
        .I3(axi_awready_reg_0),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_wvalid),
        .O(axi_bvalid_i_3_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'hF0FFFFFF00800080)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(state_read[0]),
        .I3(state_read[1]),
        .I4(s00_axi_rready),
        .I5(axi_rvalid_reg_0),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(SR));
  LUT2 #(
    .INIT(4'hE)) 
    axi_wready_i_1
       (.I0(axi_wready),
        .I1(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(s00_axi_wready),
        .R(SR));
  LUT5 #(
    .INIT(32'h2F000200)) 
    in10_carry_i_1
       (.I0(\slv_reg0_reg_n_0_[6] ),
        .I1(cnt_reg[6]),
        .I2(cnt_reg[7]),
        .I3(\slv_reg0_reg_n_0_[9] ),
        .I4(\slv_reg0_reg_n_0_[7] ),
        .O(DI[3]));
  LUT5 #(
    .INIT(32'h2F000200)) 
    in10_carry_i_1__0
       (.I0(\slv_reg1_reg_n_0_[6] ),
        .I1(cnt_reg[6]),
        .I2(cnt_reg[7]),
        .I3(\slv_reg1_reg_n_0_[9] ),
        .I4(\slv_reg1_reg_n_0_[7] ),
        .O(\slv_reg1_reg[6]_1 [3]));
  LUT5 #(
    .INIT(32'h2F000200)) 
    in10_carry_i_1__1
       (.I0(\slv_reg2_reg_n_0_[6] ),
        .I1(cnt_reg[6]),
        .I2(cnt_reg[7]),
        .I3(\slv_reg2_reg_n_0_[9] ),
        .I4(\slv_reg2_reg_n_0_[7] ),
        .O(\slv_reg2_reg[6]_1 [3]));
  LUT5 #(
    .INIT(32'h2F000200)) 
    in10_carry_i_1__2
       (.I0(\slv_reg3_reg_n_0_[6] ),
        .I1(cnt_reg[6]),
        .I2(cnt_reg[7]),
        .I3(\slv_reg3_reg_n_0_[9] ),
        .I4(\slv_reg3_reg_n_0_[7] ),
        .O(\slv_reg3_reg[6]_1 [3]));
  LUT5 #(
    .INIT(32'h2F000200)) 
    in10_carry_i_2
       (.I0(\slv_reg0_reg_n_0_[4] ),
        .I1(cnt_reg[4]),
        .I2(cnt_reg[5]),
        .I3(\slv_reg0_reg_n_0_[9] ),
        .I4(\slv_reg0_reg_n_0_[5] ),
        .O(DI[2]));
  LUT5 #(
    .INIT(32'h2F000200)) 
    in10_carry_i_2__0
       (.I0(\slv_reg1_reg_n_0_[4] ),
        .I1(cnt_reg[4]),
        .I2(cnt_reg[5]),
        .I3(\slv_reg1_reg_n_0_[9] ),
        .I4(\slv_reg1_reg_n_0_[5] ),
        .O(\slv_reg1_reg[6]_1 [2]));
  LUT5 #(
    .INIT(32'h2F000200)) 
    in10_carry_i_2__1
       (.I0(\slv_reg2_reg_n_0_[4] ),
        .I1(cnt_reg[4]),
        .I2(cnt_reg[5]),
        .I3(\slv_reg2_reg_n_0_[9] ),
        .I4(\slv_reg2_reg_n_0_[5] ),
        .O(\slv_reg2_reg[6]_1 [2]));
  LUT5 #(
    .INIT(32'h2F000200)) 
    in10_carry_i_2__2
       (.I0(\slv_reg3_reg_n_0_[4] ),
        .I1(cnt_reg[4]),
        .I2(cnt_reg[5]),
        .I3(\slv_reg3_reg_n_0_[9] ),
        .I4(\slv_reg3_reg_n_0_[5] ),
        .O(\slv_reg3_reg[6]_1 [2]));
  LUT5 #(
    .INIT(32'h2F000200)) 
    in10_carry_i_3
       (.I0(\slv_reg0_reg_n_0_[2] ),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[3]),
        .I3(\slv_reg0_reg_n_0_[9] ),
        .I4(\slv_reg0_reg_n_0_[3] ),
        .O(DI[1]));
  LUT5 #(
    .INIT(32'h2F000200)) 
    in10_carry_i_3__0
       (.I0(\slv_reg1_reg_n_0_[2] ),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[3]),
        .I3(\slv_reg1_reg_n_0_[9] ),
        .I4(\slv_reg1_reg_n_0_[3] ),
        .O(\slv_reg1_reg[6]_1 [1]));
  LUT5 #(
    .INIT(32'h2F000200)) 
    in10_carry_i_3__1
       (.I0(\slv_reg2_reg_n_0_[2] ),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[3]),
        .I3(\slv_reg2_reg_n_0_[9] ),
        .I4(\slv_reg2_reg_n_0_[3] ),
        .O(\slv_reg2_reg[6]_1 [1]));
  LUT5 #(
    .INIT(32'h2F000200)) 
    in10_carry_i_3__2
       (.I0(\slv_reg3_reg_n_0_[2] ),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[3]),
        .I3(\slv_reg3_reg_n_0_[9] ),
        .I4(\slv_reg3_reg_n_0_[3] ),
        .O(\slv_reg3_reg[6]_1 [1]));
  LUT5 #(
    .INIT(32'h2F000200)) 
    in10_carry_i_4
       (.I0(\slv_reg0_reg_n_0_[0] ),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[1]),
        .I3(\slv_reg0_reg_n_0_[9] ),
        .I4(\slv_reg0_reg_n_0_[1] ),
        .O(DI[0]));
  LUT5 #(
    .INIT(32'h2F000200)) 
    in10_carry_i_4__0
       (.I0(\slv_reg1_reg_n_0_[0] ),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[1]),
        .I3(\slv_reg1_reg_n_0_[9] ),
        .I4(\slv_reg1_reg_n_0_[1] ),
        .O(\slv_reg1_reg[6]_1 [0]));
  LUT5 #(
    .INIT(32'h2F000200)) 
    in10_carry_i_4__1
       (.I0(\slv_reg2_reg_n_0_[0] ),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[1]),
        .I3(\slv_reg2_reg_n_0_[9] ),
        .I4(\slv_reg2_reg_n_0_[1] ),
        .O(\slv_reg2_reg[6]_1 [0]));
  LUT5 #(
    .INIT(32'h2F000200)) 
    in10_carry_i_4__2
       (.I0(\slv_reg3_reg_n_0_[0] ),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[1]),
        .I3(\slv_reg3_reg_n_0_[9] ),
        .I4(\slv_reg3_reg_n_0_[1] ),
        .O(\slv_reg3_reg[6]_1 [0]));
  LUT5 #(
    .INIT(32'h90000393)) 
    in10_carry_i_5
       (.I0(\slv_reg0_reg_n_0_[6] ),
        .I1(cnt_reg[6]),
        .I2(\slv_reg0_reg_n_0_[9] ),
        .I3(\slv_reg0_reg_n_0_[7] ),
        .I4(cnt_reg[7]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h90000393)) 
    in10_carry_i_5__0
       (.I0(\slv_reg1_reg_n_0_[6] ),
        .I1(cnt_reg[6]),
        .I2(\slv_reg1_reg_n_0_[9] ),
        .I3(\slv_reg1_reg_n_0_[7] ),
        .I4(cnt_reg[7]),
        .O(\slv_reg1_reg[6]_0 [3]));
  LUT5 #(
    .INIT(32'h90000393)) 
    in10_carry_i_5__1
       (.I0(\slv_reg2_reg_n_0_[6] ),
        .I1(cnt_reg[6]),
        .I2(\slv_reg2_reg_n_0_[9] ),
        .I3(\slv_reg2_reg_n_0_[7] ),
        .I4(cnt_reg[7]),
        .O(\slv_reg2_reg[6]_0 [3]));
  LUT5 #(
    .INIT(32'h90000393)) 
    in10_carry_i_5__2
       (.I0(\slv_reg3_reg_n_0_[6] ),
        .I1(cnt_reg[6]),
        .I2(\slv_reg3_reg_n_0_[9] ),
        .I3(\slv_reg3_reg_n_0_[7] ),
        .I4(cnt_reg[7]),
        .O(\slv_reg3_reg[6]_0 [3]));
  LUT5 #(
    .INIT(32'h90000393)) 
    in10_carry_i_6
       (.I0(\slv_reg0_reg_n_0_[4] ),
        .I1(cnt_reg[4]),
        .I2(\slv_reg0_reg_n_0_[9] ),
        .I3(\slv_reg0_reg_n_0_[5] ),
        .I4(cnt_reg[5]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h90000393)) 
    in10_carry_i_6__0
       (.I0(\slv_reg1_reg_n_0_[4] ),
        .I1(cnt_reg[4]),
        .I2(\slv_reg1_reg_n_0_[9] ),
        .I3(\slv_reg1_reg_n_0_[5] ),
        .I4(cnt_reg[5]),
        .O(\slv_reg1_reg[6]_0 [2]));
  LUT5 #(
    .INIT(32'h90000393)) 
    in10_carry_i_6__1
       (.I0(\slv_reg2_reg_n_0_[4] ),
        .I1(cnt_reg[4]),
        .I2(\slv_reg2_reg_n_0_[9] ),
        .I3(\slv_reg2_reg_n_0_[5] ),
        .I4(cnt_reg[5]),
        .O(\slv_reg2_reg[6]_0 [2]));
  LUT5 #(
    .INIT(32'h90000393)) 
    in10_carry_i_6__2
       (.I0(\slv_reg3_reg_n_0_[4] ),
        .I1(cnt_reg[4]),
        .I2(\slv_reg3_reg_n_0_[9] ),
        .I3(\slv_reg3_reg_n_0_[5] ),
        .I4(cnt_reg[5]),
        .O(\slv_reg3_reg[6]_0 [2]));
  LUT5 #(
    .INIT(32'h90000393)) 
    in10_carry_i_7
       (.I0(\slv_reg0_reg_n_0_[2] ),
        .I1(cnt_reg[2]),
        .I2(\slv_reg0_reg_n_0_[9] ),
        .I3(\slv_reg0_reg_n_0_[3] ),
        .I4(cnt_reg[3]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h90000393)) 
    in10_carry_i_7__0
       (.I0(\slv_reg1_reg_n_0_[2] ),
        .I1(cnt_reg[2]),
        .I2(\slv_reg1_reg_n_0_[9] ),
        .I3(\slv_reg1_reg_n_0_[3] ),
        .I4(cnt_reg[3]),
        .O(\slv_reg1_reg[6]_0 [1]));
  LUT5 #(
    .INIT(32'h90000393)) 
    in10_carry_i_7__1
       (.I0(\slv_reg2_reg_n_0_[2] ),
        .I1(cnt_reg[2]),
        .I2(\slv_reg2_reg_n_0_[9] ),
        .I3(\slv_reg2_reg_n_0_[3] ),
        .I4(cnt_reg[3]),
        .O(\slv_reg2_reg[6]_0 [1]));
  LUT5 #(
    .INIT(32'h90000393)) 
    in10_carry_i_7__2
       (.I0(\slv_reg3_reg_n_0_[2] ),
        .I1(cnt_reg[2]),
        .I2(\slv_reg3_reg_n_0_[9] ),
        .I3(\slv_reg3_reg_n_0_[3] ),
        .I4(cnt_reg[3]),
        .O(\slv_reg3_reg[6]_0 [1]));
  LUT5 #(
    .INIT(32'h90000393)) 
    in10_carry_i_8
       (.I0(\slv_reg0_reg_n_0_[0] ),
        .I1(cnt_reg[0]),
        .I2(\slv_reg0_reg_n_0_[9] ),
        .I3(\slv_reg0_reg_n_0_[1] ),
        .I4(cnt_reg[1]),
        .O(S[0]));
  LUT5 #(
    .INIT(32'h90000393)) 
    in10_carry_i_8__0
       (.I0(\slv_reg1_reg_n_0_[0] ),
        .I1(cnt_reg[0]),
        .I2(\slv_reg1_reg_n_0_[9] ),
        .I3(\slv_reg1_reg_n_0_[1] ),
        .I4(cnt_reg[1]),
        .O(\slv_reg1_reg[6]_0 [0]));
  LUT5 #(
    .INIT(32'h90000393)) 
    in10_carry_i_8__1
       (.I0(\slv_reg2_reg_n_0_[0] ),
        .I1(cnt_reg[0]),
        .I2(\slv_reg2_reg_n_0_[9] ),
        .I3(\slv_reg2_reg_n_0_[1] ),
        .I4(cnt_reg[1]),
        .O(\slv_reg2_reg[6]_0 [0]));
  LUT5 #(
    .INIT(32'h90000393)) 
    in10_carry_i_8__2
       (.I0(\slv_reg3_reg_n_0_[0] ),
        .I1(cnt_reg[0]),
        .I2(\slv_reg3_reg_n_0_[9] ),
        .I3(\slv_reg3_reg_n_0_[1] ),
        .I4(cnt_reg[1]),
        .O(\slv_reg3_reg[6]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m1_in1_INST_0
       (.I0(CO),
        .I1(reg_x1_ctrl),
        .O(m1_in1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m1_in2_INST_0
       (.I0(reg_x1_ctrl),
        .I1(CO),
        .O(m1_in2));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m2_in1_INST_0
       (.I0(m2_in1_0),
        .I1(reg_x2_ctrl),
        .O(m2_in1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m2_in2_INST_0
       (.I0(reg_x2_ctrl),
        .I1(m2_in1_0),
        .O(m2_in2));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m3_in1_INST_0
       (.I0(m3_in1_0),
        .I1(reg_y_ctrl),
        .O(m3_in1));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m3_in2_INST_0
       (.I0(reg_y_ctrl),
        .I1(m3_in1_0),
        .O(m3_in2));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m4_in1_INST_0
       (.I0(m4_in1_0),
        .I1(reg_z_ctrl),
        .O(m4_in1));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m4_in2_INST_0
       (.I0(reg_z_ctrl),
        .I1(m4_in1_0),
        .O(m4_in2));
  MUXF7 \s00_axi_rdata[0]_INST_0 
       (.I0(\s00_axi_rdata[0]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[0]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[0]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[0] ),
        .I1(\slv_reg2_reg_n_0_[0] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[0] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[0] ),
        .O(\s00_axi_rdata[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_2 
       (.I0(z_count_reg[0]),
        .I1(y_count_reg[0]),
        .I2(sel0[1]),
        .I3(x2_count_reg[0]),
        .I4(sel0[0]),
        .I5(x1_count_reg[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[10]_INST_0 
       (.I0(\s00_axi_rdata[10]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[10]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[10]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[10]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[10] ),
        .I1(\slv_reg2_reg_n_0_[10] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[10] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[10] ),
        .O(\s00_axi_rdata[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[10]_INST_0_i_2 
       (.I0(z_count_reg[10]),
        .I1(y_count_reg[10]),
        .I2(sel0[1]),
        .I3(x2_count_reg[10]),
        .I4(sel0[0]),
        .I5(x1_count_reg[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[11]_INST_0 
       (.I0(\s00_axi_rdata[11]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[11]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[11]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[11]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[11] ),
        .I1(\slv_reg2_reg_n_0_[11] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[11] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[11] ),
        .O(\s00_axi_rdata[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[11]_INST_0_i_2 
       (.I0(z_count_reg[11]),
        .I1(y_count_reg[11]),
        .I2(sel0[1]),
        .I3(x2_count_reg[11]),
        .I4(sel0[0]),
        .I5(x1_count_reg[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[12]_INST_0 
       (.I0(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[12]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[12]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[12]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[12] ),
        .I1(\slv_reg2_reg_n_0_[12] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[12] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[12] ),
        .O(\s00_axi_rdata[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[12]_INST_0_i_2 
       (.I0(z_count_reg[12]),
        .I1(y_count_reg[12]),
        .I2(sel0[1]),
        .I3(x2_count_reg[12]),
        .I4(sel0[0]),
        .I5(x1_count_reg[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[13]_INST_0 
       (.I0(\s00_axi_rdata[13]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[13]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[13]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[13]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[13] ),
        .I1(\slv_reg2_reg_n_0_[13] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[13] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[13] ),
        .O(\s00_axi_rdata[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[13]_INST_0_i_2 
       (.I0(z_count_reg[13]),
        .I1(y_count_reg[13]),
        .I2(sel0[1]),
        .I3(x2_count_reg[13]),
        .I4(sel0[0]),
        .I5(x1_count_reg[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[14]_INST_0 
       (.I0(\s00_axi_rdata[14]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[14]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[14]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[14]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[14] ),
        .I1(\slv_reg2_reg_n_0_[14] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[14] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[14] ),
        .O(\s00_axi_rdata[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[14]_INST_0_i_2 
       (.I0(z_count_reg[14]),
        .I1(y_count_reg[14]),
        .I2(sel0[1]),
        .I3(x2_count_reg[14]),
        .I4(sel0[0]),
        .I5(x1_count_reg[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[15]_INST_0 
       (.I0(\s00_axi_rdata[15]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[15]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[15]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[15]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[15] ),
        .I1(\slv_reg2_reg_n_0_[15] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[15] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[15] ),
        .O(\s00_axi_rdata[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[15]_INST_0_i_2 
       (.I0(z_count_reg[15]),
        .I1(y_count_reg[15]),
        .I2(sel0[1]),
        .I3(x2_count_reg[15]),
        .I4(sel0[0]),
        .I5(x1_count_reg[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[16]_INST_0 
       (.I0(\s00_axi_rdata[16]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[16]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[16]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[16]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[16] ),
        .I1(\slv_reg2_reg_n_0_[16] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[16] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[16] ),
        .O(\s00_axi_rdata[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[16]_INST_0_i_2 
       (.I0(z_count_reg[16]),
        .I1(y_count_reg[16]),
        .I2(sel0[1]),
        .I3(x2_count_reg[16]),
        .I4(sel0[0]),
        .I5(x1_count_reg[16]),
        .O(\s00_axi_rdata[16]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[17]_INST_0 
       (.I0(\s00_axi_rdata[17]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[17]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[17]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[17]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[17] ),
        .I1(\slv_reg2_reg_n_0_[17] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[17] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[17] ),
        .O(\s00_axi_rdata[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[17]_INST_0_i_2 
       (.I0(z_count_reg[17]),
        .I1(y_count_reg[17]),
        .I2(sel0[1]),
        .I3(x2_count_reg[17]),
        .I4(sel0[0]),
        .I5(x1_count_reg[17]),
        .O(\s00_axi_rdata[17]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[18]_INST_0 
       (.I0(\s00_axi_rdata[18]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[18]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[18]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[18]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[18] ),
        .I1(\slv_reg2_reg_n_0_[18] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[18] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[18] ),
        .O(\s00_axi_rdata[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[18]_INST_0_i_2 
       (.I0(z_count_reg[18]),
        .I1(y_count_reg[18]),
        .I2(sel0[1]),
        .I3(x2_count_reg[18]),
        .I4(sel0[0]),
        .I5(x1_count_reg[18]),
        .O(\s00_axi_rdata[18]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[19]_INST_0 
       (.I0(\s00_axi_rdata[19]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[19]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[19]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[19]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[19] ),
        .I1(\slv_reg2_reg_n_0_[19] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[19] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[19] ),
        .O(\s00_axi_rdata[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[19]_INST_0_i_2 
       (.I0(z_count_reg[19]),
        .I1(y_count_reg[19]),
        .I2(sel0[1]),
        .I3(x2_count_reg[19]),
        .I4(sel0[0]),
        .I5(x1_count_reg[19]),
        .O(\s00_axi_rdata[19]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[1]_INST_0 
       (.I0(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[1]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[1]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[1] ),
        .I1(\slv_reg2_reg_n_0_[1] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[1] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[1] ),
        .O(\s00_axi_rdata[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_2 
       (.I0(z_count_reg[1]),
        .I1(y_count_reg[1]),
        .I2(sel0[1]),
        .I3(x2_count_reg[1]),
        .I4(sel0[0]),
        .I5(x1_count_reg[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[20]_INST_0 
       (.I0(\s00_axi_rdata[20]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[20]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[20]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[20]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[20] ),
        .I1(\slv_reg2_reg_n_0_[20] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[20] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[20] ),
        .O(\s00_axi_rdata[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[20]_INST_0_i_2 
       (.I0(z_count_reg[20]),
        .I1(y_count_reg[20]),
        .I2(sel0[1]),
        .I3(x2_count_reg[20]),
        .I4(sel0[0]),
        .I5(x1_count_reg[20]),
        .O(\s00_axi_rdata[20]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[21]_INST_0 
       (.I0(\s00_axi_rdata[21]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[21]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[21]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[21]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[21] ),
        .I1(\slv_reg2_reg_n_0_[21] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[21] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[21] ),
        .O(\s00_axi_rdata[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[21]_INST_0_i_2 
       (.I0(z_count_reg[21]),
        .I1(y_count_reg[21]),
        .I2(sel0[1]),
        .I3(x2_count_reg[21]),
        .I4(sel0[0]),
        .I5(x1_count_reg[21]),
        .O(\s00_axi_rdata[21]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[22]_INST_0 
       (.I0(\s00_axi_rdata[22]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[22]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[22]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[22]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[22] ),
        .I1(\slv_reg2_reg_n_0_[22] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[22] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[22] ),
        .O(\s00_axi_rdata[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[22]_INST_0_i_2 
       (.I0(z_count_reg[22]),
        .I1(y_count_reg[22]),
        .I2(sel0[1]),
        .I3(x2_count_reg[22]),
        .I4(sel0[0]),
        .I5(x1_count_reg[22]),
        .O(\s00_axi_rdata[22]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[23]_INST_0 
       (.I0(\s00_axi_rdata[23]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[23]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[23]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[23]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[23] ),
        .I1(\slv_reg2_reg_n_0_[23] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[23] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[23] ),
        .O(\s00_axi_rdata[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[23]_INST_0_i_2 
       (.I0(z_count_reg[23]),
        .I1(y_count_reg[23]),
        .I2(sel0[1]),
        .I3(x2_count_reg[23]),
        .I4(sel0[0]),
        .I5(x1_count_reg[23]),
        .O(\s00_axi_rdata[23]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[24]_INST_0 
       (.I0(\s00_axi_rdata[24]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[24]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[24]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[24]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[24] ),
        .I1(\slv_reg2_reg_n_0_[24] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[24] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[24] ),
        .O(\s00_axi_rdata[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[24]_INST_0_i_2 
       (.I0(z_count_reg[24]),
        .I1(y_count_reg[24]),
        .I2(sel0[1]),
        .I3(x2_count_reg[24]),
        .I4(sel0[0]),
        .I5(x1_count_reg[24]),
        .O(\s00_axi_rdata[24]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[25]_INST_0 
       (.I0(\s00_axi_rdata[25]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[25]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[25]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[25]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[25] ),
        .I1(\slv_reg2_reg_n_0_[25] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[25] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[25] ),
        .O(\s00_axi_rdata[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[25]_INST_0_i_2 
       (.I0(z_count_reg[25]),
        .I1(y_count_reg[25]),
        .I2(sel0[1]),
        .I3(x2_count_reg[25]),
        .I4(sel0[0]),
        .I5(x1_count_reg[25]),
        .O(\s00_axi_rdata[25]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[26]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[26]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[26]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[26] ),
        .I1(\slv_reg2_reg_n_0_[26] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[26] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[26] ),
        .O(\s00_axi_rdata[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[26]_INST_0_i_2 
       (.I0(z_count_reg[26]),
        .I1(y_count_reg[26]),
        .I2(sel0[1]),
        .I3(x2_count_reg[26]),
        .I4(sel0[0]),
        .I5(x1_count_reg[26]),
        .O(\s00_axi_rdata[26]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[27]_INST_0 
       (.I0(\s00_axi_rdata[27]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[27]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[27]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[27]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[27] ),
        .I1(\slv_reg2_reg_n_0_[27] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[27] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[27] ),
        .O(\s00_axi_rdata[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[27]_INST_0_i_2 
       (.I0(z_count_reg[27]),
        .I1(y_count_reg[27]),
        .I2(sel0[1]),
        .I3(x2_count_reg[27]),
        .I4(sel0[0]),
        .I5(x1_count_reg[27]),
        .O(\s00_axi_rdata[27]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[28]_INST_0 
       (.I0(\s00_axi_rdata[28]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[28]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[28]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[28]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[28] ),
        .I1(\slv_reg2_reg_n_0_[28] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[28] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[28] ),
        .O(\s00_axi_rdata[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[28]_INST_0_i_2 
       (.I0(z_count_reg[28]),
        .I1(y_count_reg[28]),
        .I2(sel0[1]),
        .I3(x2_count_reg[28]),
        .I4(sel0[0]),
        .I5(x1_count_reg[28]),
        .O(\s00_axi_rdata[28]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[29]_INST_0 
       (.I0(\s00_axi_rdata[29]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[29]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[29]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[29]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[29] ),
        .I1(\slv_reg2_reg_n_0_[29] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[29] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[29] ),
        .O(\s00_axi_rdata[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[29]_INST_0_i_2 
       (.I0(z_count_reg[29]),
        .I1(y_count_reg[29]),
        .I2(sel0[1]),
        .I3(x2_count_reg[29]),
        .I4(sel0[0]),
        .I5(x1_count_reg[29]),
        .O(\s00_axi_rdata[29]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[2]_INST_0 
       (.I0(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[2]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[2]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[2] ),
        .I1(\slv_reg2_reg_n_0_[2] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[2] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[2] ),
        .O(\s00_axi_rdata[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_2 
       (.I0(z_count_reg[2]),
        .I1(y_count_reg[2]),
        .I2(sel0[1]),
        .I3(x2_count_reg[2]),
        .I4(sel0[0]),
        .I5(x1_count_reg[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[30]_INST_0 
       (.I0(\s00_axi_rdata[30]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[30]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[30]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[30]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[30] ),
        .I1(\slv_reg2_reg_n_0_[30] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[30] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[30] ),
        .O(\s00_axi_rdata[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[30]_INST_0_i_2 
       (.I0(z_count_reg[30]),
        .I1(y_count_reg[30]),
        .I2(sel0[1]),
        .I3(x2_count_reg[30]),
        .I4(sel0[0]),
        .I5(x1_count_reg[30]),
        .O(\s00_axi_rdata[30]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[31]_INST_0 
       (.I0(\s00_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[31]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[31]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[31] ),
        .I1(\slv_reg2_reg_n_0_[31] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[31] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[31] ),
        .O(\s00_axi_rdata[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[31]_INST_0_i_2 
       (.I0(z_count_reg[31]),
        .I1(y_count_reg[31]),
        .I2(sel0[1]),
        .I3(x2_count_reg[31]),
        .I4(sel0[0]),
        .I5(x1_count_reg[31]),
        .O(\s00_axi_rdata[31]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[3]_INST_0 
       (.I0(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[3]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[3]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[3] ),
        .I1(\slv_reg2_reg_n_0_[3] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[3] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[3] ),
        .O(\s00_axi_rdata[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0_i_2 
       (.I0(z_count_reg[3]),
        .I1(y_count_reg[3]),
        .I2(sel0[1]),
        .I3(x2_count_reg[3]),
        .I4(sel0[0]),
        .I5(x1_count_reg[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[4]_INST_0 
       (.I0(\s00_axi_rdata[4]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[4]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[4]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[4] ),
        .I1(\slv_reg2_reg_n_0_[4] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[4] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[4] ),
        .O(\s00_axi_rdata[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0_i_2 
       (.I0(z_count_reg[4]),
        .I1(y_count_reg[4]),
        .I2(sel0[1]),
        .I3(x2_count_reg[4]),
        .I4(sel0[0]),
        .I5(x1_count_reg[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[5]_INST_0 
       (.I0(\s00_axi_rdata[5]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[5]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[5]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[5] ),
        .I1(\slv_reg2_reg_n_0_[5] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[5] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[5] ),
        .O(\s00_axi_rdata[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0_i_2 
       (.I0(z_count_reg[5]),
        .I1(y_count_reg[5]),
        .I2(sel0[1]),
        .I3(x2_count_reg[5]),
        .I4(sel0[0]),
        .I5(x1_count_reg[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[6]_INST_0 
       (.I0(\s00_axi_rdata[6]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[6]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[6]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[6] ),
        .I1(\slv_reg2_reg_n_0_[6] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[6] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[6] ),
        .O(\s00_axi_rdata[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0_i_2 
       (.I0(z_count_reg[6]),
        .I1(y_count_reg[6]),
        .I2(sel0[1]),
        .I3(x2_count_reg[6]),
        .I4(sel0[0]),
        .I5(x1_count_reg[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[7]_INST_0 
       (.I0(\s00_axi_rdata[7]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[7]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[7]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[7] ),
        .I1(\slv_reg2_reg_n_0_[7] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[7] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[7] ),
        .O(\s00_axi_rdata[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_2 
       (.I0(z_count_reg[7]),
        .I1(y_count_reg[7]),
        .I2(sel0[1]),
        .I3(x2_count_reg[7]),
        .I4(sel0[0]),
        .I5(x1_count_reg[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[8]_INST_0 
       (.I0(\s00_axi_rdata[8]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[8]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[8]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[8]_INST_0_i_1 
       (.I0(reg_z_ctrl),
        .I1(reg_y_ctrl),
        .I2(sel0[1]),
        .I3(reg_x2_ctrl),
        .I4(sel0[0]),
        .I5(reg_x1_ctrl),
        .O(\s00_axi_rdata[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[8]_INST_0_i_2 
       (.I0(z_count_reg[8]),
        .I1(y_count_reg[8]),
        .I2(sel0[1]),
        .I3(x2_count_reg[8]),
        .I4(sel0[0]),
        .I5(x1_count_reg[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[9]_INST_0 
       (.I0(\s00_axi_rdata[9]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[9]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[9]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[9]_INST_0_i_1 
       (.I0(\slv_reg3_reg_n_0_[9] ),
        .I1(\slv_reg2_reg_n_0_[9] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[9] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[9] ),
        .O(\s00_axi_rdata[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[9]_INST_0_i_2 
       (.I0(z_count_reg[9]),
        .I1(y_count_reg[9]),
        .I2(sel0[1]),
        .I3(x2_count_reg[9]),
        .I4(sel0[0]),
        .I5(x1_count_reg[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \slv_reg0[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(mem_logic__2[4]),
        .I2(s00_axi_wstrb[1]),
        .I3(mem_logic__2[2]),
        .I4(mem_logic__2[3]),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'h00000020)) 
    \slv_reg0[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(mem_logic__2[4]),
        .I2(s00_axi_wstrb[2]),
        .I3(mem_logic__2[2]),
        .I4(mem_logic__2[3]),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'h00000020)) 
    \slv_reg0[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(mem_logic__2[4]),
        .I2(s00_axi_wstrb[3]),
        .I3(mem_logic__2[2]),
        .I4(mem_logic__2[3]),
        .O(p_1_in[31]));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .O(mem_logic__2[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg0[31]_i_3 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .O(mem_logic__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg0[31]_i_4 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .O(mem_logic__2[3]));
  LUT5 #(
    .INIT(32'h00000020)) 
    \slv_reg0[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(mem_logic__2[4]),
        .I2(s00_axi_wstrb[0]),
        .I3(mem_logic__2[2]),
        .I4(mem_logic__2[3]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(SR));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[8]),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(SR));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[8]),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(SR));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[8]),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(SR));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[8]),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(SR));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[8]),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(SR));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[8]),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(SR));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(SR));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(SR));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(SR));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(SR));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(SR));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(SR));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(SR));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(SR));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(SR));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(SR));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(SR));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(SR));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(SR));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(SR));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(SR));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(SR));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(SR));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(SR));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(SR));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(SR));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(SR));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(SR));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(SR));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[8]),
        .D(s00_axi_wdata[8]),
        .Q(reg_x1_ctrl),
        .R(SR));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[8]),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(SR));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(mem_logic__2[4]),
        .I2(mem_logic__2[3]),
        .I3(mem_logic__2[2]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(mem_logic__2[4]),
        .I2(mem_logic__2[3]),
        .I3(mem_logic__2[2]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(mem_logic__2[4]),
        .I2(mem_logic__2[3]),
        .I3(mem_logic__2[2]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(mem_logic__2[4]),
        .I2(mem_logic__2[3]),
        .I3(mem_logic__2[2]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg1_reg_n_0_[0] ),
        .R(SR));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg1_reg_n_0_[10] ),
        .R(SR));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg1_reg_n_0_[11] ),
        .R(SR));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg1_reg_n_0_[12] ),
        .R(SR));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg1_reg_n_0_[13] ),
        .R(SR));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg1_reg_n_0_[14] ),
        .R(SR));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg1_reg_n_0_[15] ),
        .R(SR));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg1_reg_n_0_[16] ),
        .R(SR));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg1_reg_n_0_[17] ),
        .R(SR));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg1_reg_n_0_[18] ),
        .R(SR));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg1_reg_n_0_[19] ),
        .R(SR));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg1_reg_n_0_[1] ),
        .R(SR));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg1_reg_n_0_[20] ),
        .R(SR));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg1_reg_n_0_[21] ),
        .R(SR));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg1_reg_n_0_[22] ),
        .R(SR));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg1_reg_n_0_[23] ),
        .R(SR));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg1_reg_n_0_[24] ),
        .R(SR));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg1_reg_n_0_[25] ),
        .R(SR));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg1_reg_n_0_[26] ),
        .R(SR));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg1_reg_n_0_[27] ),
        .R(SR));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg1_reg_n_0_[28] ),
        .R(SR));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg1_reg_n_0_[29] ),
        .R(SR));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg1_reg_n_0_[2] ),
        .R(SR));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg1_reg_n_0_[30] ),
        .R(SR));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg1_reg_n_0_[31] ),
        .R(SR));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg1_reg_n_0_[3] ),
        .R(SR));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg1_reg_n_0_[4] ),
        .R(SR));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg1_reg_n_0_[5] ),
        .R(SR));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg1_reg_n_0_[6] ),
        .R(SR));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg1_reg_n_0_[7] ),
        .R(SR));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(reg_x2_ctrl),
        .R(SR));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg1_reg_n_0_[9] ),
        .R(SR));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(mem_logic__2[4]),
        .I2(mem_logic__2[2]),
        .I3(s00_axi_wstrb[1]),
        .I4(mem_logic__2[3]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(mem_logic__2[4]),
        .I2(mem_logic__2[2]),
        .I3(s00_axi_wstrb[2]),
        .I4(mem_logic__2[3]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(mem_logic__2[4]),
        .I2(mem_logic__2[2]),
        .I3(s00_axi_wstrb[3]),
        .I4(mem_logic__2[3]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(mem_logic__2[4]),
        .I2(mem_logic__2[2]),
        .I3(s00_axi_wstrb[0]),
        .I4(mem_logic__2[3]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg2_reg_n_0_[0] ),
        .R(SR));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg2_reg_n_0_[10] ),
        .R(SR));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg2_reg_n_0_[11] ),
        .R(SR));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg2_reg_n_0_[12] ),
        .R(SR));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg2_reg_n_0_[13] ),
        .R(SR));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg2_reg_n_0_[14] ),
        .R(SR));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg2_reg_n_0_[15] ),
        .R(SR));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg2_reg_n_0_[16] ),
        .R(SR));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg2_reg_n_0_[17] ),
        .R(SR));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg2_reg_n_0_[18] ),
        .R(SR));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg2_reg_n_0_[19] ),
        .R(SR));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg2_reg_n_0_[1] ),
        .R(SR));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg2_reg_n_0_[20] ),
        .R(SR));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg2_reg_n_0_[21] ),
        .R(SR));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg2_reg_n_0_[22] ),
        .R(SR));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg2_reg_n_0_[23] ),
        .R(SR));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg2_reg_n_0_[24] ),
        .R(SR));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg2_reg_n_0_[25] ),
        .R(SR));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg2_reg_n_0_[26] ),
        .R(SR));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg2_reg_n_0_[27] ),
        .R(SR));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg2_reg_n_0_[28] ),
        .R(SR));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg2_reg_n_0_[29] ),
        .R(SR));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg2_reg_n_0_[2] ),
        .R(SR));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg2_reg_n_0_[30] ),
        .R(SR));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg2_reg_n_0_[31] ),
        .R(SR));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg2_reg_n_0_[3] ),
        .R(SR));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg2_reg_n_0_[4] ),
        .R(SR));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg2_reg_n_0_[5] ),
        .R(SR));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg2_reg_n_0_[6] ),
        .R(SR));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg2_reg_n_0_[7] ),
        .R(SR));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(reg_y_ctrl),
        .R(SR));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg2_reg_n_0_[9] ),
        .R(SR));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(mem_logic__2[4]),
        .I2(mem_logic__2[3]),
        .I3(mem_logic__2[2]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(mem_logic__2[4]),
        .I2(mem_logic__2[3]),
        .I3(mem_logic__2[2]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(mem_logic__2[4]),
        .I2(mem_logic__2[3]),
        .I3(mem_logic__2[2]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(mem_logic__2[4]),
        .I2(mem_logic__2[3]),
        .I3(mem_logic__2[2]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg3_reg_n_0_[0] ),
        .R(SR));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg3_reg_n_0_[10] ),
        .R(SR));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg3_reg_n_0_[11] ),
        .R(SR));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg3_reg_n_0_[12] ),
        .R(SR));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg3_reg_n_0_[13] ),
        .R(SR));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg3_reg_n_0_[14] ),
        .R(SR));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg3_reg_n_0_[15] ),
        .R(SR));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg3_reg_n_0_[16] ),
        .R(SR));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg3_reg_n_0_[17] ),
        .R(SR));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg3_reg_n_0_[18] ),
        .R(SR));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg3_reg_n_0_[19] ),
        .R(SR));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg3_reg_n_0_[1] ),
        .R(SR));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg3_reg_n_0_[20] ),
        .R(SR));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg3_reg_n_0_[21] ),
        .R(SR));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg3_reg_n_0_[22] ),
        .R(SR));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg3_reg_n_0_[23] ),
        .R(SR));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg3_reg_n_0_[24] ),
        .R(SR));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg3_reg_n_0_[25] ),
        .R(SR));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg3_reg_n_0_[26] ),
        .R(SR));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg3_reg_n_0_[27] ),
        .R(SR));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg3_reg_n_0_[28] ),
        .R(SR));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg3_reg_n_0_[29] ),
        .R(SR));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg3_reg_n_0_[2] ),
        .R(SR));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg3_reg_n_0_[30] ),
        .R(SR));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg3_reg_n_0_[31] ),
        .R(SR));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg3_reg_n_0_[3] ),
        .R(SR));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg3_reg_n_0_[4] ),
        .R(SR));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg3_reg_n_0_[5] ),
        .R(SR));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg3_reg_n_0_[6] ),
        .R(SR));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg3_reg_n_0_[7] ),
        .R(SR));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(reg_z_ctrl),
        .R(SR));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg3_reg_n_0_[9] ),
        .R(SR));
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
