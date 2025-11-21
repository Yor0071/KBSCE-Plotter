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
    LED         : out std_logic_vector(15 downto 0)
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

end RTL;
