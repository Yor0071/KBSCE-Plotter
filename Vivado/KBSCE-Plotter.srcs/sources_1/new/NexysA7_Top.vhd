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
            pclk : in std_logic; -- Should be 25 MHz, Technisch Ontwerp 5.4.1 in CRT timing parameters
            
            pixel_data: in std_logic_vector(11 downto 0); -- Pixel data is supplied from outside
            fb_address: out std_logic_vector(18 downto 0); -- Framebuffer
        
            vga_R  : out std_logic_vector(3 downto 0); -- RGB444
            vga_G  : out std_logic_vector(3 downto 0);
            vga_B  : out std_logic_vector(3 downto 0);
            vga_HS : out std_logic; -- Horizontal Sync
            vga_VS : out std_logic -- Vertical Sync
        );
    end component VGASignalGenerator;
    
    signal VGA_PCLK : std_logic;
    
    signal vga_pixel_data : std_logic_vector(11 downto 0);
    signal vga_address : std_logic_vector(18 downto 0);

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
      port (
        LED : out STD_LOGIC_VECTOR ( 15 downto 0 );
        SW : in STD_LOGIC_VECTOR ( 15 downto 0 );
        CPU_RESETN : in STD_LOGIC;
        CLK100MHZ : in STD_LOGIC;
        UART_RX_OUT : in STD_LOGIC;
        UART_TX_IN : out STD_LOGIC;
        VGA_PCLK : out STD_LOGIC;
        VGA_FB_addr : in STD_LOGIC_VECTOR ( 18 downto 0 );
        VGA_FB_clk : in STD_LOGIC;
        VGA_FB_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
        VGA_FB_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
        VGA_FB_en : in STD_LOGIC;
        VGA_FB_we : in STD_LOGIC_VECTOR ( 0 to 0 );
        CAM_FB_addr : in STD_LOGIC_VECTOR ( 18 downto 0 );
        CAM_FB_clk : in STD_LOGIC;
        CAM_FB_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
        CAM_FB_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
        CAM_FB_en : in STD_LOGIC;
        CAM_FB_we : in STD_LOGIC_VECTOR ( 0 to 0 )
      );
  end component;

begin
    -- VGA Signal Generator
    u_VGASignalGenerator : VGASignalGenerator port map(
        pclk => VGA_PCLK,
        
        pixel_data => vga_pixel_data,
        fb_address => vga_address,
        
        vga_R => VGA_R,
        vga_G => VGA_G,
        vga_B => VGA_B,
        
        vga_HS => VGA_HS,
        vga_VS => VGA_VS
    );

  u_cpu : RISC_V_wrapper
    port map (
      -- leds & switches
      LED_tri_o    => LED,
      SW_tri_i     => SW,
      LED         => LED,
      SW          => SW,
      CPU_RESETN  => CPU_RESETN,
      CLK100MHZ   => CLK100MHZ,
      UART_RX_OUT => UART_RX_OUT,
      UART_TX_IN  => UART_TX_IN,
      VGA_PCLK    => VGA_PCLK,
      
      VGA_FB_addr  => vga_address,
      VGA_FB_clk   => VGA_PCLK,
      VGA_FB_din   => (others => '0'), -- Unused
      VGA_FB_dout  => vga_pixel_data,
      VGA_FB_en    => '1',
      VGA_FB_we    => (others => '0'), -- Read by default
        
      CAM_FB_addr  => (others => '0'),
      CAM_FB_clk   => '0', -- Change to CAM_PCLK
      CAM_FB_din   => (others => '0'),
      CAM_FB_dout  => open, -- Unused
      CAM_FB_en    => '1',
      CAM_FB_we    => (others => '1') -- Write by default

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
