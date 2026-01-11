library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ov7670_capture is
    port (
        pclk  : in  std_logic;                      -- OV7670 pixel clock
        vsync : in  std_logic;                      -- frame sync (active high)
        href  : in  std_logic;                      -- line valid (active high)
        d     : in  std_logic_vector(7 downto 0);   -- pixel data bus

        addr  : out std_logic_vector(18 downto 0);  -- 0 .. 307199 (640*480-1)
        pixel : out std_logic_vector(11 downto 0);  -- 4R-4G-4B
        we    : out std_logic                       -- write enable for BRAM
    );
end entity;

architecture rtl of ov7670_capture is

    -- Framebuffer address counter (increments once per completed pixel)
    signal addr_reg   : unsigned(18 downto 0) := (others => '0');
    
    -- Latched RGB444 pixel output
    signal pixel_reg  : std_logic_vector(11 downto 0) := (others => '0');
    
    -- One-cycle write strobe when a full pixel (2 bytes) has been captured
    signal we_reg     : std_logic := '0';

    -- Byte assembly state:
    --   '0' = first byte received (contains R nibble in RGB444 mode)
    --   '1' = second byte received (contains G and B nibbles)
    signal phase      : std_logic := '0';
    
    -- Stores the first byte until the second byte arrives
    signal first_byte : std_logic_vector(7 downto 0) := (others => '0');

begin

    -- Drive outputs from internal registers
    addr  <= std_logic_vector(addr_reg);
    pixel <= pixel_reg;
    we    <= we_reg;

    process(pclk)
    begin
        if falling_edge(pclk) then

            we_reg <= '0';  -- Default: no write

            if vsync = '1' then
                ----------------------------------------------------------------
                -- Start of a new frame:
                -- reset address counter and byte assembly state
                ----------------------------------------------------------------
                addr_reg  <= (others => '0');
                phase     <= '0';

            elsif href = '1' then

                if phase = '0' then
                    ------------------------------------------------------------
                    -- First byte: latch and wait for second byte
                    ------------------------------------------------------------
                    first_byte <= d;
                    phase      <= '1';

                else
                    ------------------------------------------------------------
                    -- Second byte: GGGG BBBB
                    ------------------------------------------------------------
                    pixel_reg(11 downto 8) <= first_byte(3 downto 0); -- "R"
                    pixel_reg(7  downto 4) <= d(7 downto 4); -- "G"
                    pixel_reg(3  downto 0) <= d(3 downto 0); -- "B"

                    we_reg <= '1';

                    -- Increment framebuffer address (bounded to 640*480)
                    if addr_reg < to_unsigned(640*480-1, addr_reg'length) then
                        addr_reg <= addr_reg + 1;
                    end if;

                    phase <= '0';
                end if;

            else
                ----------------------------------------------------------------
                -- Outside active line (href low):
                -- reset phase so the next active line starts on the first byte
                ----------------------------------------------------------------
                phase <= '0';
            end if;
        end if;
    end process;

end architecture;
