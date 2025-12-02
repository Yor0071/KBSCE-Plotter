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

use ieee.std_logic_textio.all;
use std.textio.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity VGASignalGenerator_VGAExporter_tb is
--  Port ( );
end VGASignalGenerator_VGAExporter_tb;

architecture Behavioral of VGASignalGenerator_VGAExporter_tb is
    component VGASignalGenerator is
        port(
            pclk : in std_logic; -- Should be 23.75 MHz, Technisch Ontwerp 5.4.1 in CRT timing parameters

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
        pclk => pclk,

        vga_R => vga_R,
        vga_G => vga_G,
        vga_B => vga_B,

        vga_HS => vga_HS,
        vga_VS => vga_VS
    );

    PCLK_GENERATOR: process is
    begin
        pclk <= '1'; -- T = 1/f -> 1 / 23.75 MHz = 42 ns approximately
        wait for 21 ns; -- This tool requires less precision
        pclk <= '0';
        wait for 21 ns;
    end process;

    -- Upload file to https://madlittlemods.github.io/vga-simulator/
    -- More on blog: https://ericeastwood.com/blog/vga-simulator-getting-started/
    VGA_EXPORTER: process (pclk)
        file file_pointer: text is out "write.txt";
        variable line_el: line;
    begin
        if rising_edge(pclk) then
            -- Write the time
            write(line_el, now); -- write the line.
            write(line_el, string'(":")); -- write the line.

            -- Write the hsync
            write(line_el, string'(" "));
            write(line_el, vga_HS); -- write the line.

            -- Write the vsync
            write(line_el, string'(" "));
            write(line_el, vga_VS); -- write the line.

            -- Write the red
            write(line_el, string'(" "));
            write(line_el, vga_R); -- write the line.

            -- Write the green
            write(line_el, string'(" "));
            write(line_el, vga_G); -- write the line.

            -- Write the blue
            write(line_el, string'(" "));
            write(line_el, vga_B); -- write the line.

            -- write the contents into the file.
            writeline(file_pointer, line_el);
        end if;
    end process;

end Behavioral;
