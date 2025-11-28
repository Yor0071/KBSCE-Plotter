library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity line_buffer is
    port (
        -- schrijfkant (camera / OV_PCLK)
        wr_clk  : in  std_logic;
        wr_en   : in  std_logic;
        wr_addr : in  std_logic_vector(9 downto 0);   -- 0..639
        wr_data : in  std_logic_vector(11 downto 0);

        -- leeskant (VGA / clk25)
        rd_clk  : in  std_logic;
        rd_addr : in  std_logic_vector(9 downto 0);   -- 0..639
        rd_data : out std_logic_vector(11 downto 0)
    );
end entity;

architecture rtl of line_buffer is
    type ram_t is array (0 to 639) of std_logic_vector(11 downto 0);
    signal ram : ram_t;

    signal rd_data_reg : std_logic_vector(11 downto 0);
begin

    -- schrijven (OV_PCLK-domein)
    process(wr_clk)
    begin
        if rising_edge(wr_clk) then
            if wr_en = '1' then
                ram(to_integer(unsigned(wr_addr))) <= wr_data;
            end if;
        end if;
    end process;

    -- lezen (clk25-domein)
    process(rd_clk)
    begin
        if rising_edge(rd_clk) then
            rd_data_reg <= ram(to_integer(unsigned(rd_addr)));
        end if;
    end process;

    rd_data <= rd_data_reg;

end architecture;
