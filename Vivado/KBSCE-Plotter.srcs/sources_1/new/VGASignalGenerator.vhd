----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/28/2025 02:27:38 PM
-- Design Name: 
-- Module Name: vga_signal_generator - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity VGASignalGenerator is
    port(
        clk_23_75MHz : in std_logic; -- Should be 23.75 MHz, Technisch Ontwerp 5.4.1 in CRT timing parameters
        
        vga_R  : out std_logic_vector(3 downto 0); -- RGB444
        vga_G  : out std_logic_vector(3 downto 0);
        vga_B  : out std_logic_vector(3 downto 0);
        vga_HS : out std_logic; -- Horizontal Sync
        vga_VS : out std_logic -- Vertical Sync
    );
end VGASignalGenerator;

architecture Behavioral of VGASignalGenerator is
    constant TOTAL_ACTIVE_PIXELS : natural := 640; -- Active display region
    constant V_LINES_RND : natural := 480;
    
    constant TOTAL_PIXELS : natural := 800; -- This includes blanking
    constant TOTAL_V_LINES : natural := 500;
    
    constant H_SYNC_POLARITY : std_logic := '0'; -- Pulse polarity
    constant V_SYNC_POLARITY : std_logic := '1';
    
    constant H_FRONT_PORCH : natural := 16; -- Technisch Ontwerp 5.4.1 in signal production
    constant H_SYNC_PULSE : natural := 64;
    
    constant V_FRONT_PORCH : natural := 3;
    constant V_SYNC_PULSE : natural := 4;
begin
    process (clk_23_75MHz) is
        variable hCount : integer range 0 to TOTAL_PIXELS - 1 := 0;
        variable vCount : integer range 0 to TOTAL_V_LINES - 1 := 0;
    begin
        if rising_edge(clk_23_75MHz) then
            if hCount = TOTAL_PIXELS - 1 then -- Counter for horizontal pixels
                hCount := 0;
                
                if vCount = TOTAL_V_LINES - 1 then -- Counter for vertical scanlines
                    vCount := 0;
                else
                    vCount := vCount + 1;
                end if;
            else
                hCount := hCount + 1;
            end if;
            
            vga_HS <= not H_SYNC_POLARITY;
            vga_VS <= not V_SYNC_POLARITY;
            if hCount >= TOTAL_ACTIVE_PIXELS then -- In blanking area
                if hCount >= TOTAL_ACTIVE_PIXELS + H_FRONT_PORCH then
                    if hCount < TOTAL_ACTIVE_PIXELS + H_FRONT_PORCH + H_SYNC_PULSE then
                        vga_HS <= H_SYNC_POLARITY; -- H Sync Pulse
                    end if;
                end if;
            end if;
            
            if vCount >= V_LINES_RND then -- In blanking area
                if vCount >= V_LINES_RND + V_FRONT_PORCH then
                    if vCount < V_LINES_RND + V_FRONT_PORCH + V_SYNC_PULSE then
                        vga_VS <= V_SYNC_POLARITY; -- V Sync Pulse
                    end if;
                end if;
            end if;
            
            if hCount < TOTAL_ACTIVE_PIXELS and vCount < V_LINES_RND then -- Active Display Region
                vga_R <= (others => '1'); -- Hardcoded red
                vga_G <= (others => '0');
                vga_B <= (others => '0');
            else
                vga_R <= (others => '0'); -- Force blank color: in blanking region
                vga_G <= (others => '0');
                vga_B <= (others => '0');
            end if;
        end if;
    end process;

end Behavioral;
