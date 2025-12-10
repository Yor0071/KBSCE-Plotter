----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/09/2025 09:20:06 AM
-- Design Name: 
-- Module Name: BRAMMux - RTL
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

		
-- bram - Xilinx Block RAM interface (slave directions)
-- 
-- Allowed parameters:
--  MASTER_TYPE               - Master Type               (string default: <blank>) 
--  MEM_ECC                   - Mem Ecc                   (string default: <blank>) 
--  MEM_WIDTH                 - Mem Width                 (long) 
--  MEM_SIZE                  - Mem Size                  (long) 
--  READ_WRITE_MODE           - Read Write Mode           (string default: READ_WRITE)

entity BRAMMultiplier is
    port(
        s_in_en : in std_logic; -- Chip Enable Signal (optional)
        s_in_dout : out std_logic_vector(31 downto 0); -- Data Out Bus (optional)
        s_in_din : in std_logic_vector(31 downto 0); -- Data In Bus (optional)
        s_in_we : in std_logic_vector(0 downto 0); -- Byte Enables (optional)
        s_in_addr : in std_logic_vector(31 downto 0); -- Address Signal (required)
        s_in_clk : in std_logic; -- Clock Signal (required)
        s_in_rst : in std_logic; -- Reset Signal (required)
        
        s_out_a_en : out std_logic; -- Chip Enable Signal (optional)
        s_out_a_dout : in std_logic_vector(31 downto 0); -- Data Out Bus (optional)
        s_out_a_din : out std_logic_vector(31 downto 0); -- Data In Bus (optional)
        s_out_a_we : out std_logic_vector(0 downto 0); -- Byte Enables (optional)
        s_out_a_addr : out std_logic_vector(31 downto 0); -- Address Signal (required)
        s_out_a_clk : out std_logic; -- Clock Signal (required)
        s_out_a_rst : out std_logic; -- Reset Signal (required)
        
        s_out_b_en : out std_logic; -- Chip Enable Signal (optional)
        s_out_b_dout : in std_logic_vector(31 downto 0); -- Data Out Bus (optional)
        s_out_b_din : out std_logic_vector(31 downto 0); -- Data In Bus (optional)
        s_out_b_we : out std_logic_vector(0 downto 0); -- Byte Enables (optional)
        s_out_b_addr : out std_logic_vector(18 downto 0); -- Address Signal (required)
        s_out_b_clk : out std_logic; -- Clock Signal (required)
        s_out_b_rst : out std_logic -- Reset Signal (required)
    );
end BRAMMultiplier;

architecture RTL of BRAMMultiplier is
    ATTRIBUTE X_INTERFACE_INFO : STRING;
    ATTRIBUTE X_INTERFACE_INFO of s_in_en: SIGNAL is "xilinx.com:interface:bram:1.0 DLMB_BRAM_CONTROLLER_PORT_IN EN";
    ATTRIBUTE X_INTERFACE_INFO of s_in_dout: SIGNAL is "xilinx.com:interface:bram:1.0 DLMB_BRAM_CONTROLLER_PORT_IN DOUT";
    ATTRIBUTE X_INTERFACE_INFO of s_in_din: SIGNAL is "xilinx.com:interface:bram:1.0 DLMB_BRAM_CONTROLLER_PORT_IN DIN";
    ATTRIBUTE X_INTERFACE_INFO of s_in_we: SIGNAL is "xilinx.com:interface:bram:1.0 DLMB_BRAM_CONTROLLER_PORT_IN WE";
    ATTRIBUTE X_INTERFACE_INFO of s_in_addr: SIGNAL is "xilinx.com:interface:bram:1.0 DLMB_BRAM_CONTROLLER_PORT_IN ADDR";
    ATTRIBUTE X_INTERFACE_INFO of s_in_clk: SIGNAL is "xilinx.com:interface:bram:1.0 DLMB_BRAM_CONTROLLER_PORT_IN CLK";
    ATTRIBUTE X_INTERFACE_INFO of s_in_rst: SIGNAL is "xilinx.com:interface:bram:1.0 DLMB_BRAM_CONTROLLER_PORT_IN RST";
    
    ATTRIBUTE X_INTERFACE_INFO of s_out_a_en: SIGNAL is "xilinx.com:interface:bram:1.0 LMB_BRAM_OUT_PORT_A EN";
    ATTRIBUTE X_INTERFACE_INFO of s_out_a_dout: SIGNAL is "xilinx.com:interface:bram:1.0 LMB_BRAM_OUT_PORT_A DOUT";
    ATTRIBUTE X_INTERFACE_INFO of s_out_a_din: SIGNAL is "xilinx.com:interface:bram:1.0 LMB_BRAM_OUT_PORT_A DIN";
    ATTRIBUTE X_INTERFACE_INFO of s_out_a_we: SIGNAL is "xilinx.com:interface:bram:1.0 LMB_BRAM_OUT_PORT_A WE";
    ATTRIBUTE X_INTERFACE_INFO of s_out_a_addr: SIGNAL is "xilinx.com:interface:bram:1.0 LMB_BRAM_OUT_PORT_A ADDR";
    ATTRIBUTE X_INTERFACE_INFO of s_out_a_clk: SIGNAL is "xilinx.com:interface:bram:1.0 LMB_BRAM_OUT_PORT_A CLK";
    ATTRIBUTE X_INTERFACE_INFO of s_out_a_rst: SIGNAL is "xilinx.com:interface:bram:1.0 LMB_BRAM_OUT_PORT_A RST";
    
    ATTRIBUTE X_INTERFACE_INFO of s_out_b_en: SIGNAL is "xilinx.com:interface:bram:1.0 FRAMEBUFFER_BRAM_OUT_PORT_B EN";
    ATTRIBUTE X_INTERFACE_INFO of s_out_b_dout: SIGNAL is "xilinx.com:interface:bram:1.0 FRAMEBUFFER_BRAM_OUT_PORT_B DOUT";
    ATTRIBUTE X_INTERFACE_INFO of s_out_b_din: SIGNAL is "xilinx.com:interface:bram:1.0 FRAMEBUFFER_BRAM_OUT_PORT_B DIN";
    ATTRIBUTE X_INTERFACE_INFO of s_out_b_we: SIGNAL is "xilinx.com:interface:bram:1.0 FRAMEBUFFER_BRAM_OUT_PORT_B WE";
    ATTRIBUTE X_INTERFACE_INFO of s_out_b_addr: SIGNAL is "xilinx.com:interface:bram:1.0 FRAMEBUFFER_BRAM_OUT_PORT_B ADDR";
    ATTRIBUTE X_INTERFACE_INFO of s_out_b_clk: SIGNAL is "xilinx.com:interface:bram:1.0 FRAMEBUFFER_BRAM_OUT_PORT_B CLK";
    ATTRIBUTE X_INTERFACE_INFO of s_out_b_rst: SIGNAL is "xilinx.com:interface:bram:1.0 FRAMEBUFFER_BRAM_OUT_PORT_B RST";

    ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
    ATTRIBUTE X_INTERFACE_PARAMETER of s_out_a_addr : SIGNAL is "MASTER_TYPE BRAM_CTRL";
    ATTRIBUTE X_INTERFACE_PARAMETER of s_out_b_addr : SIGNAL is "MASTER_TYPE BRAM_CTRL";

  -- Uncomment the following to set interface specific parameter on the bus interface.
    --ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
    --ATTRIBUTE X_INTERFACE_PARAMETER of <port_name>: SIGNAL is "MASTER_TYPE <value>,MEM_ECC <value>,MEM_WIDTH <value>,MEM_SIZE <value>,READ_WRITE_MODE <value>";

    signal converted_addr : std_logic_vector(31 downto 0);
begin
    s_out_a_en   <= s_in_en;
    s_out_a_din  <= s_in_din;
    s_out_a_we   <= s_in_we;
    s_out_a_addr <= s_in_addr;
    s_out_a_clk  <= s_in_clk;
    s_out_a_rst  <= s_in_rst;
    
    s_out_b_en   <= s_in_en;
    s_out_b_din  <= s_in_din;
    s_out_b_we   <= s_in_we;
    converted_addr <= std_logic_vector(
        unsigned(s_in_addr) - 16#70000000#
    );
    s_out_b_addr <= converted_addr(18 downto 0);
    s_out_b_clk  <= s_in_clk;
    s_out_b_rst  <= s_in_rst;
    
    s_in_dout <= s_out_a_dout or s_out_b_dout;
end RTL;
