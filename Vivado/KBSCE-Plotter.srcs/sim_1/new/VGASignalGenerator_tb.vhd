----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/28/2025 03:34:41 PM
-- Design Name: 
-- Module Name: VGASignalGenerator_tb - Behavioral
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

entity VGASignalGenerator_tb is
--  Port ( );
end VGASignalGenerator_tb;

architecture Behavioral of VGASignalGenerator_tb is
    component VGASignalGenerator is
        port(
            clk_23_75MHz : in std_logic; -- Should be 23.75 MHz, Technisch Ontwerp 5.4.1 in CRT timing parameters
            
            vga_R  : out std_logic_vector(3 downto 0); -- RGB444
            vga_G  : out std_logic_vector(3 downto 0);
            vga_B  : out std_logic_vector(3 downto 0);
            vga_HS : out std_logic; -- Horizontal Sync
            vga_VS : out std_logic -- Vertical Sync
        );
    end component VGASignalGenerator;
    
    signal pclk : std_logic;
    signal vga_R, vga_G, vga_B : std_logic_vector(3 downto 0);
    signal vga_HS, vga_VS : std_logic;
    
begin
    uut: VGASignalGenerator port map(
        clk_23_75MHz => pclk,
        
        vga_R => vga_R,
        vga_G => vga_G,
        vga_B => vga_B,
        
        vga_HS => vga_HS,
        vga_VS => vga_VS
    );
    
    PCLK_GENERATOR: process is
    begin
        pclk <= '1'; -- T = 1/f -> 1 / 23.75 MHz = 42 ns approximately
        wait for 21 ns;
        pclk <= '0';
        wait for 21 ns;
    end process;
    
    TEST_BENCH: process is
    begin
        report "Begin test bench";
        
        -- We do not need to give input other than the clock
        -- A horizontal scanline takes 800 TOTAL_PIXELS so after 800 * 42 ns = 33.6 us
        wait for 34 us;
        
        report "End test bench";
        wait; -- Do not loop
    end process;

end Behavioral;
