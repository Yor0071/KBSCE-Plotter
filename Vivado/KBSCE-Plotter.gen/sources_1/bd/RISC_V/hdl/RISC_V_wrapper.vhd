--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
--Date        : Thu Dec  4 13:26:22 2025
--Host        : DESKTOP-H6STBOR running 64-bit major release  (build 9200)
--Command     : generate_target RISC_V_wrapper.bd
--Design      : RISC_V_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RISC_V_wrapper is
  port (
    LED_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SW_tri_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    enc_x1_a_0 : in STD_LOGIC;
    enc_x1_b_0 : in STD_LOGIC;
    enc_x2_a_0 : in STD_LOGIC;
    enc_x2_b_0 : in STD_LOGIC;
    enc_y_a_0 : in STD_LOGIC;
    enc_y_b_0 : in STD_LOGIC;
    enc_z_a_0 : in STD_LOGIC;
    enc_z_b_0 : in STD_LOGIC;
    m1_in1_0 : out STD_LOGIC;
    m1_in2_0 : out STD_LOGIC;
    m2_in1_0 : out STD_LOGIC;
    m2_in2_0 : out STD_LOGIC;
    m3_in1_0 : out STD_LOGIC;
    m3_in2_0 : out STD_LOGIC;
    m4_in1_0 : out STD_LOGIC;
    m4_in2_0 : out STD_LOGIC;
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
end RISC_V_wrapper;

architecture STRUCTURE of RISC_V_wrapper is
  component RISC_V is
  port (
    LED_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SW_tri_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    sys_clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    m1_in1_0 : out STD_LOGIC;
    m2_in1_0 : out STD_LOGIC;
    m4_in2_0 : out STD_LOGIC;
    m4_in1_0 : out STD_LOGIC;
    m3_in2_0 : out STD_LOGIC;
    m3_in1_0 : out STD_LOGIC;
    m1_in2_0 : out STD_LOGIC;
    m2_in2_0 : out STD_LOGIC;
    enc_y_a_0 : in STD_LOGIC;
    enc_x2_b_0 : in STD_LOGIC;
    enc_x2_a_0 : in STD_LOGIC;
    enc_x1_b_0 : in STD_LOGIC;
    enc_x1_a_0 : in STD_LOGIC;
    enc_z_a_0 : in STD_LOGIC;
    enc_y_b_0 : in STD_LOGIC;
    enc_z_b_0 : in STD_LOGIC
  );
  end component RISC_V;
begin
RISC_V_i: component RISC_V
     port map (
      LED_tri_o(15 downto 0) => LED_tri_o(15 downto 0),
      SW_tri_i(15 downto 0) => SW_tri_i(15 downto 0),
      enc_x1_a_0 => enc_x1_a_0,
      enc_x1_b_0 => enc_x1_b_0,
      enc_x2_a_0 => enc_x2_a_0,
      enc_x2_b_0 => enc_x2_b_0,
      enc_y_a_0 => enc_y_a_0,
      enc_y_b_0 => enc_y_b_0,
      enc_z_a_0 => enc_z_a_0,
      enc_z_b_0 => enc_z_b_0,
      m1_in1_0 => m1_in1_0,
      m1_in2_0 => m1_in2_0,
      m2_in1_0 => m2_in1_0,
      m2_in2_0 => m2_in2_0,
      m3_in1_0 => m3_in1_0,
      m3_in2_0 => m3_in2_0,
      m4_in1_0 => m4_in1_0,
      m4_in2_0 => m4_in2_0,
      reset => reset,
      sys_clock => sys_clock,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd
    );
end STRUCTURE;
