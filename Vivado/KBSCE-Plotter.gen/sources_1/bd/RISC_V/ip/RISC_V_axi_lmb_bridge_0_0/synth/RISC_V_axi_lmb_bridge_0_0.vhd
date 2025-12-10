-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:axi_lmb_bridge:1.0
-- IP Revision: 4

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY axi_lmb_bridge_v1_0_4;
USE axi_lmb_bridge_v1_0_4.axi_lmb_bridge;

ENTITY RISC_V_axi_lmb_bridge_0_0 IS
  PORT (
    Clk : IN STD_LOGIC;
    Rst : IN STD_LOGIC;
    S_AXI_AWADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_AWLEN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    S_AXI_AWSIZE : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S_AXI_AWBURST : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_AWVALID : IN STD_LOGIC;
    S_AXI_AWREADY : OUT STD_LOGIC;
    S_AXI_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S_AXI_WLAST : IN STD_LOGIC;
    S_AXI_WVALID : IN STD_LOGIC;
    S_AXI_WREADY : OUT STD_LOGIC;
    S_AXI_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_BVALID : OUT STD_LOGIC;
    S_AXI_BREADY : IN STD_LOGIC;
    S_AXI_ARADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_ARLEN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    S_AXI_ARSIZE : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S_AXI_ARBURST : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_ARVALID : IN STD_LOGIC;
    S_AXI_ARREADY : OUT STD_LOGIC;
    S_AXI_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_RLAST : OUT STD_LOGIC;
    S_AXI_RVALID : OUT STD_LOGIC;
    S_AXI_RREADY : IN STD_LOGIC;
    M_ABus : OUT STD_LOGIC_VECTOR(0 TO 31);
    LMB_ReadDBus : IN STD_LOGIC_VECTOR(0 TO 31);
    M_DBus : OUT STD_LOGIC_VECTOR(0 TO 31);
    M_AddrStrobe : OUT STD_LOGIC;
    M_ReadStrobe : OUT STD_LOGIC;
    M_WriteStrobe : OUT STD_LOGIC;
    LMB_Ready : IN STD_LOGIC;
    LMB_Wait : IN STD_LOGIC;
    LMB_CE : IN STD_LOGIC;
    LMB_UE : IN STD_LOGIC;
    M_BE : OUT STD_LOGIC_VECTOR(0 TO 3)
  );
END RISC_V_axi_lmb_bridge_0_0;

ARCHITECTURE RISC_V_axi_lmb_bridge_0_0_arch OF RISC_V_axi_lmb_bridge_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF RISC_V_axi_lmb_bridge_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT axi_lmb_bridge IS
    GENERIC (
      C_DATA_WIDTH : INTEGER;
      C_ADDR_WIDTH : INTEGER;
      C_AXI_AW_DEPTH : INTEGER;
      C_AXI_W_DEPTH : INTEGER;
      C_AXI_AR_DEPTH : INTEGER;
      C_AXI_R_DEPTH : INTEGER;
      C_AXI_ID_WIDTH : INTEGER;
      C_USE_PAUSE : INTEGER;
      C_LMB_PROTOCOL : INTEGER
    );
    PORT (
      Clk : IN STD_LOGIC;
      Rst : IN STD_LOGIC;
      Pause : IN STD_LOGIC;
      Pause_Ack : OUT STD_LOGIC;
      S_AXI_AWID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S_AXI_AWADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      S_AXI_AWLEN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      S_AXI_AWSIZE : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      S_AXI_AWBURST : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      S_AXI_AWVALID : IN STD_LOGIC;
      S_AXI_AWREADY : OUT STD_LOGIC;
      S_AXI_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      S_AXI_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S_AXI_WLAST : IN STD_LOGIC;
      S_AXI_WVALID : IN STD_LOGIC;
      S_AXI_WREADY : OUT STD_LOGIC;
      S_AXI_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      S_AXI_BID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      S_AXI_BVALID : OUT STD_LOGIC;
      S_AXI_BREADY : IN STD_LOGIC;
      S_AXI_ARID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S_AXI_ARADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      S_AXI_ARLEN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      S_AXI_ARSIZE : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      S_AXI_ARBURST : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      S_AXI_ARVALID : IN STD_LOGIC;
      S_AXI_ARREADY : OUT STD_LOGIC;
      S_AXI_RID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      S_AXI_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      S_AXI_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      S_AXI_RLAST : OUT STD_LOGIC;
      S_AXI_RVALID : OUT STD_LOGIC;
      S_AXI_RREADY : IN STD_LOGIC;
      M_ABus : OUT STD_LOGIC_VECTOR(0 TO 31);
      LMB_ReadDBus : IN STD_LOGIC_VECTOR(0 TO 31);
      M_DBus : OUT STD_LOGIC_VECTOR(0 TO 31);
      M_AddrStrobe : OUT STD_LOGIC;
      M_ReadStrobe : OUT STD_LOGIC;
      M_WriteStrobe : OUT STD_LOGIC;
      LMB_Ready : IN STD_LOGIC;
      LMB_Wait : IN STD_LOGIC;
      LMB_CE : IN STD_LOGIC;
      LMB_UE : IN STD_LOGIC;
      M_BE : OUT STD_LOGIC_VECTOR(0 TO 3)
    );
  END COMPONENT axi_lmb_bridge;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF RISC_V_axi_lmb_bridge_0_0_arch: ARCHITECTURE IS "axi_lmb_bridge,Vivado 2025.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF RISC_V_axi_lmb_bridge_0_0_arch : ARCHITECTURE IS "RISC_V_axi_lmb_bridge_0_0,axi_lmb_bridge,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF RISC_V_axi_lmb_bridge_0_0_arch: ARCHITECTURE IS "RISC_V_axi_lmb_bridge_0_0,axi_lmb_bridge,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_lmb_bridge,x_ipVersion=1.0,x_ipCoreRevision=4,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_DATA_WIDTH=32,C_ADDR_WIDTH=32,C_AXI_AW_DEPTH=2,C_AXI_W_DEPTH=8,C_AXI_AR_DEPTH=2,C_AXI_R_DEPTH=8,C_AXI_ID_WIDTH=1,C_USE_PAUSE=0,C_LMB_PROTOCOL=0}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_MODE : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF Clk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  ATTRIBUTE X_INTERFACE_MODE OF Clk: SIGNAL IS "slave CLK.CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Clk: SIGNAL IS "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF LMB_CE: SIGNAL IS "xilinx.com:interface:lmb:1.0 LMB CE";
  ATTRIBUTE X_INTERFACE_INFO OF LMB_ReadDBus: SIGNAL IS "xilinx.com:interface:lmb:1.0 LMB READDBUS";
  ATTRIBUTE X_INTERFACE_INFO OF LMB_Ready: SIGNAL IS "xilinx.com:interface:lmb:1.0 LMB READY";
  ATTRIBUTE X_INTERFACE_INFO OF LMB_UE: SIGNAL IS "xilinx.com:interface:lmb:1.0 LMB UE";
  ATTRIBUTE X_INTERFACE_INFO OF LMB_Wait: SIGNAL IS "xilinx.com:interface:lmb:1.0 LMB WAIT";
  ATTRIBUTE X_INTERFACE_INFO OF M_ABus: SIGNAL IS "xilinx.com:interface:lmb:1.0 LMB ABUS";
  ATTRIBUTE X_INTERFACE_MODE OF M_ABus: SIGNAL IS "master LMB";
  ATTRIBUTE X_INTERFACE_PARAMETER OF M_ABus: SIGNAL IS "XIL_INTERFACENAME LMB, ADDR_WIDTH 32, DATA_WIDTH 32, PROTOCOL STANDARD, READ_WRITE_MODE READ_WRITE";
  ATTRIBUTE X_INTERFACE_INFO OF M_AddrStrobe: SIGNAL IS "xilinx.com:interface:lmb:1.0 LMB ADDRSTROBE";
  ATTRIBUTE X_INTERFACE_INFO OF M_BE: SIGNAL IS "xilinx.com:interface:lmb:1.0 LMB BE";
  ATTRIBUTE X_INTERFACE_INFO OF M_DBus: SIGNAL IS "xilinx.com:interface:lmb:1.0 LMB WRITEDBUS";
  ATTRIBUTE X_INTERFACE_INFO OF M_ReadStrobe: SIGNAL IS "xilinx.com:interface:lmb:1.0 LMB READSTROBE";
  ATTRIBUTE X_INTERFACE_INFO OF M_WriteStrobe: SIGNAL IS "xilinx.com:interface:lmb:1.0 LMB WRITESTROBE";
  ATTRIBUTE X_INTERFACE_INFO OF Rst: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.RESET RST";
  ATTRIBUTE X_INTERFACE_MODE OF Rst: SIGNAL IS "slave RST.RESET";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Rst: SIGNAL IS "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_ARBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_ARLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_ARSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_MODE OF S_AXI_AWADDR: SIGNAL IS "slave S_AXI";
  ATTRIBUTE X_INTERFACE_PARAMETER OF S_AXI_AWADDR: SIGNAL IS "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, READ_WRITE_MODE READ_WRITE, SUPPORTS_NARROW_BURST 1, HAS_BURST 1, HAS_LOCK 0, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, " & 
"RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_AWBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_AWLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_AWSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_RLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_WLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
BEGIN
  U0 : axi_lmb_bridge
    GENERIC MAP (
      C_DATA_WIDTH => 32,
      C_ADDR_WIDTH => 32,
      C_AXI_AW_DEPTH => 2,
      C_AXI_W_DEPTH => 8,
      C_AXI_AR_DEPTH => 2,
      C_AXI_R_DEPTH => 8,
      C_AXI_ID_WIDTH => 1,
      C_USE_PAUSE => 0,
      C_LMB_PROTOCOL => 0
    )
    PORT MAP (
      Clk => Clk,
      Rst => Rst,
      Pause => '0',
      S_AXI_AWID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      S_AXI_AWADDR => S_AXI_AWADDR,
      S_AXI_AWLEN => S_AXI_AWLEN,
      S_AXI_AWSIZE => S_AXI_AWSIZE,
      S_AXI_AWBURST => S_AXI_AWBURST,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WDATA => S_AXI_WDATA,
      S_AXI_WSTRB => S_AXI_WSTRB,
      S_AXI_WLAST => S_AXI_WLAST,
      S_AXI_WVALID => S_AXI_WVALID,
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_BRESP => S_AXI_BRESP,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_ARID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      S_AXI_ARADDR => S_AXI_ARADDR,
      S_AXI_ARLEN => S_AXI_ARLEN,
      S_AXI_ARSIZE => S_AXI_ARSIZE,
      S_AXI_ARBURST => S_AXI_ARBURST,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_RDATA => S_AXI_RDATA,
      S_AXI_RRESP => S_AXI_RRESP,
      S_AXI_RLAST => S_AXI_RLAST,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_RREADY => S_AXI_RREADY,
      M_ABus => M_ABus,
      LMB_ReadDBus => LMB_ReadDBus,
      M_DBus => M_DBus,
      M_AddrStrobe => M_AddrStrobe,
      M_ReadStrobe => M_ReadStrobe,
      M_WriteStrobe => M_WriteStrobe,
      LMB_Ready => LMB_Ready,
      LMB_Wait => LMB_Wait,
      LMB_CE => LMB_CE,
      LMB_UE => LMB_UE,
      M_BE => M_BE
    );
END RISC_V_axi_lmb_bridge_0_0_arch;
