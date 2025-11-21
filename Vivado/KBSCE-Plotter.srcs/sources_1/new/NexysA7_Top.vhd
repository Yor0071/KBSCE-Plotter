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
    
    -- Motor-uitgangen (IN1/IN2 naar L298N)
    MOT_IN1     : out std_logic;
    MOT_IN2     : out std_logic
  );
end NexysA7_Top;

architecture RTL of NexysA7_Top is

  -- bestaand wrapper-component
  component RISC_V_wrapper is
    port (
      LED         : out STD_LOGIC_VECTOR ( 15 downto 0 );
      SW          : in  STD_LOGIC_VECTOR ( 15 downto 0 );
      CPU_RESETN  : in  STD_LOGIC;
      CLK100MHZ   : in  STD_LOGIC;
      UART_RX_OUT : in  STD_LOGIC;
      UART_TX_IN  : out STD_LOGIC
    );
  end component;

  -- MotorControl component
  component MotorControl is
    port(
      clk    : in  std_logic;
      resetn : in  std_logic;
      speed  : in  std_logic_vector(7 downto 0);
      dir    : in  std_logic;
      in1    : out std_logic;
      in2    : out std_logic
    );
  end component;

  -- interne signalen
  signal speed_s : std_logic_vector(7 downto 0);
  signal dir_s   : std_logic;

begin

  --------------------------------------------------------------------
  -- RISC-V systeem
  --------------------------------------------------------------------
  u_cpu : RISC_V_wrapper
    port map(
      LED         => LED,
      SW          => SW,
      CPU_RESETN  => CPU_RESETN,
      CLK100MHZ   => CLK100MHZ,
      UART_RX_OUT => UART_RX_OUT,
      UART_TX_IN  => UART_TX_IN
    );
    
  --------------------------------------------------------------------
  -- Motor besturen via switches
  --------------------------------------------------------------------
  speed_s <= SW(7 downto 0);  -- snelheid met SW0..7
  dir_s   <= SW(8);           -- richting met SW8

  u_motor : MotorControl
    port map(
      clk    => CLK100MHZ,
      resetn => CPU_RESETN,
      speed  => speed_s,
      dir    => dir_s,
      in1    => MOT_IN1,
      in2    => MOT_IN2
    );

end RTL;
