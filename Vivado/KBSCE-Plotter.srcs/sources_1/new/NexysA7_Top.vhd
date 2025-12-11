library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity NexysA7_Top is
  port(
    -- Nexys A7 basis I/O
    CLK100MHZ   : in  std_logic;
    CPU_RESETN  : in  std_logic;
    UART_RX_OUT : in  std_logic;
    UART_TX_IN  : out std_logic;
    SW          : in  std_logic_vector(15 downto 0);
    LED         : out std_logic_vector(15 downto 0);

    -- Buttons
    BTN         : in  std_logic_vector(4 downto 0);

    -- I2C naar camera
    OV_SIOC     : inout std_logic;
    OV_SIOD     : inout std_logic;

    -- Camera (OV7670) signalen
    OV_PCLK     : in  std_logic;
    OV_VSYNC    : in  std_logic;
    OV_HREF     : in  std_logic;
    OV_D        : in  std_logic_vector(7 downto 0);
    OV_XCLK     : out std_logic;
    OV_PWDN     : out std_logic;
    OV_RESET    : out std_logic;

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

  --------------------------------------------------------------------
  -- VGA Signal Generator component
  --------------------------------------------------------------------
  component VGASignalGenerator is
    port(
      pclk       : in  std_logic;                     -- 25 MHz
      pixel_data : in  std_logic_vector(11 downto 0); -- RGB444
      fb_address : out std_logic_vector(18 downto 0); -- 640*480
      vga_R      : out std_logic_vector(3 downto 0);
      vga_G      : out std_logic_vector(3 downto 0);
      vga_B      : out std_logic_vector(3 downto 0);
      vga_HS     : out std_logic;
      vga_VS     : out std_logic
    );
  end component;

  signal VGA_PCLK      : std_logic;
  signal vga_pixel_data: std_logic_vector(11 downto 0);
  signal vga_address   : std_logic_vector(18 downto 0);

  --------------------------------------------------------------------
  -- RISC_V_wrapper (nieuwste versie met BRAM_PORTA/B, I2C, BTN, cam_clk)
  --------------------------------------------------------------------
  component RISC_V_wrapper is
    port (
      BRAM_PORTA_1_addr : in  STD_LOGIC_VECTOR (18 downto 0);
      BRAM_PORTA_1_clk  : in  STD_LOGIC;
      BRAM_PORTA_1_din  : in  STD_LOGIC_VECTOR (11 downto 0);
      BRAM_PORTA_1_dout : out STD_LOGIC_VECTOR (11 downto 0);
      BRAM_PORTA_1_en   : in  STD_LOGIC;
      BRAM_PORTA_1_we   : in  STD_LOGIC_VECTOR (0 to 0);

      BRAM_PORTB_0_addr : in  STD_LOGIC_VECTOR (18 downto 0);
      BRAM_PORTB_0_clk  : in  STD_LOGIC;
      BRAM_PORTB_0_din  : in  STD_LOGIC_VECTOR (11 downto 0);
      BRAM_PORTB_0_dout : out STD_LOGIC_VECTOR (11 downto 0);
      BRAM_PORTB_0_en   : in  STD_LOGIC;
      BRAM_PORTB_0_we   : in  STD_LOGIC_VECTOR (0 to 0);

      BTN_tri_i         : in  STD_LOGIC_VECTOR (4 downto 0);
      IIC_0_scl_io      : inout STD_LOGIC;
      IIC_0_sda_io      : inout STD_LOGIC;
      LED_tri_o         : out STD_LOGIC_VECTOR (15 downto 0);
      SW_tri_i          : in  STD_LOGIC_VECTOR (15 downto 0);
      VGA_PCLK          : out STD_LOGIC;
      cam_clk_0         : out STD_LOGIC;
      reset             : in  STD_LOGIC;
      sys_clock         : in  STD_LOGIC;
      usb_uart_rxd      : in  STD_LOGIC;
      usb_uart_txd      : out STD_LOGIC
    );
  end component;

  --------------------------------------------------------------------
  -- Camera capture component
  --------------------------------------------------------------------
  component ov7670_capture is
    port (
      pclk  : in  std_logic;
      vsync : in  std_logic;
      href  : in  std_logic;
      d     : in  std_logic_vector(7 downto 0);
      addr  : out std_logic_vector(18 downto 0);
      pixel : out std_logic_vector(11 downto 0);
      we    : out std_logic
    );
  end component;

  -- capture -> BRAM B
  signal cap_addr  : std_logic_vector(18 downto 0);
  signal cap_pixel : std_logic_vector(11 downto 0);
  signal cap_we    : std_logic;
  signal cam_clk_i : std_logic;  -- intern: cam_clk_0 uit wrapper

  -- dummy voor BRAM B read-output (we lezen niet vanuit top)
  signal cam_fb_dout_dummy : std_logic_vector(11 downto 0);

  --------------------------------------------------------------------
  -- MotorControl component
  --------------------------------------------------------------------
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

  --------------------------------------------------------------------
  -- VGA Signal Generator (zoals eerst)
  --------------------------------------------------------------------
  u_VGASignalGenerator : VGASignalGenerator
    port map(
      pclk       => VGA_PCLK,
      pixel_data => vga_pixel_data,
      fb_address => vga_address,
      vga_R      => VGA_R,
      vga_G      => VGA_G,
      vga_B      => VGA_B,
      vga_HS     => VGA_HS,
      vga_VS     => VGA_VS
    );

  --------------------------------------------------------------------
  -- RISC-V systeem wrapper
  --  - Port A: framebuffer read voor VGA
  --  - Port B: framebuffer write vanaf camera
  --------------------------------------------------------------------
  u_cpu : RISC_V_wrapper
    port map(
      -- Port A: VGA read
      BRAM_PORTA_1_addr => vga_address,
      BRAM_PORTA_1_clk  => VGA_PCLK,
      BRAM_PORTA_1_din  => (others => '0'),   -- read-only
      BRAM_PORTA_1_dout => vga_pixel_data,
      BRAM_PORTA_1_en   => '1',
      BRAM_PORTA_1_we   => (others => '0'),

      -- Port B: camera write (ov7670_capture)
      BRAM_PORTB_0_addr => cap_addr,
      BRAM_PORTB_0_clk  => OV_PCLK,
      BRAM_PORTB_0_din  => cap_pixel,
      BRAM_PORTB_0_dout => cam_fb_dout_dummy, -- niet gebruikt
      BRAM_PORTB_0_en   => '1',
      BRAM_PORTB_0_we   => (0 => cap_we),

      -- Buttons, I2C
      BTN_tri_i         => BTN,
      IIC_0_scl_io      => OV_SIOC,
      IIC_0_sda_io      => OV_SIOD,

      -- LED & switches
      LED_tri_o         => LED,
      SW_tri_i          => SW,

      -- clocks
      VGA_PCLK          => VGA_PCLK,
      cam_clk_0         => cam_clk_i,

      -- reset + UART
      reset             => CPU_RESETN,
      sys_clock         => CLK100MHZ,
      usb_uart_rxd      => UART_RX_OUT,
      usb_uart_txd      => UART_TX_IN
    );

  --------------------------------------------------------------------
  -- Camera capture naar BRAM B
  --------------------------------------------------------------------
  u_cap : ov7670_capture
    port map (
      pclk  => OV_PCLK,
      vsync => OV_VSYNC,
      href  => OV_HREF,
      d     => OV_D,
      addr  => cap_addr,
      pixel => cap_pixel,
      we    => cap_we
    );

  --------------------------------------------------------------------
  -- Camera vaste signalen
  --------------------------------------------------------------------
  OV_XCLK  <= cam_clk_i;  -- cam_clk_0 uit wrapper naar camera XCLK
  OV_PWDN  <= '0';        -- camera altijd aan
  OV_RESET <= '1';        -- of bv. CPU_RESETN, afhankelijk van je schema

  --------------------------------------------------------------------
  -- Motor besturen via switches (zoals jouw oude code)
  --------------------------------------------------------------------
  dir_M1 <= SW(0);
  dir_M2 <= SW(2);
  dir_M3 <= SW(4);
  dir_M4 <= SW(6);

  speed_M1 <= (others => '0') when SW(1) = '0' else MIN_SPEED;
  speed_M2 <= (others => '0') when SW(3) = '0' else MIN_SPEED;
  speed_M3 <= (others => '0') when SW(5) = '0' else MIN_SPEED;
  speed_M4 <= (others => '0') when SW(7) = '0' else MIN_SPEED;

  u_motor1 : MotorControl
    port map(
      clk    => CLK100MHZ,
      resetn => CPU_RESETN,
      speed  => speed_M1,
      dir    => dir_M1,
      in1    => M1_IN1,
      in2    => M1_IN2
    );

  u_motor2 : MotorControl
    port map(
      clk    => CLK100MHZ,
      resetn => CPU_RESETN,
      speed  => speed_M2,
      dir    => dir_M2,
      in1    => M2_IN1,
      in2    => M2_IN2
    );

  u_motor3 : MotorControl
    port map(
      clk    => CLK100MHZ,
      resetn => CPU_RESETN,
      speed  => speed_M3,
      dir    => dir_M3,
      in1    => M3_IN1,
      in2    => M3_IN2
    );

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
