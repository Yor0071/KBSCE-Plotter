----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/12/2025 09:33:07 AM
-- Design Name: 
-- Module Name: BRAMAddressDivider - RTL
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BRAMAddressDivider is
    port(
        bram_in_en : in std_logic; -- Chip Enable Signal (optional)
        bram_in_dout : out std_logic_vector(31 downto 0); -- Data Out Bus (optional)
        bram_in_din : in std_logic_vector(31 downto 0); -- Data In Bus (optional)
        bram_in_we : in std_logic_vector(0 downto 0); -- Byte Enables (optional)
        bram_in_addr : in std_logic_vector(31 downto 0); -- Address Signal (required)
        bram_in_clk : in std_logic; -- Clock Signal (required)
        bram_in_rst : in std_logic; -- Reset Signal (required)
        
        bram_out_en : out std_logic; -- Chip Enable Signal (optional)
        bram_out_dout : in std_logic_vector(31 downto 0); -- Data Out Bus (optional)
        bram_out_din : out std_logic_vector(31 downto 0); -- Data In Bus (optional)
        bram_out_we : out std_logic_vector(0 downto 0); -- Byte Enables (optional)
        bram_out_addr : out std_logic_vector(31 downto 0); -- Address Signal (required)
        bram_out_clk : out std_logic; -- Clock Signal (required)
        bram_out_rst : out std_logic -- Reset Signal (required)
    );
end BRAMAddressDivider;

architecture RTL of BRAMAddressDivider is
    ATTRIBUTE X_INTERFACE_INFO : STRING;
    ATTRIBUTE X_INTERFACE_INFO of bram_in_en:   SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_PORT_IN EN";
    ATTRIBUTE X_INTERFACE_INFO of bram_in_dout: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_PORT_IN DOUT";
    ATTRIBUTE X_INTERFACE_INFO of bram_in_din:  SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_PORT_IN DIN";
    ATTRIBUTE X_INTERFACE_INFO of bram_in_we:   SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_PORT_IN WE";
    ATTRIBUTE X_INTERFACE_INFO of bram_in_addr: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_PORT_IN ADDR";
    ATTRIBUTE X_INTERFACE_INFO of bram_in_clk:  SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_PORT_IN CLK";
    ATTRIBUTE X_INTERFACE_INFO of bram_in_rst:  SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_PORT_IN RST";
    
    ATTRIBUTE X_INTERFACE_INFO of bram_out_en:   SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT EN";
    ATTRIBUTE X_INTERFACE_INFO of bram_out_dout: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT DOUT";
    ATTRIBUTE X_INTERFACE_INFO of bram_out_din:  SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT DIN";
    ATTRIBUTE X_INTERFACE_INFO of bram_out_we:   SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT WE";
    ATTRIBUTE X_INTERFACE_INFO of bram_out_addr: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT ADDR";
    ATTRIBUTE X_INTERFACE_INFO of bram_out_clk:  SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT CLK";
    ATTRIBUTE X_INTERFACE_INFO of bram_out_rst:  SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_PORT_OUT RST";
    
    ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
    ATTRIBUTE X_INTERFACE_PARAMETER of bram_in_addr :  SIGNAL is "MASTER_TYPE OTHER";
    ATTRIBUTE X_INTERFACE_PARAMETER of bram_out_addr : SIGNAL is "MASTER_TYPE OTHER";
begin
    bram_out_en   <= bram_in_en;
    bram_out_din  <= bram_in_din;
    bram_out_we   <= bram_in_we;
    bram_out_addr <= "00" & bram_in_addr(31 downto 2); -- divide by 4
    bram_out_clk  <= bram_in_clk;
    bram_out_rst  <= bram_in_rst;
    
    bram_in_dout <= bram_out_dout;
end RTL;
