--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
--Date        : Wed Dec 17 13:47:07 2025
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
    BTN_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    IIC_0_scl_io : inout STD_LOGIC;
    IIC_0_sda_io : inout STD_LOGIC;
    LED_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SW_tri_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    VGA_PCLK : out STD_LOGIC;
    cam_clk_0 : out STD_LOGIC;
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
    BRAM_PORT_CAM_addr : in STD_LOGIC_VECTOR ( 18 downto 0 );
    BRAM_PORT_CAM_clk : in STD_LOGIC;
    BRAM_PORT_CAM_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    BRAM_PORT_CAM_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    BRAM_PORT_CAM_en : in STD_LOGIC;
    BRAM_PORT_CAM_we : in STD_LOGIC_VECTOR ( 0 to 0 );
    BRAM_PORT_VGA_addr : in STD_LOGIC_VECTOR ( 18 downto 0 );
    BRAM_PORT_VGA_clk : in STD_LOGIC;
    BRAM_PORT_VGA_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    BRAM_PORT_VGA_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    BRAM_PORT_VGA_en : in STD_LOGIC;
    BRAM_PORT_VGA_we : in STD_LOGIC_VECTOR ( 0 to 0 );
    IIC_0_scl_i : in STD_LOGIC;
    IIC_0_scl_o : out STD_LOGIC;
    IIC_0_scl_t : out STD_LOGIC;
    IIC_0_sda_i : in STD_LOGIC;
    IIC_0_sda_o : out STD_LOGIC;
    IIC_0_sda_t : out STD_LOGIC;
    BTN_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    sys_clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    VGA_PCLK : out STD_LOGIC;
    cam_clk_0 : out STD_LOGIC;
    enc_y_a_0 : in STD_LOGIC;
    enc_x2_b_0 : in STD_LOGIC;
    enc_x2_a_0 : in STD_LOGIC;
    enc_x1_b_0 : in STD_LOGIC;
    enc_x1_a_0 : in STD_LOGIC;
    m4_in1_0 : out STD_LOGIC;
    m2_in2_0 : out STD_LOGIC;
    m2_in1_0 : out STD_LOGIC;
    enc_z_b_0 : in STD_LOGIC;
    m3_in2_0 : out STD_LOGIC;
    m3_in1_0 : out STD_LOGIC;
    enc_z_a_0 : in STD_LOGIC;
    m1_in2_0 : out STD_LOGIC;
    m1_in1_0 : out STD_LOGIC;
    enc_y_b_0 : in STD_LOGIC;
    m4_in2_0 : out STD_LOGIC;
    BRAM_PORT_CAM_rst : in STD_LOGIC
  );
  end component RISC_V;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal IIC_0_scl_i : STD_LOGIC;
  signal IIC_0_scl_o : STD_LOGIC;
  signal IIC_0_scl_t : STD_LOGIC;
  signal IIC_0_sda_i : STD_LOGIC;
  signal IIC_0_sda_o : STD_LOGIC;
  signal IIC_0_sda_t : STD_LOGIC;
begin
IIC_0_scl_iobuf: component IOBUF
     port map (
      I => IIC_0_scl_o,
      IO => IIC_0_scl_io,
      O => IIC_0_scl_i,
      T => IIC_0_scl_t
    );
IIC_0_sda_iobuf: component IOBUF
     port map (
      I => IIC_0_sda_o,
      IO => IIC_0_sda_io,
      O => IIC_0_sda_i,
      T => IIC_0_sda_t
    );
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
      BTN_tri_i(4 downto 0) => BTN_tri_i(4 downto 0),
      IIC_0_scl_i => IIC_0_scl_i,
      IIC_0_scl_o => IIC_0_scl_o,
      IIC_0_scl_t => IIC_0_scl_t,
      IIC_0_sda_i => IIC_0_sda_i,
      IIC_0_sda_o => IIC_0_sda_o,
      IIC_0_sda_t => IIC_0_sda_t,
      LED_tri_o(15 downto 0) => LED_tri_o(15 downto 0),
      SW_tri_i(15 downto 0) => SW_tri_i(15 downto 0),
      VGA_PCLK => VGA_PCLK,
      cam_clk_0 => cam_clk_0,
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
