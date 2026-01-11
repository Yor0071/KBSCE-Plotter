library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ov7670_capture is
    port (
        pclk  : in  std_logic;                      -- Pixel clock
        vsync : in  std_logic;                      -- Frame sync
        href  : in  std_logic;                      -- Line valid
        d     : in  std_logic_vector(7 downto 0);   -- Camera data bus

        addr  : out std_logic_vector(18 downto 0);  -- Framebuffer address
        pixel : out std_logic_vector(11 downto 0);  -- RGB444 pixel
        we    : out std_logic                       -- Write enable
    );
end entity;

architecture rtl of ov7670_capture is

    -- Framebuffer address counter
    signal addr_reg   : unsigned(18 downto 0) := (others => '0');
    
    -- Pixel register (RGB444)
    signal pixel_reg  : std_logic_vector(11 downto 0) := (others => '0');
    
    -- Write enable pulse
    signal we_reg     : std_logic := '0';

    -- Byte phase: 0 = first byte, 1 = second byte
    signal phase      : std_logic := '0';
    
    -- Stores first byte
    signal first_byte : std_logic_vector(7 downto 0) := (others => '0');

begin

    -- Output assignments
    addr  <= std_logic_vector(addr_reg);
    pixel <= pixel_reg;
    we    <= we_reg;

    process(pclk)
    begin
        if falling_edge(pclk) then

            we_reg <= '0';  -- Default: no write

            if vsync = '1' then
                -- New frame
                addr_reg <= (others => '0');
                phase    <= '0';

            elsif href = '1' then

                if phase = '0' then
                    -- First byte
                    first_byte <= d;
                    phase      <= '1';

                else
                    -- Second byte: assemble RGB444
                    pixel_reg(11 downto 8) <= first_byte(3 downto 0); -- R
                    pixel_reg(7  downto 4) <= d(7 downto 4);          -- G
                    pixel_reg(3  downto 0) <= d(3 downto 0);          -- B

                    we_reg <= '1';

                    if addr_reg < to_unsigned(640*480-1, addr_reg'length) then
                        addr_reg <= addr_reg + 1;
                    end if;

                    phase <= '0';
                end if;

            else
                -- Outside active line
                phase <= '0';
            end if;
        end if;
    end process;

end architecture;
