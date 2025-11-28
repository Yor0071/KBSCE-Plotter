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

    signal addr_reg  : unsigned(18 downto 0) := (others => '0');
    signal pixel_reg : std_logic_vector(11 downto 0) := (others => '0');
    signal we_reg    : std_logic := '0';

    signal phase     : unsigned(1 downto 0) := (others => '0');
    signal y0        : std_logic_vector(7 downto 0) := (others => '0');

    signal vsync_d, href_d : std_logic := '0';

begin

    addr  <= std_logic_vector(addr_reg);
    pixel <= pixel_reg;
    we    <= we_reg;

    process(pclk)
    begin
        if falling_edge(pclk) then
            vsync_d <= vsync;
            href_d  <= href;

            we_reg <= '0';

            if vsync_d = '1' then
                -- nieuw frame
                addr_reg <= (others => '0');
                phase    <= (others => '0');

            elsif href_d = '1' then
                -- we nemen YUYV aan: Y0 U0 Y1 V0 ...
                case phase is
                    when "00" =>   -- Y0
                        y0 <= d;

                        -- schrijf grijs-pixel op basis van Y
                        pixel_reg(11 downto 8) <= d(7 downto 4);
                        pixel_reg(7 downto 4)  <= d(7 downto 4);
                        pixel_reg(3 downto 0)  <= d(7 downto 4);
                        we_reg <= '1';
                        if addr_reg < to_unsigned(640*480-1, addr_reg'length) then
                            addr_reg <= addr_reg + 1;
                        end if;

                        phase <= "01";  -- volgende: U0 (negeren)

                    when "01" =>
                        -- U0, negeren
                        phase <= "10";

                    when "10" =>   -- Y1
                        -- tweede Y → tweede pixel
                        pixel_reg(11 downto 8) <= d(7 downto 4);
                        pixel_reg(7 downto 4)  <= d(7 downto 4);
                        pixel_reg(3 downto 0)  <= d(7 downto 4);
                        we_reg <= '1';
                        if addr_reg < to_unsigned(640*480-1, addr_reg'length) then
                            addr_reg <= addr_reg + 1;
                        end if;

                        phase <= "11";  -- volgende: V0 (negeren)

                    when others =>  -- "11"
                        -- V0, negeren
                        phase <= "00";
                end case;

            else
                -- buiten actieve lijn
                phase <= (others => '0');
            end if;
        end if;
    end process;

end architecture;
