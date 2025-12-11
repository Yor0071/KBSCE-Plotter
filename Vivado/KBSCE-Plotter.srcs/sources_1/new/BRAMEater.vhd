----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/11/2025 05:29:36 PM
-- Design Name: 
-- Module Name: BRAMEater - Behavioral
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

entity BRAMEater is
    port(
        bram_en : in std_logic; -- Chip Enable Signal (optional)
        bram_dout : out std_logic_vector(11 downto 0); -- Data Out Bus (optional)
        bram_din : in std_logic_vector(11 downto 0); -- Data In Bus (optional)
        bram_we : in std_logic_vector(0 downto 0); -- Byte Enables (optional)
        bram_addr : in std_logic_vector(18 downto 0); -- Address Signal (required)
        bram_clk : in std_logic; -- Clock Signal (required)
        bram_rst : in std_logic -- Reset Signal (required)
    );
end BRAMEater;

architecture Behavioral of BRAMEater is
    ATTRIBUTE X_INTERFACE_INFO : STRING;
    ATTRIBUTE X_INTERFACE_INFO of bram_en:   SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT EN";
    ATTRIBUTE X_INTERFACE_INFO of bram_dout: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT DOUT";
    ATTRIBUTE X_INTERFACE_INFO of bram_din:  SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT DIN";
    ATTRIBUTE X_INTERFACE_INFO of bram_we:   SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT WE";
    ATTRIBUTE X_INTERFACE_INFO of bram_addr: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT ADDR";
    ATTRIBUTE X_INTERFACE_INFO of bram_clk:  SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT CLK";
    ATTRIBUTE X_INTERFACE_INFO of bram_rst:  SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT RST";
    
begin


end Behavioral;
