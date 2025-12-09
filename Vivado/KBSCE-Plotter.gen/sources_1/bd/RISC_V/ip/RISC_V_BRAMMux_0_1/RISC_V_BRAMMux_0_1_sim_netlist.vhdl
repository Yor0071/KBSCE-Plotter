-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Tue Dec  9 12:37:56 2025
-- Host        : mrt-fed-lap running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/maartenvk/src/KBSCE-Plotter/Vivado/KBSCE-Plotter.gen/sources_1/bd/RISC_V/ip/RISC_V_BRAMMux_0_1/RISC_V_BRAMMux_0_1_sim_netlist.vhdl
-- Design      : RISC_V_BRAMMux_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RISC_V_BRAMMux_0_1_BRAMMux is
  port (
    s_out_fb_din : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_out_fb_addr : out STD_LOGIC_VECTOR ( 18 downto 0 );
    s_in_microblaze_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_in_camera_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_in_microblaze_en : in STD_LOGIC;
    s_in_microblaze_addr : in STD_LOGIC_VECTOR ( 18 downto 0 );
    s_in_camera_addr : in STD_LOGIC_VECTOR ( 18 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RISC_V_BRAMMux_0_1_BRAMMux : entity is "BRAMMux";
end RISC_V_BRAMMux_0_1_BRAMMux;

architecture STRUCTURE of RISC_V_BRAMMux_0_1_BRAMMux is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_out_fb_addr[0]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_out_fb_addr[10]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_out_fb_addr[11]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_out_fb_addr[12]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s_out_fb_addr[13]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s_out_fb_addr[14]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s_out_fb_addr[15]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s_out_fb_addr[16]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s_out_fb_addr[17]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s_out_fb_addr[1]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_out_fb_addr[2]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s_out_fb_addr[3]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s_out_fb_addr[4]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s_out_fb_addr[5]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s_out_fb_addr[6]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s_out_fb_addr[7]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s_out_fb_addr[8]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s_out_fb_addr[9]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s_out_fb_din[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_out_fb_din[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_out_fb_din[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_out_fb_din[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_out_fb_din[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_out_fb_din[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_out_fb_din[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_out_fb_din[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_out_fb_din[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_out_fb_din[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_out_fb_din[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_out_fb_din[9]_INST_0\ : label is "soft_lutpair4";
begin
\s_out_fb_addr[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_addr(0),
      I1 => s_in_camera_addr(0),
      I2 => s_in_microblaze_en,
      O => s_out_fb_addr(0)
    );
\s_out_fb_addr[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_addr(10),
      I1 => s_in_camera_addr(10),
      I2 => s_in_microblaze_en,
      O => s_out_fb_addr(10)
    );
\s_out_fb_addr[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_addr(11),
      I1 => s_in_camera_addr(11),
      I2 => s_in_microblaze_en,
      O => s_out_fb_addr(11)
    );
\s_out_fb_addr[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_addr(12),
      I1 => s_in_camera_addr(12),
      I2 => s_in_microblaze_en,
      O => s_out_fb_addr(12)
    );
\s_out_fb_addr[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_addr(13),
      I1 => s_in_camera_addr(13),
      I2 => s_in_microblaze_en,
      O => s_out_fb_addr(13)
    );
\s_out_fb_addr[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_addr(14),
      I1 => s_in_camera_addr(14),
      I2 => s_in_microblaze_en,
      O => s_out_fb_addr(14)
    );
\s_out_fb_addr[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_addr(15),
      I1 => s_in_camera_addr(15),
      I2 => s_in_microblaze_en,
      O => s_out_fb_addr(15)
    );
\s_out_fb_addr[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_addr(16),
      I1 => s_in_camera_addr(16),
      I2 => s_in_microblaze_en,
      O => s_out_fb_addr(16)
    );
\s_out_fb_addr[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_addr(17),
      I1 => s_in_camera_addr(17),
      I2 => s_in_microblaze_en,
      O => s_out_fb_addr(17)
    );
\s_out_fb_addr[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_addr(18),
      I1 => s_in_camera_addr(18),
      I2 => s_in_microblaze_en,
      O => s_out_fb_addr(18)
    );
\s_out_fb_addr[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_addr(1),
      I1 => s_in_camera_addr(1),
      I2 => s_in_microblaze_en,
      O => s_out_fb_addr(1)
    );
\s_out_fb_addr[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_addr(2),
      I1 => s_in_camera_addr(2),
      I2 => s_in_microblaze_en,
      O => s_out_fb_addr(2)
    );
\s_out_fb_addr[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_addr(3),
      I1 => s_in_camera_addr(3),
      I2 => s_in_microblaze_en,
      O => s_out_fb_addr(3)
    );
\s_out_fb_addr[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_addr(4),
      I1 => s_in_camera_addr(4),
      I2 => s_in_microblaze_en,
      O => s_out_fb_addr(4)
    );
\s_out_fb_addr[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_addr(5),
      I1 => s_in_camera_addr(5),
      I2 => s_in_microblaze_en,
      O => s_out_fb_addr(5)
    );
\s_out_fb_addr[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_addr(6),
      I1 => s_in_camera_addr(6),
      I2 => s_in_microblaze_en,
      O => s_out_fb_addr(6)
    );
\s_out_fb_addr[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_addr(7),
      I1 => s_in_camera_addr(7),
      I2 => s_in_microblaze_en,
      O => s_out_fb_addr(7)
    );
\s_out_fb_addr[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_addr(8),
      I1 => s_in_camera_addr(8),
      I2 => s_in_microblaze_en,
      O => s_out_fb_addr(8)
    );
\s_out_fb_addr[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_addr(9),
      I1 => s_in_camera_addr(9),
      I2 => s_in_microblaze_en,
      O => s_out_fb_addr(9)
    );
\s_out_fb_din[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_din(0),
      I1 => s_in_camera_din(0),
      I2 => s_in_microblaze_en,
      O => s_out_fb_din(0)
    );
\s_out_fb_din[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_din(10),
      I1 => s_in_camera_din(10),
      I2 => s_in_microblaze_en,
      O => s_out_fb_din(10)
    );
\s_out_fb_din[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_din(11),
      I1 => s_in_camera_din(11),
      I2 => s_in_microblaze_en,
      O => s_out_fb_din(11)
    );
\s_out_fb_din[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_din(1),
      I1 => s_in_camera_din(1),
      I2 => s_in_microblaze_en,
      O => s_out_fb_din(1)
    );
\s_out_fb_din[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_din(2),
      I1 => s_in_camera_din(2),
      I2 => s_in_microblaze_en,
      O => s_out_fb_din(2)
    );
\s_out_fb_din[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_din(3),
      I1 => s_in_camera_din(3),
      I2 => s_in_microblaze_en,
      O => s_out_fb_din(3)
    );
\s_out_fb_din[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_din(4),
      I1 => s_in_camera_din(4),
      I2 => s_in_microblaze_en,
      O => s_out_fb_din(4)
    );
\s_out_fb_din[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_din(5),
      I1 => s_in_camera_din(5),
      I2 => s_in_microblaze_en,
      O => s_out_fb_din(5)
    );
\s_out_fb_din[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_din(6),
      I1 => s_in_camera_din(6),
      I2 => s_in_microblaze_en,
      O => s_out_fb_din(6)
    );
\s_out_fb_din[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_din(7),
      I1 => s_in_camera_din(7),
      I2 => s_in_microblaze_en,
      O => s_out_fb_din(7)
    );
\s_out_fb_din[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_din(8),
      I1 => s_in_camera_din(8),
      I2 => s_in_microblaze_en,
      O => s_out_fb_din(8)
    );
\s_out_fb_din[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_in_microblaze_din(9),
      I1 => s_in_camera_din(9),
      I2 => s_in_microblaze_en,
      O => s_out_fb_din(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RISC_V_BRAMMux_0_1 is
  port (
    s_in_microblaze_en : in STD_LOGIC;
    s_in_microblaze_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_in_microblaze_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_in_microblaze_we : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_in_microblaze_addr : in STD_LOGIC_VECTOR ( 18 downto 0 );
    s_in_microblaze_clk : in STD_LOGIC;
    s_in_microblaze_rst : in STD_LOGIC;
    s_in_camera_en : in STD_LOGIC;
    s_in_camera_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_in_camera_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_in_camera_we : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_in_camera_addr : in STD_LOGIC_VECTOR ( 18 downto 0 );
    s_in_camera_clk : in STD_LOGIC;
    s_in_camera_rst : in STD_LOGIC;
    s_out_fb_en : out STD_LOGIC;
    s_out_fb_dout : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_out_fb_din : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_out_fb_we : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_out_fb_addr : out STD_LOGIC_VECTOR ( 18 downto 0 );
    s_out_fb_clk : out STD_LOGIC;
    s_out_fb_rst : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of RISC_V_BRAMMux_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RISC_V_BRAMMux_0_1 : entity is "RISC_V_BRAMMux_0_1,BRAMMux,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of RISC_V_BRAMMux_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of RISC_V_BRAMMux_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of RISC_V_BRAMMux_0_1 : entity is "BRAMMux,Vivado 2025.1";
end RISC_V_BRAMMux_0_1;

architecture STRUCTURE of RISC_V_BRAMMux_0_1 is
  signal \^s_out_fb_dout\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of s_in_camera_clk : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA CLK";
  attribute x_interface_info of s_in_camera_en : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA EN";
  attribute x_interface_mode : string;
  attribute x_interface_mode of s_in_camera_en : signal is "slave BRAM_IN_PORT_CAMERA";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s_in_camera_en : signal is "XIL_INTERFACENAME BRAM_IN_PORT_CAMERA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 2";
  attribute x_interface_info of s_in_camera_rst : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA RST";
  attribute x_interface_info of s_in_microblaze_clk : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE CLK";
  attribute x_interface_info of s_in_microblaze_en : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE EN";
  attribute x_interface_mode of s_in_microblaze_en : signal is "slave BRAM_IN_PORT_MICROBLAZE";
  attribute x_interface_parameter of s_in_microblaze_en : signal is "XIL_INTERFACENAME BRAM_IN_PORT_MICROBLAZE, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  attribute x_interface_info of s_in_microblaze_rst : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE RST";
  attribute x_interface_info of s_out_fb_clk : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB CLK";
  attribute x_interface_info of s_out_fb_en : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB EN";
  attribute x_interface_mode of s_out_fb_en : signal is "master BRAM_OUT_PORT_FB";
  attribute x_interface_parameter of s_out_fb_en : signal is "XIL_INTERFACENAME BRAM_OUT_PORT_FB, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1";
  attribute x_interface_info of s_out_fb_rst : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB RST";
  attribute x_interface_info of s_in_camera_addr : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA ADDR";
  attribute x_interface_info of s_in_camera_din : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA DIN";
  attribute x_interface_info of s_in_camera_dout : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA DOUT";
  attribute x_interface_info of s_in_camera_we : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_CAMERA WE";
  attribute x_interface_info of s_in_microblaze_addr : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE ADDR";
  attribute x_interface_info of s_in_microblaze_din : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE DIN";
  attribute x_interface_info of s_in_microblaze_dout : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE DOUT";
  attribute x_interface_info of s_in_microblaze_we : signal is "xilinx.com:interface:bram:1.0 BRAM_IN_PORT_MICROBLAZE WE";
  attribute x_interface_info of s_out_fb_addr : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB ADDR";
  attribute x_interface_info of s_out_fb_din : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB DIN";
  attribute x_interface_info of s_out_fb_dout : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB DOUT";
  attribute x_interface_info of s_out_fb_we : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT_PORT_FB WE";
begin
  \^s_out_fb_dout\(11 downto 0) <= s_out_fb_dout(11 downto 0);
  s_in_camera_dout(11 downto 0) <= \^s_out_fb_dout\(11 downto 0);
  s_in_microblaze_dout(11 downto 0) <= \^s_out_fb_dout\(11 downto 0);
U0: entity work.RISC_V_BRAMMux_0_1_BRAMMux
     port map (
      s_in_camera_addr(18 downto 0) => s_in_camera_addr(18 downto 0),
      s_in_camera_din(11 downto 0) => s_in_camera_din(11 downto 0),
      s_in_microblaze_addr(18 downto 0) => s_in_microblaze_addr(18 downto 0),
      s_in_microblaze_din(11 downto 0) => s_in_microblaze_din(11 downto 0),
      s_in_microblaze_en => s_in_microblaze_en,
      s_out_fb_addr(18 downto 0) => s_out_fb_addr(18 downto 0),
      s_out_fb_din(11 downto 0) => s_out_fb_din(11 downto 0)
    );
s_out_fb_clk_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_in_microblaze_clk,
      I1 => s_in_microblaze_en,
      I2 => s_in_camera_clk,
      O => s_out_fb_clk
    );
s_out_fb_en_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_in_microblaze_en,
      I1 => s_in_camera_en,
      O => s_out_fb_en
    );
s_out_fb_rst_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_in_microblaze_rst,
      I1 => s_in_microblaze_en,
      I2 => s_in_camera_rst,
      O => s_out_fb_rst
    );
\s_out_fb_we[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_in_microblaze_we(0),
      I1 => s_in_microblaze_en,
      I2 => s_in_camera_we(0),
      O => s_out_fb_we(0)
    );
end STRUCTURE;
