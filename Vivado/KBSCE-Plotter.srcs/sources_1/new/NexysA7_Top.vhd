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
    M1_IN1      : out std_logic;
    M1_IN2      : out std_logic;
    M2_IN1      : out std_logic;
    M2_IN2      : out std_logic;
    M3_IN1      : out std_logic;
    M3_IN2      : out std_logic;
    M4_IN1      : out std_logic;
    M4_IN2      : out std_logic;
    
    -- VGA Signal Generator
    VGA_R       : out std_logic_vector(3 downto 0);
    VGA_G       : out std_logic_vector(3 downto 0);
    VGA_B       : out std_logic_vector(3 downto 0);
    VGA_HS      : out std_logic;
    VGA_VS      : out std_logic
  );
end NexysA7_Top;

architecture RTL of NexysA7_Top is
  -- VGA Signal Generator
    component VGASignalGenerator is
        port(
            clk_23_75MHz : in std_logic; -- Should be 23.75 MHz, Technisch Ontwerp 5.4.1 in CRT timing parameters
            
            vga_R  : out std_logic_vector(3 downto 0); -- RGB444
            vga_G  : out std_logic_vector(3 downto 0);
            vga_B  : out std_logic_vector(3 downto 0);
            vga_HS : out std_logic; -- Horizontal Sync
            vga_VS : out std_logic -- Vertical Sync
        );
    end component VGASignalGenerator;
    
    signal VGA_PCLK : std_logic;

  -- bestaand wrapper-component
  component RISC_V_wrapper is
    port (
      LED         : out STD_LOGIC_VECTOR ( 15 downto 0 );
      SW          : in  STD_LOGIC_VECTOR ( 15 downto 0 );
      CPU_RESETN  : in  STD_LOGIC;
      CLK100MHZ   : in  STD_LOGIC;
      UART_RX_OUT : in  STD_LOGIC;
      UART_TX_IN  : out STD_LOGIC;
      VGA_PCLK    : out STD_LOGIC
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

  -- vaste minimale snelheid
  constant MIN_SPEED : std_logic_vector(7 downto 0) := x"BF"; -- 75%

  -- interne signalen per motor
  signal speed_M1 : std_logic_vector(7 downto 0);
  signal speed_M2 : std_logic_vector(7 downto 0);
  signal speed_M3 : std_logic_vector(7 downto 0);
  signal speed_M4 : std_logic_vector(7 downto 0);

  signal dir_M1   : std_logic;
  signal dir_M2   : std_logic;
  signal dir_M3   : std_logic;
  signal dir_M4   : std_logic;

begin
    -- VGA Signal Generator
    u_VGASignalGenerator : VGASignalGenerator port map(
        clk_23_75MHz => VGA_PCLK,
        
        vga_R => VGA_R,
        vga_G => VGA_G,
        vga_B => VGA_B,
        
        vga_HS => VGA_HS,
        vga_VS => VGA_VS
    );

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
      UART_TX_IN  => UART_TX_IN,
      VGA_PCLK    => VGA_PCLK
    );

  --------------------------------------------------------------------
  -- Debug: LED's laten de switches zien (optioneel, maar handig)
  --------------------------------------------------------------------
  -- LED <= SW;  -- kun je aan laten tijdens debug

  --------------------------------------------------------------------
  -- Motor besturen via switches
  -- M1: SW0 = dir, SW1 = enable
  -- M2: SW2 = dir, SW3 = enable
  -- M3: SW4 = dir, SW5 = enable
  -- M4: SW6 = dir, SW7 = enable
  --------------------------------------------------------------------
  dir_M1 <= SW(0);
  dir_M2 <= SW(2);
  dir_M3 <= SW(4);
  dir_M4 <= SW(6);

  speed_M1 <= (others => '0') when SW(1) = '0' else MIN_SPEED;
  speed_M2 <= (others => '0') when SW(3) = '0' else MIN_SPEED;
  speed_M3 <= (others => '0') when SW(5) = '0' else MIN_SPEED;
  speed_M4 <= (others => '0') when SW(7) = '0' else MIN_SPEED;

  --------------------------------------------------------------------
  -- Motor 1 (X1)
  --------------------------------------------------------------------
  u_motor1 : MotorControl
    port map(
      clk    => CLK100MHZ,
      resetn => CPU_RESETN,
      speed  => speed_M1,
      dir    => dir_M1,
      in1    => M1_IN1,
      in2    => M1_IN2
    );

  --------------------------------------------------------------------
  -- Motor 2 (X2)
  --------------------------------------------------------------------
  u_motor2 : MotorControl
    port map(
      clk    => CLK100MHZ,
      resetn => CPU_RESETN,
      speed  => speed_M2,
      dir    => dir_M2,
      in1    => M2_IN1,
      in2    => M2_IN2
    );

  --------------------------------------------------------------------
  -- Motor 3 (Y)
  --------------------------------------------------------------------
  u_motor3 : MotorControl
    port map(
      clk    => CLK100MHZ,
      resetn => CPU_RESETN,
      speed  => speed_M3,
      dir    => dir_M3,
      in1    => M3_IN1,
      in2    => M3_IN2
    );

  --------------------------------------------------------------------
  -- Motor 4 (Z / pen)
  --------------------------------------------------------------------
  u_motor4 : MotorControl
    port map(
      clk    => CLK100MHZ,
      resetn => CPU_RESETN,
      speed  => speed_M4,
      dir    => dir_M4,
      in1    => M4_IN1,
      in2    => M4_IN2
    );

end RTL;
