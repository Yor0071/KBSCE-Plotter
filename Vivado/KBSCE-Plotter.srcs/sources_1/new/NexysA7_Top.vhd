library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NexysA7_Top is
  port(
    -- Nexys A7 basis I/O
    CLK100MHZ   : in  std_logic;
    CPU_RESETN  : in  std_logic;
    UART_RX_OUT : in  std_logic;
    UART_TX_IN  : out std_logic;
    SW          : in  std_logic_vector(15 downto 0);
    LED         : out std_logic_vector(15 downto 0);

    -- Encoders (passen bij je XDC)
    enc_x1_a_0 : in std_logic;
    enc_x1_b_0 : in std_logic;
    enc_x2_a_0 : in std_logic;
    enc_x2_b_0 : in std_logic;
    enc_y_a_0  : in std_logic;
    enc_y_b_0  : in std_logic;
    enc_z_a_0  : in std_logic;
    enc_z_b_0  : in std_logic;

    -- Motor outputs (passen bij je XDC)
    m1_in1_0 : out std_logic;
    m1_in2_0 : out std_logic;
    m2_in1_0 : out std_logic;
    m2_in2_0 : out std_logic;
    m3_in1_0 : out std_logic;
    m3_in2_0 : out std_logic;
    m4_in1_0 : out std_logic;
    m4_in2_0 : out std_logic
  );
end NexysA7_Top;

architecture RTL of NexysA7_Top is

  component RISC_V_wrapper is
    port (
      LED_tri_o    : out STD_LOGIC_VECTOR ( 15 downto 0 );
      SW_tri_i     : in  STD_LOGIC_VECTOR ( 15 downto 0 );
      enc_x1_a_0   : in  STD_LOGIC;
      enc_x1_b_0   : in  STD_LOGIC;
      enc_x2_a_0   : in  STD_LOGIC;
      enc_x2_b_0   : in  STD_LOGIC;
      enc_y_a_0    : in  STD_LOGIC;
      enc_y_b_0    : in  STD_LOGIC;
      enc_z_a_0    : in  STD_LOGIC;
      enc_z_b_0    : in  STD_LOGIC;
      m1_in1_0     : out STD_LOGIC;
      m1_in2_0     : out STD_LOGIC;
      m2_in1_0     : out STD_LOGIC;
      m2_in2_0     : out STD_LOGIC;
      m3_in1_0     : out STD_LOGIC;
      m3_in2_0     : out STD_LOGIC;
      m4_in1_0     : out STD_LOGIC;
      m4_in2_0     : out STD_LOGIC;
      reset        : in  STD_LOGIC;
      sys_clock    : in  STD_LOGIC;
      usb_uart_rxd : in  STD_LOGIC;
      usb_uart_txd : out STD_LOGIC
    );
  end component;

begin

  u_cpu : RISC_V_wrapper
    port map (
      -- leds & switches
      LED_tri_o    => LED,
      SW_tri_i     => SW,

      -- encoders
      enc_x1_a_0   => enc_x1_a_0,
      enc_x1_b_0   => enc_x1_b_0,
      enc_x2_a_0   => enc_x2_a_0,
      enc_x2_b_0   => enc_x2_b_0,
      enc_y_a_0    => enc_y_a_0,
      enc_y_b_0    => enc_y_b_0,
      enc_z_a_0    => enc_z_a_0,
      enc_z_b_0    => enc_z_b_0,

      -- motor outputs
      m1_in1_0     => m1_in1_0,
      m1_in2_0     => m1_in2_0,
      m2_in1_0     => m2_in1_0,
      m2_in2_0     => m2_in2_0,
      m3_in1_0     => m3_in1_0,
      m3_in2_0     => m3_in2_0,
      m4_in1_0     => m4_in1_0,
      m4_in2_0     => m4_in2_0,

      -- clock/reset/uart
      reset        => CPU_RESETN,
      sys_clock    => CLK100MHZ,
      usb_uart_rxd => UART_RX_OUT,
      usb_uart_txd => UART_TX_IN
    );

end RTL;
