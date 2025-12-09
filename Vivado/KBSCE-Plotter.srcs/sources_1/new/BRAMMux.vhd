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
--use IEEE.NUMERIC_STD.ALL;

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

entity BRAMMux is
    port(
        s_in_microblaze_en : in std_logic; -- Chip Enable Signal (optional)
        s_in_microblaze_dout : out std_logic_vector(11 downto 0); -- Data Out Bus (optional)
        s_in_microblaze_din : in std_logic_vector(11 downto 0); -- Data In Bus (optional)
        s_in_microblaze_we : in std_logic_vector(0 downto 0); -- Byte Enables (optional)
        s_in_microblaze_addr : in std_logic_vector(18 downto 0); -- Address Signal (required)
        s_in_microblaze_clk : in std_logic; -- Clock Signal (required)
        s_in_microblaze_rst : in std_logic; -- Reset Signal (required)
        
        s_in_camera_en : in std_logic; -- Chip Enable Signal (optional)
        s_in_camera_dout : out std_logic_vector(11 downto 0); -- Data Out Bus (optional)
        s_in_camera_din : in std_logic_vector(11 downto 0); -- Data In Bus (optional)
        s_in_camera_we : in std_logic_vector(0 downto 0); -- Byte Enables (optional)
        s_in_camera_addr : in std_logic_vector(18 downto 0); -- Address Signal (required)
        s_in_camera_clk : in std_logic; -- Clock Signal (required)
        s_in_camera_rst : in std_logic; -- Reset Signal (required)
        
        s_out_fb_en : out std_logic; -- Chip Enable Signal (optional)
        s_out_fb_dout : in std_logic_vector(11 downto 0); -- Data Out Bus (optional)
        s_out_fb_din : out std_logic_vector(11 downto 0); -- Data In Bus (optional)
        s_out_fb_we : out std_logic_vector(0 downto 0); -- Byte Enables (optional)
        s_out_fb_addr : out std_logic_vector(18 downto 0); -- Address Signal (required)
        s_out_fb_clk : out std_logic; -- Clock Signal (required)
        s_out_fb_rst : out std_logic -- Reset Signal (required)
    );
end BRAMMux;

architecture RTL of BRAMMux is
    ATTRIBUTE X_INTERFACE_INFO : STRING;
    ATTRIBUTE X_INTERFACE_INFO of s_in_microblaze_en: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE EN";
    ATTRIBUTE X_INTERFACE_INFO of s_in_microblaze_dout: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE DOUT";
    ATTRIBUTE X_INTERFACE_INFO of s_in_microblaze_din: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE DIN";
    ATTRIBUTE X_INTERFACE_INFO of s_in_microblaze_we: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE WE";
    ATTRIBUTE X_INTERFACE_INFO of s_in_microblaze_addr: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE ADDR";
    ATTRIBUTE X_INTERFACE_INFO of s_in_microblaze_clk: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE CLK";
    ATTRIBUTE X_INTERFACE_INFO of s_in_microblaze_rst: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE RST";
    
    ATTRIBUTE X_INTERFACE_INFO of s_in_camera_en: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA EN";
    ATTRIBUTE X_INTERFACE_INFO of s_in_camera_dout: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA DOUT";
    ATTRIBUTE X_INTERFACE_INFO of s_in_camera_din: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA DIN";
    ATTRIBUTE X_INTERFACE_INFO of s_in_camera_we: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA WE";
    ATTRIBUTE X_INTERFACE_INFO of s_in_camera_addr: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA ADDR";
    ATTRIBUTE X_INTERFACE_INFO of s_in_camera_clk: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA CLK";
    ATTRIBUTE X_INTERFACE_INFO of s_in_camera_rst: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA RST";
    
    ATTRIBUTE X_INTERFACE_INFO of s_out_fb_en: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB EN";
    ATTRIBUTE X_INTERFACE_INFO of s_out_fb_dout: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB DOUT";
    ATTRIBUTE X_INTERFACE_INFO of s_out_fb_din: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB DIN";
    ATTRIBUTE X_INTERFACE_INFO of s_out_fb_we: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB WE";
    ATTRIBUTE X_INTERFACE_INFO of s_out_fb_addr: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB ADDR";
    ATTRIBUTE X_INTERFACE_INFO of s_out_fb_clk: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB CLK";
    ATTRIBUTE X_INTERFACE_INFO of s_out_fb_rst: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB RST";
    
  -- Uncomment the following to set interface specific parameter on the bus interface.
    --ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
    --ATTRIBUTE X_INTERFACE_PARAMETER of <port_name>: SIGNAL is "MASTER_TYPE <value>,MEM_ECC <value>,MEM_WIDTH <value>,MEM_SIZE <value>,READ_WRITE_MODE <value>";

begin
    

end RTL;
				
