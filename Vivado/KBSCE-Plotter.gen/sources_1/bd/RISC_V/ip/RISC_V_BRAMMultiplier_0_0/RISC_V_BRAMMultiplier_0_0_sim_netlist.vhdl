-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Wed Dec 10 12:26:51 2025
-- Host        : mrt-fed-lap running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/maartenvk/src/KBSCE-Plotter/Vivado/KBSCE-Plotter.gen/sources_1/bd/RISC_V/ip/RISC_V_BRAMMultiplier_0_0/RISC_V_BRAMMultiplier_0_0_sim_netlist.vhdl
-- Design      : RISC_V_BRAMMultiplier_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RISC_V_BRAMMultiplier_0_0_BRAMMultiplier is
  port (
    s_in_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_out_a_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_out_b_dout : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RISC_V_BRAMMultiplier_0_0_BRAMMultiplier : entity is "BRAMMultiplier";
end RISC_V_BRAMMultiplier_0_0_BRAMMultiplier;

architecture STRUCTURE of RISC_V_BRAMMultiplier_0_0_BRAMMultiplier is
begin
\s_in_dout[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(0),
      I1 => s_out_b_dout(0),
      O => s_in_dout(0)
    );
\s_in_dout[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(10),
      I1 => s_out_b_dout(10),
      O => s_in_dout(10)
    );
\s_in_dout[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(11),
      I1 => s_out_b_dout(11),
      O => s_in_dout(11)
    );
\s_in_dout[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(12),
      I1 => s_out_b_dout(12),
      O => s_in_dout(12)
    );
\s_in_dout[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(13),
      I1 => s_out_b_dout(13),
      O => s_in_dout(13)
    );
\s_in_dout[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(14),
      I1 => s_out_b_dout(14),
      O => s_in_dout(14)
    );
\s_in_dout[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(15),
      I1 => s_out_b_dout(15),
      O => s_in_dout(15)
    );
\s_in_dout[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(16),
      I1 => s_out_b_dout(16),
      O => s_in_dout(16)
    );
\s_in_dout[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(17),
      I1 => s_out_b_dout(17),
      O => s_in_dout(17)
    );
\s_in_dout[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(18),
      I1 => s_out_b_dout(18),
      O => s_in_dout(18)
    );
\s_in_dout[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(19),
      I1 => s_out_b_dout(19),
      O => s_in_dout(19)
    );
\s_in_dout[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(1),
      I1 => s_out_b_dout(1),
      O => s_in_dout(1)
    );
\s_in_dout[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(20),
      I1 => s_out_b_dout(20),
      O => s_in_dout(20)
    );
\s_in_dout[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(21),
      I1 => s_out_b_dout(21),
      O => s_in_dout(21)
    );
\s_in_dout[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(22),
      I1 => s_out_b_dout(22),
      O => s_in_dout(22)
    );
\s_in_dout[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(23),
      I1 => s_out_b_dout(23),
      O => s_in_dout(23)
    );
\s_in_dout[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(24),
      I1 => s_out_b_dout(24),
      O => s_in_dout(24)
    );
\s_in_dout[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(25),
      I1 => s_out_b_dout(25),
      O => s_in_dout(25)
    );
\s_in_dout[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(26),
      I1 => s_out_b_dout(26),
      O => s_in_dout(26)
    );
\s_in_dout[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(27),
      I1 => s_out_b_dout(27),
      O => s_in_dout(27)
    );
\s_in_dout[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(28),
      I1 => s_out_b_dout(28),
      O => s_in_dout(28)
    );
\s_in_dout[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(29),
      I1 => s_out_b_dout(29),
      O => s_in_dout(29)
    );
\s_in_dout[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(2),
      I1 => s_out_b_dout(2),
      O => s_in_dout(2)
    );
\s_in_dout[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(30),
      I1 => s_out_b_dout(30),
      O => s_in_dout(30)
    );
\s_in_dout[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(31),
      I1 => s_out_b_dout(31),
      O => s_in_dout(31)
    );
\s_in_dout[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(3),
      I1 => s_out_b_dout(3),
      O => s_in_dout(3)
    );
\s_in_dout[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(4),
      I1 => s_out_b_dout(4),
      O => s_in_dout(4)
    );
\s_in_dout[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(5),
      I1 => s_out_b_dout(5),
      O => s_in_dout(5)
    );
\s_in_dout[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(6),
      I1 => s_out_b_dout(6),
      O => s_in_dout(6)
    );
\s_in_dout[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(7),
      I1 => s_out_b_dout(7),
      O => s_in_dout(7)
    );
\s_in_dout[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(8),
      I1 => s_out_b_dout(8),
      O => s_in_dout(8)
    );
\s_in_dout[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_out_a_dout(9),
      I1 => s_out_b_dout(9),
      O => s_in_dout(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RISC_V_BRAMMultiplier_0_0 is
  port (
    s_in_en : in STD_LOGIC;
    s_in_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_in_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_in_we : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_in_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_in_clk : in STD_LOGIC;
    s_in_rst : in STD_LOGIC;
    s_out_a_en : out STD_LOGIC;
    s_out_a_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_out_a_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_out_a_we : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_out_a_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_out_a_clk : out STD_LOGIC;
    s_out_a_rst : out STD_LOGIC;
    s_out_b_en : out STD_LOGIC;
    s_out_b_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_out_b_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_out_b_we : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_out_b_addr : out STD_LOGIC_VECTOR ( 18 downto 0 );
    s_out_b_clk : out STD_LOGIC;
    s_out_b_rst : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of RISC_V_BRAMMultiplier_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RISC_V_BRAMMultiplier_0_0 : entity is "RISC_V_BRAMMultiplier_0_0,BRAMMultiplier,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of RISC_V_BRAMMultiplier_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of RISC_V_BRAMMultiplier_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of RISC_V_BRAMMultiplier_0_0 : entity is "BRAMMultiplier,Vivado 2025.1";
end RISC_V_BRAMMultiplier_0_0;

architecture STRUCTURE of RISC_V_BRAMMultiplier_0_0 is
  signal \^s_in_addr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_in_clk\ : STD_LOGIC;
  signal \^s_in_din\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_in_en\ : STD_LOGIC;
  signal \^s_in_rst\ : STD_LOGIC;
  signal \^s_in_we\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of s_in_clk : signal is "xilinx.com:interface:bram:1.0 DLMB_BRAM_CONTROLLER_PORT_IN CLK";
  attribute x_interface_info of s_in_en : signal is "xilinx.com:interface:bram:1.0 DLMB_BRAM_CONTROLLER_PORT_IN EN";
  attribute x_interface_mode : string;
  attribute x_interface_mode of s_in_en : signal is "slave DLMB_BRAM_CONTROLLER_PORT_IN";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s_in_en : signal is "XIL_INTERFACENAME DLMB_BRAM_CONTROLLER_PORT_IN, MEM_SIZE 65536, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  attribute x_interface_info of s_in_rst : signal is "xilinx.com:interface:bram:1.0 DLMB_BRAM_CONTROLLER_PORT_IN RST";
  attribute x_interface_info of s_out_a_clk : signal is "xilinx.com:interface:bram:1.0 LMB_BRAM_OUT_PORT_A CLK";
  attribute x_interface_info of s_out_a_en : signal is "xilinx.com:interface:bram:1.0 LMB_BRAM_OUT_PORT_A EN";
  attribute x_interface_mode of s_out_a_en : signal is "master LMB_BRAM_OUT_PORT_A";
  attribute x_interface_parameter of s_out_a_en : signal is "XIL_INTERFACENAME LMB_BRAM_OUT_PORT_A, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1";
  attribute x_interface_info of s_out_a_rst : signal is "xilinx.com:interface:bram:1.0 LMB_BRAM_OUT_PORT_A RST";
  attribute x_interface_info of s_out_b_clk : signal is "xilinx.com:interface:bram:1.0 FRAMEBUFFER_BRAM_OUT_PORT_B CLK";
  attribute x_interface_info of s_out_b_en : signal is "xilinx.com:interface:bram:1.0 FRAMEBUFFER_BRAM_OUT_PORT_B EN";
  attribute x_interface_mode of s_out_b_en : signal is "master FRAMEBUFFER_BRAM_OUT_PORT_B";
  attribute x_interface_parameter of s_out_b_en : signal is "XIL_INTERFACENAME FRAMEBUFFER_BRAM_OUT_PORT_B, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1";
  attribute x_interface_info of s_out_b_rst : signal is "xilinx.com:interface:bram:1.0 FRAMEBUFFER_BRAM_OUT_PORT_B RST";
  attribute x_interface_info of s_in_addr : signal is "xilinx.com:interface:bram:1.0 DLMB_BRAM_CONTROLLER_PORT_IN ADDR";
  attribute x_interface_info of s_in_din : signal is "xilinx.com:interface:bram:1.0 DLMB_BRAM_CONTROLLER_PORT_IN DIN";
  attribute x_interface_info of s_in_dout : signal is "xilinx.com:interface:bram:1.0 DLMB_BRAM_CONTROLLER_PORT_IN DOUT";
  attribute x_interface_info of s_in_we : signal is "xilinx.com:interface:bram:1.0 DLMB_BRAM_CONTROLLER_PORT_IN WE";
  attribute x_interface_info of s_out_a_addr : signal is "xilinx.com:interface:bram:1.0 LMB_BRAM_OUT_PORT_A ADDR";
  attribute x_interface_info of s_out_a_din : signal is "xilinx.com:interface:bram:1.0 LMB_BRAM_OUT_PORT_A DIN";
  attribute x_interface_info of s_out_a_dout : signal is "xilinx.com:interface:bram:1.0 LMB_BRAM_OUT_PORT_A DOUT";
  attribute x_interface_info of s_out_a_we : signal is "xilinx.com:interface:bram:1.0 LMB_BRAM_OUT_PORT_A WE";
  attribute x_interface_info of s_out_b_addr : signal is "xilinx.com:interface:bram:1.0 FRAMEBUFFER_BRAM_OUT_PORT_B ADDR";
  attribute x_interface_info of s_out_b_din : signal is "xilinx.com:interface:bram:1.0 FRAMEBUFFER_BRAM_OUT_PORT_B DIN";
  attribute x_interface_info of s_out_b_dout : signal is "xilinx.com:interface:bram:1.0 FRAMEBUFFER_BRAM_OUT_PORT_B DOUT";
  attribute x_interface_info of s_out_b_we : signal is "xilinx.com:interface:bram:1.0 FRAMEBUFFER_BRAM_OUT_PORT_B WE";
begin
  \^s_in_addr\(31 downto 0) <= s_in_addr(31 downto 0);
  \^s_in_clk\ <= s_in_clk;
  \^s_in_din\(31 downto 0) <= s_in_din(31 downto 0);
  \^s_in_en\ <= s_in_en;
  \^s_in_rst\ <= s_in_rst;
  \^s_in_we\(0) <= s_in_we(0);
  s_out_a_addr(31 downto 0) <= \^s_in_addr\(31 downto 0);
  s_out_a_clk <= \^s_in_clk\;
  s_out_a_din(31 downto 0) <= \^s_in_din\(31 downto 0);
  s_out_a_en <= \^s_in_en\;
  s_out_a_rst <= \^s_in_rst\;
  s_out_a_we(0) <= \^s_in_we\(0);
  s_out_b_addr(18 downto 0) <= \^s_in_addr\(18 downto 0);
  s_out_b_clk <= \^s_in_clk\;
  s_out_b_din(31 downto 0) <= \^s_in_din\(31 downto 0);
  s_out_b_en <= \^s_in_en\;
  s_out_b_rst <= \^s_in_rst\;
  s_out_b_we(0) <= \^s_in_we\(0);
U0: entity work.RISC_V_BRAMMultiplier_0_0_BRAMMultiplier
     port map (
      s_in_dout(31 downto 0) => s_in_dout(31 downto 0),
      s_out_a_dout(31 downto 0) => s_out_a_dout(31 downto 0),
      s_out_b_dout(31 downto 0) => s_out_b_dout(31 downto 0)
    );
end STRUCTURE;
