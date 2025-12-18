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

-- IP VLNV: xilinx.com:module_ref:BRAMAddressDivider:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY RISC_V_BRAMAddressDivider_0_0 IS
  PORT (
    bram_in_en : IN STD_LOGIC;
    bram_in_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    bram_in_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    bram_in_we : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    bram_in_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    bram_in_clk : IN STD_LOGIC;
    bram_in_rst : IN STD_LOGIC;
    bram_out_en : OUT STD_LOGIC;
    bram_out_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    bram_out_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    bram_out_we : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    bram_out_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    bram_out_clk : OUT STD_LOGIC;
    bram_out_rst : OUT STD_LOGIC
  );
END RISC_V_BRAMAddressDivider_0_0;

ARCHITECTURE RISC_V_BRAMAddressDivider_0_0_arch OF RISC_V_BRAMAddressDivider_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF RISC_V_BRAMAddressDivider_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT BRAMAddressDivider IS
    PORT (
      bram_in_en : IN STD_LOGIC;
      bram_in_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      bram_in_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      bram_in_we : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      bram_in_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      bram_in_clk : IN STD_LOGIC;
      bram_in_rst : IN STD_LOGIC;
      bram_out_en : OUT STD_LOGIC;
      bram_out_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      bram_out_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      bram_out_we : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      bram_out_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      bram_out_clk : OUT STD_LOGIC;
      bram_out_rst : OUT STD_LOGIC
    );
  END COMPONENT BRAMAddressDivider;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF RISC_V_BRAMAddressDivider_0_0_arch: ARCHITECTURE IS "BRAMAddressDivider,Vivado 2025.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF RISC_V_BRAMAddressDivider_0_0_arch : ARCHITECTURE IS "RISC_V_BRAMAddressDivider_0_0,BRAMAddressDivider,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF RISC_V_BRAMAddressDivider_0_0_arch: ARCHITECTURE IS "RISC_V_BRAMAddressDivider_0_0,BRAMAddressDivider,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=BRAMAddressDivider,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF RISC_V_BRAMAddressDivider_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_MODE : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF bram_in_addr: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORT_IN ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF bram_in_clk: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORT_IN CLK";
  ATTRIBUTE X_INTERFACE_INFO OF bram_in_din: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORT_IN DIN";
  ATTRIBUTE X_INTERFACE_INFO OF bram_in_dout: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORT_IN DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF bram_in_en: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORT_IN EN";
  ATTRIBUTE X_INTERFACE_MODE OF bram_in_en: SIGNAL IS "slave BRAM_PORT_IN";
  ATTRIBUTE X_INTERFACE_PARAMETER OF bram_in_en: SIGNAL IS "XIL_INTERFACENAME BRAM_PORT_IN, MASTER_TYPE OTHER, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1";
  ATTRIBUTE X_INTERFACE_INFO OF bram_in_rst: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORT_IN RST";
  ATTRIBUTE X_INTERFACE_INFO OF bram_in_we: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORT_IN WE";
  ATTRIBUTE X_INTERFACE_INFO OF bram_out_addr: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF bram_out_clk: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT CLK";
  ATTRIBUTE X_INTERFACE_INFO OF bram_out_din: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT DIN";
  ATTRIBUTE X_INTERFACE_INFO OF bram_out_dout: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF bram_out_en: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT EN";
  ATTRIBUTE X_INTERFACE_MODE OF bram_out_en: SIGNAL IS "master BRAM_PORT_OUT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF bram_out_en: SIGNAL IS "XIL_INTERFACENAME BRAM_PORT_OUT, MASTER_TYPE OTHER, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1";
  ATTRIBUTE X_INTERFACE_INFO OF bram_out_rst: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT RST";
  ATTRIBUTE X_INTERFACE_INFO OF bram_out_we: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT WE";
BEGIN
  U0 : BRAMAddressDivider
    PORT MAP (
      bram_in_en => bram_in_en,
      bram_in_dout => bram_in_dout,
      bram_in_din => bram_in_din,
      bram_in_we => bram_in_we,
      bram_in_addr => bram_in_addr,
      bram_in_clk => bram_in_clk,
      bram_in_rst => bram_in_rst,
      bram_out_en => bram_out_en,
      bram_out_dout => bram_out_dout,
      bram_out_din => bram_out_din,
      bram_out_we => bram_out_we,
      bram_out_addr => bram_out_addr,
      bram_out_clk => bram_out_clk,
      bram_out_rst => bram_out_rst
    );
END RISC_V_BRAMAddressDivider_0_0_arch;
