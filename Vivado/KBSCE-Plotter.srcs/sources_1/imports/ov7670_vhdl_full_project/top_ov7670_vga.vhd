library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_ov7670_vga is
    port (
        CLK100MHZ  : in  std_logic;
        CPU_RESETN : in  std_logic;

        -- OV7670 interface
        OV_PCLK  : in  std_logic;
        OV_VSYNC : in  std_logic;
        OV_HREF  : in  std_logic;
        OV_D     : in  std_logic_vector(7 downto 0);
        OV_XCLK  : out std_logic;
        OV_SIOC  : inout std_logic;
        OV_SIOD  : inout std_logic;
        OV_PWDN  : out std_logic;
        OV_RESET : out std_logic;

        -- VGA
        VGA_HS   : out std_logic;
        VGA_VS   : out std_logic;
        VGA_R    : out std_logic_vector(3 downto 0);
        VGA_G    : out std_logic_vector(3 downto 0);
        VGA_B    : out std_logic_vector(3 downto 0);

        -- LEDs
        LED0     : out std_logic;
        LED1     : out std_logic
    );
    attribute CLOCK_BUFFER_TYPE : string;
    attribute CLOCK_BUFFER_TYPE of OV_PCLK : signal is "NONE";
end entity;

architecture rtl of top_ov7670_vga is

    --------------------------------------------------------------------
    -- Clock & reset
    --------------------------------------------------------------------
    signal pll_reset  : std_logic;
    signal sys_reset  : std_logic;
    signal clk25      : std_logic;
    signal clk24      : std_logic;
    signal clk_locked : std_logic;


    --------------------------------------------------------------------
    -- OV7670 capture -> framebuffer
    --------------------------------------------------------------------
    signal cap_addr  : std_logic_vector(18 downto 0);
    signal cap_pixel : std_logic_vector(11 downto 0);
    signal cap_we    : std_logic;

    --------------------------------------------------------------------
    -- VGA sync + framebuffer read
    --------------------------------------------------------------------
    signal vga_x       : integer range 0 to 799;
    signal vga_y       : integer range 0 to 524;
    signal vga_active  : std_logic;
    signal vga_addr    : unsigned(18 downto 0);

    signal fb_dout     : std_logic_vector(11 downto 0);

    signal active_d1   : std_logic := '0';
    signal active_d2   : std_logic := '0';

    --------------------------------------------------------------------
    -- Component declaraties
    --------------------------------------------------------------------
    component ov7670_capture
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

    component vga_sync
            port (
                clk25      : in  std_logic;
                reset      : in  std_logic;
                hsync      : out std_logic;
                vsync      : out std_logic;
                active     : out std_logic;
                x          : out integer range 0 to 799;
                y          : out integer range 0 to 524
            );
            end component;

    component frame_buffer
        port (
            -- Port A: write (camera)
            clka   : in  std_logic;
            wea    : in  std_logic_vector(0 downto 0);
            addra  : in  std_logic_vector(18 downto 0);
            dina   : in  std_logic_vector(11 downto 0);
            douta  : out std_logic_vector(11 downto 0);

            -- Port B: read (VGA)
            clkb   : in  std_logic;
            web    : in  std_logic_vector(0 downto 0);
            addrb  : in  std_logic_vector(18 downto 0);
            dinb   : in  std_logic_vector(11 downto 0);
            doutb  : out std_logic_vector(11 downto 0)
        );
    end component;

    -- Clocking Wizard (pas naam/poortjes aan als jouw IP anders heet)
    component clk_wiz_0
        port (
            clk_in1  : in  std_logic;
            reset    : in  std_logic;
            locked   : out std_logic;
            clk_out1 : out std_logic;  -- 25 MHz
            clk_out2 : out std_logic   -- 24 MHz
        );
    end component;

begin

    --------------------------------------------------------------------
    -- Reset & klokken
    --------------------------------------------------------------------
    pll_reset <= not CPU_RESETN;
    sys_reset <= (not CPU_RESETN) or (not clk_locked);

    u_clk : clk_wiz_0
        port map (
            clk_in1  => CLK100MHZ,
            reset    => pll_reset,
            locked   => clk_locked,
            clk_out1 => clk25,   -- 25 MHz voor VGA
            clk_out2 => clk24    -- 24 MHz voor OV7670 XCLK
        );

    -- Gebruik 24 MHz als XCLK voor de camera
    OV_XCLK <= clk24;

    --------------------------------------------------------------------
    -- OV7670 vaste signalen
    --------------------------------------------------------------------
    OV_PWDN  <= '0';      -- camera altijd aan
    OV_RESET <= '1';    -- reset hoog als systeemreset actief is

    --------------------------------------------------------------------
    -- Capture instantiatie (camera -> framebuffer)
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
    -- VGA sync instantiatie
    --------------------------------------------------------------------
    u_vga : vga_sync
        port map (
            clk25  => clk25,
            reset  => sys_reset,
            hsync  => VGA_HS,
            vsync  => VGA_VS,
            active => vga_active,
            x      => vga_x,
            y      => vga_y
        );

    --------------------------------------------------------------------
    -- Framebuffer: True Dual Port BRAM
    --------------------------------------------------------------------
    u_fb : frame_buffer
        port map (
            -- Port A: camera write
            clka  => OV_PCLK,
            wea   => (0 => cap_we),
            addra => cap_addr,
            dina  => cap_pixel,
            douta => open,

            -- Port B: VGA read
            clkb  => clk25,
            web   => (0 => '0'),
            addrb => std_logic_vector(vga_addr),
            dinb  => (others => '0'),
            doutb => fb_dout
        );


    --------------------------------------------------------------------
    -- Adresberekening VGA-kant
    --------------------------------------------------------------------
    process(vga_x, vga_y)
        variable tmp : unsigned(18 downto 0);
    begin
        if (vga_x < 640) and (vga_y < 480) then
            tmp := resize(to_unsigned(vga_y, 19) * 640 +
 to_unsigned(vga_x, 19), 19);
        else
            tmp := (others => '0');
        end if;
        vga_addr <= tmp;
    end process;

    --------------------------------------------------------------------
    -- Align 'active' met BRAM latency
    --------------------------------------------------------------------
    process(clk25)
    begin
        if rising_edge(clk25) then
            if sys_reset = '1' then
                active_d1 <= '0';
                active_d2 <= '0';
            else
                active_d1 <= vga_active;
                active_d2 <= active_d1;
            end if;
        end if;
    end process;

    --------------------------------------------------------------------
    -- RGB-output (nu nog 4-4-4 grijs)
    --------------------------------------------------------------------
    process(clk25)
    begin
        if rising_edge(clk25) then
            if active_d2 = '1' then
                VGA_R <= fb_dout(11 downto 8);
                VGA_G <= fb_dout(7 downto 4);
                VGA_B <= fb_dout(3 downto 0);
            else
                VGA_R <= (others => '0');
                VGA_G <= (others => '0');
                VGA_B <= (others => '0');
            end if;
        end if;
    end process;

    --------------------------------------------------------------------
    -- LEDs
    --------------------------------------------------------------------
    LED0 <= not CPU_RESETN;  -- aan zodra reset los is
    LED1 <= not clk_locked;      -- handig als "PLL locked" indicatie

end architecture;
