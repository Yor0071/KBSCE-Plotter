library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vga_sync is
    port (
        clk25      : in  std_logic;
        reset      : in  std_logic;
        hsync      : out std_logic;
        vsync      : out std_logic;
        active     : out std_logic;
        x          : out integer range 0 to 799;
        y          : out integer range 0 to 524
    );
end entity;

architecture rtl of vga_sync is
    constant H_VISIBLE   : integer := 640;
    constant H_FRONT     : integer := 16;
    constant H_SYNC_PW   : integer := 96;
    constant H_BACK      : integer := 48;
    constant H_TOTAL     : integer := H_VISIBLE + H_FRONT + H_SYNC_PW + H_BACK; -- 800

    constant V_VISIBLE   : integer := 480;
    constant V_FRONT     : integer := 10;
    constant V_SYNC_PW   : integer := 2;
    constant V_BACK      : integer := 33;
    constant V_TOTAL     : integer := V_VISIBLE + V_FRONT + V_SYNC_PW + V_BACK; -- 525

    constant H_SYNC_START : integer := H_VISIBLE + H_FRONT;
    constant H_SYNC_END   : integer := H_VISIBLE + H_FRONT + H_SYNC_PW - 1;
    constant V_SYNC_START : integer := V_VISIBLE + V_FRONT;
    constant V_SYNC_END   : integer := V_VISIBLE + V_FRONT + V_SYNC_PW - 1;

    signal h_cnt : integer range 0 to H_TOTAL-1 := 0;
    signal v_cnt : integer range 0 to V_TOTAL-1 := 0;
begin
    process(clk25, reset)
    begin
        if reset = '1' then
            h_cnt <= 0;
            v_cnt <= 0;
        elsif rising_edge(clk25) then
            if h_cnt = H_TOTAL - 1 then
                h_cnt <= 0;
                if v_cnt = V_TOTAL - 1 then
                    v_cnt <= 0;
                else
                    v_cnt <= v_cnt + 1;
                end if;
            else
                h_cnt <= h_cnt + 1;
            end if;
        end if;
    end process;

    hsync <= '0' when (h_cnt >= H_SYNC_START and h_cnt <= H_SYNC_END) else '1';
    vsync <= '0' when (v_cnt >= V_SYNC_START and v_cnt <= V_SYNC_END) else '1';

    active <= '1' when (h_cnt < H_VISIBLE and v_cnt < V_VISIBLE) else '0';

    x <= h_cnt;
    y <= v_cnt;
end architecture;
