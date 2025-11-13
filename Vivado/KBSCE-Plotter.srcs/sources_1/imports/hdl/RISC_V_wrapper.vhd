--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
--Date        : Thu Nov 13 11:57:49 2025
--Host        : ThinkpadP1_Liam running 64-bit major release  (build 9200)
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
    LED : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SW : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CPU_RESETN : in STD_LOGIC;
    CLK100MHZ : in STD_LOGIC;
    UART_RX_OUT : in STD_LOGIC;
    UART_TX_IN : out STD_LOGIC
  );
end RISC_V_wrapper;

architecture STRUCTURE of RISC_V_wrapper is
  component RISC_V is
  port (
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    LED_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SW_tri_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sys_clock : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component RISC_V;
begin
RISC_V_i: component RISC_V
     port map (
      LED_tri_o(15 downto 0) => LED(15 downto 0),
      SW_tri_i(15 downto 0) => SW(15 downto 0),
      reset => CPU_RESETN,
      sys_clock => CLK100MHZ,
      usb_uart_rxd => UART_RX_OUT,
      usb_uart_txd => UART_TX_IN
    );
end STRUCTURE;
