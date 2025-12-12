library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ov7670_capture is
    port (
        pclk  : in  std_logic;                      -- OV7670 pixel clock
        vsync : in  std_logic;                      -- frame sync (actief hoog)
        href  : in  std_logic;                      -- line valid (actief hoog)
        d     : in  std_logic_vector(7 downto 0);   -- pixel data bus

        addr  : out std_logic_vector(18 downto 0);  -- 0 .. 307199 (640*480-1)
        pixel : out std_logic_vector(11 downto 0);  -- 4R-4G-4B
        we    : out std_logic                       -- write enable voor BRAM
    );
end entity;

architecture rtl of ov7670_capture is

    signal addr_reg   : unsigned(18 downto 0) := (others => '0');
    signal pixel_reg  : std_logic_vector(11 downto 0) := (others => '0');
    signal we_reg     : std_logic := '0';

    -- fase van RGB444-woord: 0 = eerste byte (X RRRR), 1 = tweede byte (GGGG BBBB)
    signal phase      : std_logic := '0';
    signal first_byte : std_logic_vector(7 downto 0) := (others => '0');

begin

    addr  <= std_logic_vector(addr_reg);
    pixel <= pixel_reg;
    we    <= we_reg;

    process(pclk)
    begin
        if falling_edge(pclk) then

            we_reg <= '0';  -- default: geen write

            if vsync = '1' then
                ----------------------------------------------------------------
                -- Nieuw frame: adres en fase resetten
                ----------------------------------------------------------------
                addr_reg  <= (others => '0');
                phase     <= '0';

            elsif href = '1' then
                ----------------------------------------------------------------
                -- Binnen een geldige lijn: twee bytes per pixel
                ----------------------------------------------------------------
                if phase = '0' then
                    ------------------------------------------------------------
                    -- Eerste byte: X RRRR (xRGB: upper nibble = don't care)
                    ------------------------------------------------------------
                    first_byte <= d;
                    phase      <= '1';

                else
                    ------------------------------------------------------------
                    -- Tweede byte: GGGG BBBB
                    -- We negeren G en B en gebruiken alleen R uit first_byte
                    -- voor alle drie de kanalen → grijsbeeld
                    ------------------------------------------------------------
                    pixel_reg(11 downto 8) <= first_byte(3 downto 0); -- "R" = gray
                    pixel_reg(7  downto 4) <= first_byte(3 downto 0); -- "G" = gray
                    pixel_reg(3  downto 0) <= first_byte(3 downto 0); -- "B" = gray

                    we_reg <= '1';

                    -- Adres ophogen zolang we binnen 640*480 zitten
                    if addr_reg < to_unsigned(640*480-1, addr_reg'length) then
                        addr_reg <= addr_reg + 1;
                    end if;

                    phase <= '0';
                end if;

            else
                ----------------------------------------------------------------
                -- Buiten actieve lijn: fase terug naar begin
                ----------------------------------------------------------------
                phase <= '0';
            end if;
        end if;
    end process;

end architecture;
