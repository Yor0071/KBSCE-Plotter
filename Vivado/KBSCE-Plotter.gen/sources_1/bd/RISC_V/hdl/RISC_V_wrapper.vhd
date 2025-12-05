--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
--Date        : Fri Dec  5 11:30:47 2025
--Host        : mrt-fed-lap running 64-bit unknown
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
    BRAM_PORTA_1_addr : in STD_LOGIC_VECTOR ( 18 downto 0 );
    BRAM_PORTA_1_clk : in STD_LOGIC;
    BRAM_PORTA_1_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    BRAM_PORTA_1_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    BRAM_PORTA_1_en : in STD_LOGIC;
    BRAM_PORTA_1_we : in STD_LOGIC_VECTOR ( 0 to 0 );
    BRAM_PORTB_0_addr : in STD_LOGIC_VECTOR ( 18 downto 0 );
    BRAM_PORTB_0_clk : in STD_LOGIC;
    BRAM_PORTB_0_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    BRAM_PORTB_0_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    BRAM_PORTB_0_en : in STD_LOGIC;
    BRAM_PORTB_0_we : in STD_LOGIC_VECTOR ( 0 to 0 );
    LED_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SW_tri_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    VGA_PCLK : out STD_LOGIC;
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
    VGA_PCLK : out STD_LOGIC;
    BRAM_PORTB_0_addr : in STD_LOGIC_VECTOR ( 18 downto 0 );
    BRAM_PORTB_0_clk : in STD_LOGIC;
    BRAM_PORTB_0_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    BRAM_PORTB_0_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    BRAM_PORTB_0_en : in STD_LOGIC;
    BRAM_PORTB_0_we : in STD_LOGIC_VECTOR ( 0 to 0 );
    BRAM_PORTA_1_addr : in STD_LOGIC_VECTOR ( 18 downto 0 );
    BRAM_PORTA_1_clk : in STD_LOGIC;
    BRAM_PORTA_1_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    BRAM_PORTA_1_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    BRAM_PORTA_1_en : in STD_LOGIC;
    BRAM_PORTA_1_we : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component RISC_V;
begin
RISC_V_i: component RISC_V
     port map (
      BRAM_PORTA_1_addr(18 downto 0) => BRAM_PORTA_1_addr(18 downto 0),
      BRAM_PORTA_1_clk => BRAM_PORTA_1_clk,
      BRAM_PORTA_1_din(11 downto 0) => BRAM_PORTA_1_din(11 downto 0),
      BRAM_PORTA_1_dout(11 downto 0) => BRAM_PORTA_1_dout(11 downto 0),
      BRAM_PORTA_1_en => BRAM_PORTA_1_en,
      BRAM_PORTA_1_we(0) => BRAM_PORTA_1_we(0),
      BRAM_PORTB_0_addr(18 downto 0) => BRAM_PORTB_0_addr(18 downto 0),
      BRAM_PORTB_0_clk => BRAM_PORTB_0_clk,
      BRAM_PORTB_0_din(11 downto 0) => BRAM_PORTB_0_din(11 downto 0),
      BRAM_PORTB_0_dout(11 downto 0) => BRAM_PORTB_0_dout(11 downto 0),
      BRAM_PORTB_0_en => BRAM_PORTB_0_en,
      BRAM_PORTB_0_we(0) => BRAM_PORTB_0_we(0),
      LED_tri_o(15 downto 0) => LED_tri_o(15 downto 0),
      SW_tri_i(15 downto 0) => SW_tri_i(15 downto 0),
      VGA_PCLK => VGA_PCLK,
      reset => reset,
      sys_clock => sys_clock,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd
    );
end STRUCTURE;
