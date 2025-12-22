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
        BRAM_PORT_CAM_addr : in STD_LOGIC_VECTOR ( 18 downto 0 );
        BRAM_PORT_CAM_clk  : in STD_LOGIC;
        BRAM_PORT_CAM_din  : in STD_LOGIC_VECTOR ( 11 downto 0 );
        BRAM_PORT_CAM_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
        BRAM_PORT_CAM_en   : in STD_LOGIC;
        BRAM_PORT_CAM_rst  : in STD_LOGIC;
        BRAM_PORT_CAM_we   : in STD_LOGIC_VECTOR ( 0 to 0 );
    
        BRAM_PORT_VGA_addr : in STD_LOGIC_VECTOR ( 18 downto 0 );
        BRAM_PORT_VGA_clk  : in STD_LOGIC;
        BRAM_PORT_VGA_din  : in STD_LOGIC_VECTOR ( 11 downto 0 );
        BRAM_PORT_VGA_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
        BRAM_PORT_VGA_en   : in STD_LOGIC;
        BRAM_PORT_VGA_we   : in STD_LOGIC_VECTOR ( 0 to 0 );
    
        BTN_tri_i     : in  STD_LOGIC_VECTOR ( 4 downto 0 );
        IIC_0_scl_io  : inout STD_LOGIC;
        IIC_0_sda_io  : inout STD_LOGIC;
        LED_tri_o     : out STD_LOGIC_VECTOR ( 15 downto 0 );
        SW_tri_i      : in  STD_LOGIC_VECTOR ( 15 downto 0 );
    
        VGA_PCLK      : out STD_LOGIC;
        cam_clk_0     : out STD_LOGIC;
    
        enc_x1_a_0 : in STD_LOGIC;
        enc_x1_b_0 : in STD_LOGIC;
        enc_x2_a_0 : in STD_LOGIC;
        enc_x2_b_0 : in STD_LOGIC;
        enc_y_a_0  : in STD_LOGIC;
        enc_y_b_0  : in STD_LOGIC;
        enc_z_a_0  : in STD_LOGIC;
        enc_z_b_0  : in STD_LOGIC;
    
        m1_in1_0 : out STD_LOGIC;
        m1_in2_0 : out STD_LOGIC;
        m2_in1_0 : out STD_LOGIC;
        m2_in2_0 : out STD_LOGIC;
        m3_in1_0 : out STD_LOGIC;
        m3_in2_0 : out STD_LOGIC;
        m4_in1_0 : out STD_LOGIC;
        m4_in2_0 : out STD_LOGIC;
    
        reset        : in STD_LOGIC;
        sys_clock    : in STD_LOGIC;
        usb_uart_rxd : in STD_LOGIC;
        usb_uart_txd : out STD_LOGIC
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

    signal frozen : std_logic := '0';

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
        -- Port VGA (read)
        BRAM_PORT_VGA_addr => vga_address,
        BRAM_PORT_VGA_clk  => VGA_PCLK,
        BRAM_PORT_VGA_din  => (others => '0'),     -- unused
        BRAM_PORT_VGA_dout => vga_pixel_data,
        BRAM_PORT_VGA_en   => '1',
        BRAM_PORT_VGA_we   => (others => '0'),     -- read
    
        -- Port CAM (write)
        BRAM_PORT_CAM_addr => cap_addr,
        BRAM_PORT_CAM_clk  => OV_PCLK,
        BRAM_PORT_CAM_din  => cap_pixel,
        BRAM_PORT_CAM_dout => cam_fb_dout_dummy,   -- unused
        BRAM_PORT_CAM_en   => '1',
        BRAM_PORT_CAM_we   => (0 => (not frozen)), -- write enable (jouw freeze)
        BRAM_PORT_CAM_rst  => '0',                 -- of evt. (not CPU_RESETN) / '0'
    
        -- Buttons, I2C
        BTN_tri_i    => BTN,
        IIC_0_scl_io => OV_SIOC,
        IIC_0_sda_io => OV_SIOD,
    
        -- LED & switches
        LED_tri_o => LED,
        SW_tri_i  => SW,
    
        -- clocks
        VGA_PCLK  => VGA_PCLK,
        cam_clk_0 => cam_clk_i,
    
        -- encoders
        enc_x1_a_0 => enc_x1_a_0,
        enc_x1_b_0 => enc_x1_b_0,
        enc_x2_a_0 => enc_x2_a_0,
        enc_x2_b_0 => enc_x2_b_0,
        enc_y_a_0  => enc_y_a_0,
        enc_y_b_0  => enc_y_b_0,
        enc_z_a_0  => enc_z_a_0,
        enc_z_b_0  => enc_z_b_0,
    
        -- motor outputs
        m1_in1_0 => m1_in1_0,
        m1_in2_0 => m1_in2_0,
        m2_in1_0 => m2_in1_0,
        m2_in2_0 => m2_in2_0,
        m3_in1_0 => m3_in1_0,
        m3_in2_0 => m3_in2_0,
        m4_in1_0 => m4_in1_0,
        m4_in2_0 => m4_in2_0,
    
        -- reset + UART
        reset        => CPU_RESETN,
        sys_clock    => CLK100MHZ,
        usb_uart_rxd => UART_RX_OUT,
        usb_uart_txd => UART_TX_IN
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
    OV_RESET <= '1';        -- of bv. CPU_RESETN, afhankelijk van je 

    --------------------------------------------------------------------
    -- Freeze / Release logica
    -- BTN(0) = foto (freeze), BTN(4) = release (live)
    --------------------------------------------------------------------
    process (VGA_PCLK, CPU_RESETN)
    begin
        if CPU_RESETN = '0' then
            frozen <= '0';  -- start in live-modus
        elsif rising_edge(VGA_PCLK) then
            -- BTN(0) = center button => freeze
            if BTN(0) = '1' then
                frozen <= '1';
            -- BTN(3) = right button  => release
            elsif BTN(3) = '1' then
                frozen <= '0';
            end if;
        end if;
    end process;


end RTL;
