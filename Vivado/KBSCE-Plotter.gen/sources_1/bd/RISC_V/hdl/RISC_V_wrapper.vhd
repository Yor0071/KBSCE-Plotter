--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
--Date        : Fri Dec 12 11:58:00 2025
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
    BRAM_PORT_CAM_addr : in STD_LOGIC_VECTOR ( 18 downto 0 );
    BRAM_PORT_CAM_clk : in STD_LOGIC;
    BRAM_PORT_CAM_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    BRAM_PORT_CAM_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    BRAM_PORT_CAM_en : in STD_LOGIC;
    BRAM_PORT_CAM_rst : in STD_LOGIC;
    BRAM_PORT_CAM_we : in STD_LOGIC_VECTOR ( 0 to 0 );
    BRAM_PORT_VGA_addr : in STD_LOGIC_VECTOR ( 18 downto 0 );
    BRAM_PORT_VGA_clk : in STD_LOGIC;
    BRAM_PORT_VGA_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    BRAM_PORT_VGA_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    BRAM_PORT_VGA_en : in STD_LOGIC;
    BRAM_PORT_VGA_we : in STD_LOGIC_VECTOR ( 0 to 0 );
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
    BRAM_PORT_CAM_addr : in STD_LOGIC_VECTOR ( 18 downto 0 );
    BRAM_PORT_CAM_clk : in STD_LOGIC;
    BRAM_PORT_CAM_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    BRAM_PORT_CAM_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    BRAM_PORT_CAM_en : in STD_LOGIC;
    BRAM_PORT_CAM_we : in STD_LOGIC_VECTOR ( 0 to 0 );
    BRAM_PORT_CAM_rst : in STD_LOGIC;
    BRAM_PORT_VGA_addr : in STD_LOGIC_VECTOR ( 18 downto 0 );
    BRAM_PORT_VGA_clk : in STD_LOGIC;
    BRAM_PORT_VGA_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    BRAM_PORT_VGA_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    BRAM_PORT_VGA_en : in STD_LOGIC;
    BRAM_PORT_VGA_we : in STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    VGA_PCLK : out STD_LOGIC
  );
  end component RISC_V;
begin
RISC_V_i: component RISC_V
     port map (
      BRAM_PORT_CAM_addr(18 downto 0) => BRAM_PORT_CAM_addr(18 downto 0),
      BRAM_PORT_CAM_clk => BRAM_PORT_CAM_clk,
      BRAM_PORT_CAM_din(11 downto 0) => BRAM_PORT_CAM_din(11 downto 0),
      BRAM_PORT_CAM_dout(11 downto 0) => BRAM_PORT_CAM_dout(11 downto 0),
      BRAM_PORT_CAM_en => BRAM_PORT_CAM_en,
      BRAM_PORT_CAM_rst => BRAM_PORT_CAM_rst,
      BRAM_PORT_CAM_we(0) => BRAM_PORT_CAM_we(0),
      BRAM_PORT_VGA_addr(18 downto 0) => BRAM_PORT_VGA_addr(18 downto 0),
      BRAM_PORT_VGA_clk => BRAM_PORT_VGA_clk,
      BRAM_PORT_VGA_din(11 downto 0) => BRAM_PORT_VGA_din(11 downto 0),
      BRAM_PORT_VGA_dout(11 downto 0) => BRAM_PORT_VGA_dout(11 downto 0),
      BRAM_PORT_VGA_en => BRAM_PORT_VGA_en,
      BRAM_PORT_VGA_we(0) => BRAM_PORT_VGA_we(0),
      LED_tri_o(15 downto 0) => LED_tri_o(15 downto 0),
      SW_tri_i(15 downto 0) => SW_tri_i(15 downto 0),
      VGA_PCLK => VGA_PCLK,
      reset => reset,
      sys_clock => sys_clock,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd
    );
end STRUCTURE;
