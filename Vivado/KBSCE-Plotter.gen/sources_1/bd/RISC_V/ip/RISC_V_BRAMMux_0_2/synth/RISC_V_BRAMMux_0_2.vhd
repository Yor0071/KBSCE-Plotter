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

-- IP VLNV: xilinx.com:module_ref:BRAMMux:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY RISC_V_BRAMMux_0_2 IS
  PORT (
    s_in_microblaze_en : IN STD_LOGIC;
    s_in_microblaze_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_in_microblaze_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_in_microblaze_we : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_in_microblaze_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_in_microblaze_clk : IN STD_LOGIC;
    s_in_microblaze_rst : IN STD_LOGIC;
    s_in_camera_en : IN STD_LOGIC;
    s_in_camera_dout : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    s_in_camera_din : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    s_in_camera_we : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_in_camera_addr : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
    s_in_camera_clk : IN STD_LOGIC;
    s_in_camera_rst : IN STD_LOGIC;
    s_out_fb_en : OUT STD_LOGIC;
    s_out_fb_dout : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    s_out_fb_din : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    s_out_fb_we : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_out_fb_addr : OUT STD_LOGIC_VECTOR(18 DOWNTO 0);
    s_out_fb_clk : OUT STD_LOGIC;
    s_out_fb_rst : OUT STD_LOGIC
  );
END RISC_V_BRAMMux_0_2;

ARCHITECTURE RISC_V_BRAMMux_0_2_arch OF RISC_V_BRAMMux_0_2 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF RISC_V_BRAMMux_0_2_arch: ARCHITECTURE IS "yes";
  COMPONENT BRAMMux IS
    PORT (
      s_in_microblaze_en : IN STD_LOGIC;
      s_in_microblaze_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_in_microblaze_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_in_microblaze_we : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_in_microblaze_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_in_microblaze_clk : IN STD_LOGIC;
      s_in_microblaze_rst : IN STD_LOGIC;
      s_in_camera_en : IN STD_LOGIC;
      s_in_camera_dout : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      s_in_camera_din : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      s_in_camera_we : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_in_camera_addr : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
      s_in_camera_clk : IN STD_LOGIC;
      s_in_camera_rst : IN STD_LOGIC;
      s_out_fb_en : OUT STD_LOGIC;
      s_out_fb_dout : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      s_out_fb_din : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      s_out_fb_we : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_out_fb_addr : OUT STD_LOGIC_VECTOR(18 DOWNTO 0);
      s_out_fb_clk : OUT STD_LOGIC;
      s_out_fb_rst : OUT STD_LOGIC
    );
  END COMPONENT BRAMMux;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF RISC_V_BRAMMux_0_2_arch: ARCHITECTURE IS "BRAMMux,Vivado 2025.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF RISC_V_BRAMMux_0_2_arch : ARCHITECTURE IS "RISC_V_BRAMMux_0_2,BRAMMux,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF RISC_V_BRAMMux_0_2_arch: ARCHITECTURE IS "RISC_V_BRAMMux_0_2,BRAMMux,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=BRAMMux,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF RISC_V_BRAMMux_0_2_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_MODE : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF s_in_camera_addr: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_in_camera_clk: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_in_camera_din: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA DIN";
  ATTRIBUTE X_INTERFACE_INFO OF s_in_camera_dout: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF s_in_camera_en: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA EN";
  ATTRIBUTE X_INTERFACE_MODE OF s_in_camera_en: SIGNAL IS "slave BRAM_IN_PORT_CAMERA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_in_camera_en: SIGNAL IS "XIL_INTERFACENAME BRAM_IN_PORT_CAMERA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 2";
  ATTRIBUTE X_INTERFACE_INFO OF s_in_camera_rst: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_in_camera_we: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA WE";
  ATTRIBUTE X_INTERFACE_INFO OF s_in_microblaze_addr: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_in_microblaze_clk: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_in_microblaze_din: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE DIN";
  ATTRIBUTE X_INTERFACE_INFO OF s_in_microblaze_dout: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF s_in_microblaze_en: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE EN";
  ATTRIBUTE X_INTERFACE_MODE OF s_in_microblaze_en: SIGNAL IS "slave BRAM_IN_PORT_MICROBLAZE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_in_microblaze_en: SIGNAL IS "XIL_INTERFACENAME BRAM_IN_PORT_MICROBLAZE, MEM_SIZE 16777216, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 2";
  ATTRIBUTE X_INTERFACE_INFO OF s_in_microblaze_rst: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_in_microblaze_we: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE WE";
  ATTRIBUTE X_INTERFACE_INFO OF s_out_fb_addr: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_out_fb_clk: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_out_fb_din: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB DIN";
  ATTRIBUTE X_INTERFACE_INFO OF s_out_fb_dout: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF s_out_fb_en: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB EN";
  ATTRIBUTE X_INTERFACE_MODE OF s_out_fb_en: SIGNAL IS "master BRAM_OUT_PORT_FB";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_out_fb_en: SIGNAL IS "XIL_INTERFACENAME BRAM_OUT_PORT_FB, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1";
  ATTRIBUTE X_INTERFACE_INFO OF s_out_fb_rst: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_out_fb_we: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB WE";
BEGIN
  U0 : BRAMMux
    PORT MAP (
      s_in_microblaze_en => s_in_microblaze_en,
      s_in_microblaze_dout => s_in_microblaze_dout,
      s_in_microblaze_din => s_in_microblaze_din,
      s_in_microblaze_we => s_in_microblaze_we,
      s_in_microblaze_addr => s_in_microblaze_addr,
      s_in_microblaze_clk => s_in_microblaze_clk,
      s_in_microblaze_rst => s_in_microblaze_rst,
      s_in_camera_en => s_in_camera_en,
      s_in_camera_dout => s_in_camera_dout,
      s_in_camera_din => s_in_camera_din,
      s_in_camera_we => s_in_camera_we,
      s_in_camera_addr => s_in_camera_addr,
      s_in_camera_clk => s_in_camera_clk,
      s_in_camera_rst => s_in_camera_rst,
      s_out_fb_en => s_out_fb_en,
      s_out_fb_dout => s_out_fb_dout,
      s_out_fb_din => s_out_fb_din,
      s_out_fb_we => s_out_fb_we,
      s_out_fb_addr => s_out_fb_addr,
      s_out_fb_clk => s_out_fb_clk,
      s_out_fb_rst => s_out_fb_rst
    );
END RISC_V_BRAMMux_0_2_arch;
