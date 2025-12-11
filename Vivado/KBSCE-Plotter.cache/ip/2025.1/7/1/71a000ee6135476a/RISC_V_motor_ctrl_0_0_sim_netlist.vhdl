-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Thu Dec 11 10:26:39 2025
-- Host        : ThinkpadP1_Liam running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ RISC_V_motor_ctrl_0_0_sim_netlist.vhdl
-- Design      : RISC_V_motor_ctrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MotorControl is
  port (
    cnt_reg : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MotorControl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MotorControl is
  signal \cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \^cnt_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \cnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal in10_carry_n_1 : STD_LOGIC;
  signal in10_carry_n_2 : STD_LOGIC;
  signal in10_carry_n_3 : STD_LOGIC;
  signal \NLW_cnt_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_in10_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cnt_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[8]_i_1\ : label is 11;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of in10_carry : label is 11;
begin
  cnt_reg(7 downto 0) <= \^cnt_reg\(7 downto 0);
\cnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      O => \cnt[0]_i_2_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \cnt_reg[0]_i_1_n_7\,
      Q => \cnt_reg_n_0_[0]\,
      R => SR(0)
    );
\cnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_reg[0]_i_1_n_0\,
      CO(2) => \cnt_reg[0]_i_1_n_1\,
      CO(1) => \cnt_reg[0]_i_1_n_2\,
      CO(0) => \cnt_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cnt_reg[0]_i_1_n_4\,
      O(2) => \cnt_reg[0]_i_1_n_5\,
      O(1) => \cnt_reg[0]_i_1_n_6\,
      O(0) => \cnt_reg[0]_i_1_n_7\,
      S(3) => \cnt_reg_n_0_[3]\,
      S(2) => \cnt_reg_n_0_[2]\,
      S(1) => \cnt_reg_n_0_[1]\,
      S(0) => \cnt[0]_i_2_n_0\
    );
\cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_5\,
      Q => \^cnt_reg\(6),
      R => SR(0)
    );
\cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_4\,
      Q => \^cnt_reg\(7),
      R => SR(0)
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \cnt_reg[0]_i_1_n_6\,
      Q => \cnt_reg_n_0_[1]\,
      R => SR(0)
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \cnt_reg[0]_i_1_n_5\,
      Q => \cnt_reg_n_0_[2]\,
      R => SR(0)
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \cnt_reg[0]_i_1_n_4\,
      Q => \cnt_reg_n_0_[3]\,
      R => SR(0)
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_7\,
      Q => \^cnt_reg\(0),
      R => SR(0)
    );
\cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[0]_i_1_n_0\,
      CO(3) => \cnt_reg[4]_i_1_n_0\,
      CO(2) => \cnt_reg[4]_i_1_n_1\,
      CO(1) => \cnt_reg[4]_i_1_n_2\,
      CO(0) => \cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[4]_i_1_n_4\,
      O(2) => \cnt_reg[4]_i_1_n_5\,
      O(1) => \cnt_reg[4]_i_1_n_6\,
      O(0) => \cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => \^cnt_reg\(3 downto 0)
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_6\,
      Q => \^cnt_reg\(1),
      R => SR(0)
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_5\,
      Q => \^cnt_reg\(2),
      R => SR(0)
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_4\,
      Q => \^cnt_reg\(3),
      R => SR(0)
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_7\,
      Q => \^cnt_reg\(4),
      R => SR(0)
    );
\cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[4]_i_1_n_0\,
      CO(3) => \NLW_cnt_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cnt_reg[8]_i_1_n_1\,
      CO(1) => \cnt_reg[8]_i_1_n_2\,
      CO(0) => \cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[8]_i_1_n_4\,
      O(2) => \cnt_reg[8]_i_1_n_5\,
      O(1) => \cnt_reg[8]_i_1_n_6\,
      O(0) => \cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => \^cnt_reg\(7 downto 4)
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_6\,
      Q => \^cnt_reg\(5),
      R => SR(0)
    );
in10_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => CO(0),
      CO(2) => in10_carry_n_1,
      CO(1) => in10_carry_n_2,
      CO(0) => in10_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_in10_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MotorControl_0 is
  port (
    \slv_reg1_reg[6]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m2_in1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m2_in1_0 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MotorControl_0 : entity is "MotorControl";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MotorControl_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MotorControl_0 is
  signal in10_carry_n_1 : STD_LOGIC;
  signal in10_carry_n_2 : STD_LOGIC;
  signal in10_carry_n_3 : STD_LOGIC;
  signal NLW_in10_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of in10_carry : label is 11;
begin
in10_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \slv_reg1_reg[6]\(0),
      CO(2) => in10_carry_n_1,
      CO(1) => in10_carry_n_2,
      CO(0) => in10_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => m2_in1(3 downto 0),
      O(3 downto 0) => NLW_in10_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => m2_in1_0(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MotorControl_1 is
  port (
    \slv_reg2_reg[6]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m3_in1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m3_in1_0 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MotorControl_1 : entity is "MotorControl";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MotorControl_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MotorControl_1 is
  signal in10_carry_n_1 : STD_LOGIC;
  signal in10_carry_n_2 : STD_LOGIC;
  signal in10_carry_n_3 : STD_LOGIC;
  signal NLW_in10_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of in10_carry : label is 11;
begin
in10_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \slv_reg2_reg[6]\(0),
      CO(2) => in10_carry_n_1,
      CO(1) => in10_carry_n_2,
      CO(0) => in10_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => m3_in1(3 downto 0),
      O(3 downto 0) => NLW_in10_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => m3_in1_0(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MotorControl_2 is
  port (
    \slv_reg3_reg[6]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m4_in1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m4_in1_0 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MotorControl_2 : entity is "MotorControl";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MotorControl_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MotorControl_2 is
  signal in10_carry_n_1 : STD_LOGIC;
  signal in10_carry_n_2 : STD_LOGIC;
  signal in10_carry_n_3 : STD_LOGIC;
  signal NLW_in10_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of in10_carry : label is 11;
begin
in10_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \slv_reg3_reg[6]\(0),
      CO(2) => in10_carry_n_1,
      CO(1) => in10_carry_n_2,
      CO(0) => in10_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => m4_in1(3 downto 0),
      O(3 downto 0) => NLW_in10_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => m4_in1_0(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_motor_ctrl_slave_lite_v1_0_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    m1_in1 : out STD_LOGIC;
    m1_in2 : out STD_LOGIC;
    m2_in1 : out STD_LOGIC;
    m2_in2 : out STD_LOGIC;
    m3_in1 : out STD_LOGIC;
    m3_in2 : out STD_LOGIC;
    m4_in1 : out STD_LOGIC;
    m4_in2 : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[6]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[6]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg3_reg[6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg3_reg[6]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    m2_in1_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    m3_in1_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    m4_in1_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    cnt_reg : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    z_count_reg : in STD_LOGIC_VECTOR ( 31 downto 0 );
    y_count_reg : in STD_LOGIC_VECTOR ( 31 downto 0 );
    x2_count_reg : in STD_LOGIC_VECTOR ( 31 downto 0 );
    x1_count_reg : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rready : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_motor_ctrl_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_motor_ctrl_slave_lite_v1_0_S00_AXI is
  signal \FSM_onehot_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_write[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_write_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_write_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_sequential_state_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_2_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[4]\ : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_2_n_0 : STD_LOGIC;
  signal axi_bvalid_i_3_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal \mem_logic__2\ : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_x1_ctrl : STD_LOGIC_VECTOR ( 8 to 8 );
  signal reg_x2_ctrl : STD_LOGIC_VECTOR ( 8 to 8 );
  signal reg_y_ctrl : STD_LOGIC_VECTOR ( 8 to 8 );
  signal reg_z_ctrl : STD_LOGIC_VECTOR ( 8 to 8 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \slv_reg0_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[9]\ : STD_LOGIC;
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[9]\ : STD_LOGIC;
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[9]\ : STD_LOGIC;
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[9]\ : STD_LOGIC;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[0]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[1]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[2]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "idle:00,rdata:10,raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "idle:00,rdata:10,raddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \axi_araddr[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of m1_in1_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of m1_in2_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of m2_in1_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of m2_in2_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of m3_in1_INST_0 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of m3_in2_INST_0 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of m4_in1_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of m4_in2_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_4\ : label is "soft_lutpair0";
begin
  SR(0) <= \^sr\(0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
\FSM_onehot_state_write[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFAAFFFFBF00"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I4 => axi_wready,
      I5 => \FSM_onehot_state_write_reg_n_0_[2]\,
      O => \FSM_onehot_state_write[1]_i_1_n_0\
    );
\FSM_onehot_state_write[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0800"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I4 => \FSM_onehot_state_write_reg_n_0_[2]\,
      O => \FSM_onehot_state_write[2]_i_1_n_0\
    );
\FSM_onehot_state_write_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => '0',
      Q => axi_wready,
      S => \^sr\(0)
    );
\FSM_onehot_state_write_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state_write[1]_i_1_n_0\,
      Q => \FSM_onehot_state_write_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\FSM_onehot_state_write_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state_write[2]_i_1_n_0\,
      Q => \FSM_onehot_state_write_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\FSM_sequential_state_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0007777FFFF"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => s00_axi_rready,
      I3 => \^axi_rvalid_reg_0\,
      I4 => state_read(0),
      I5 => state_read(1),
      O => \FSM_sequential_state_read[0]_i_1_n_0\
    );
\FSM_sequential_state_read[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF88880000"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => s00_axi_rready,
      I3 => \^axi_rvalid_reg_0\,
      I4 => state_read(0),
      I5 => state_read(1),
      O => \FSM_sequential_state_read[1]_i_1_n_0\
    );
\FSM_sequential_state_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[0]_i_1_n_0\,
      Q => state_read(0),
      R => \^sr\(0)
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => state_read(1),
      R => \^sr\(0)
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => \axi_araddr[4]_i_2_n_0\,
      I2 => sel0(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => \axi_araddr[4]_i_2_n_0\,
      I2 => sel0(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_araddr(2),
      I1 => \axi_araddr[4]_i_2_n_0\,
      I2 => sel0(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \^axi_arready_reg_0\,
      I2 => s00_axi_arvalid,
      I3 => state_read(0),
      I4 => state_read(1),
      O => \axi_araddr[4]_i_2_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => sel0(0),
      R => '0'
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => sel0(1),
      R => '0'
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => sel0(2),
      R => '0'
    );
axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4C4C4C4FFCFCFCF"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => state_read(1),
      I3 => s00_axi_rready,
      I4 => \^axi_rvalid_reg_0\,
      I5 => state_read(0),
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^axi_arready_reg_0\,
      R => \^sr\(0)
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_aresetn,
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_aresetn,
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => s00_axi_aresetn,
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I5 => \axi_awaddr_reg_n_0_[4]\,
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[2]\,
      R => '0'
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => '0'
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[4]\,
      R => '0'
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
axi_awready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFEAEAFFFFEAEA"
    )
        port map (
      I0 => axi_wready,
      I1 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I2 => s00_axi_wvalid,
      I3 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I4 => \^axi_awready_reg_0\,
      I5 => s00_axi_awvalid,
      O => axi_awready_i_2_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_2_n_0,
      Q => \^axi_awready_reg_0\,
      R => \^sr\(0)
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8ABA8BB88BB88"
    )
        port map (
      I0 => axi_bvalid_i_2_n_0,
      I1 => axi_bvalid_i_3_n_0,
      I2 => s00_axi_wvalid,
      I3 => \^s00_axi_bvalid\,
      I4 => s00_axi_bready,
      I5 => \FSM_onehot_state_write_reg_n_0_[2]\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAEAEAEAEAEAEAEA"
    )
        port map (
      I0 => axi_wready,
      I1 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I2 => s00_axi_wvalid,
      I3 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I4 => s00_axi_awvalid,
      I5 => \^axi_awready_reg_0\,
      O => axi_bvalid_i_2_n_0
    );
axi_bvalid_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80808080808080"
    )
        port map (
      I0 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I1 => \^s00_axi_bvalid\,
      I2 => s00_axi_bready,
      I3 => \^axi_awready_reg_0\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_wvalid,
      O => axi_bvalid_i_3_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => \^sr\(0)
    );
axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFF00800080"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => state_read(0),
      I3 => state_read(1),
      I4 => s00_axi_rready,
      I5 => \^axi_rvalid_reg_0\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => \^sr\(0)
    );
axi_wready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => axi_wready,
      I1 => \^s00_axi_wready\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s00_axi_wready\,
      R => \^sr\(0)
    );
in10_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F000200"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[6]\,
      I1 => cnt_reg(6),
      I2 => cnt_reg(7),
      I3 => \slv_reg0_reg_n_0_[9]\,
      I4 => \slv_reg0_reg_n_0_[7]\,
      O => DI(3)
    );
\in10_carry_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F000200"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[6]\,
      I1 => cnt_reg(6),
      I2 => cnt_reg(7),
      I3 => \slv_reg1_reg_n_0_[9]\,
      I4 => \slv_reg1_reg_n_0_[7]\,
      O => \slv_reg1_reg[6]_1\(3)
    );
\in10_carry_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F000200"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[6]\,
      I1 => cnt_reg(6),
      I2 => cnt_reg(7),
      I3 => \slv_reg2_reg_n_0_[9]\,
      I4 => \slv_reg2_reg_n_0_[7]\,
      O => \slv_reg2_reg[6]_1\(3)
    );
\in10_carry_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F000200"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[6]\,
      I1 => cnt_reg(6),
      I2 => cnt_reg(7),
      I3 => \slv_reg3_reg_n_0_[9]\,
      I4 => \slv_reg3_reg_n_0_[7]\,
      O => \slv_reg3_reg[6]_1\(3)
    );
in10_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F000200"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[4]\,
      I1 => cnt_reg(4),
      I2 => cnt_reg(5),
      I3 => \slv_reg0_reg_n_0_[9]\,
      I4 => \slv_reg0_reg_n_0_[5]\,
      O => DI(2)
    );
\in10_carry_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F000200"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[4]\,
      I1 => cnt_reg(4),
      I2 => cnt_reg(5),
      I3 => \slv_reg1_reg_n_0_[9]\,
      I4 => \slv_reg1_reg_n_0_[5]\,
      O => \slv_reg1_reg[6]_1\(2)
    );
\in10_carry_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F000200"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[4]\,
      I1 => cnt_reg(4),
      I2 => cnt_reg(5),
      I3 => \slv_reg2_reg_n_0_[9]\,
      I4 => \slv_reg2_reg_n_0_[5]\,
      O => \slv_reg2_reg[6]_1\(2)
    );
\in10_carry_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F000200"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[4]\,
      I1 => cnt_reg(4),
      I2 => cnt_reg(5),
      I3 => \slv_reg3_reg_n_0_[9]\,
      I4 => \slv_reg3_reg_n_0_[5]\,
      O => \slv_reg3_reg[6]_1\(2)
    );
in10_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F000200"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[2]\,
      I1 => cnt_reg(2),
      I2 => cnt_reg(3),
      I3 => \slv_reg0_reg_n_0_[9]\,
      I4 => \slv_reg0_reg_n_0_[3]\,
      O => DI(1)
    );
\in10_carry_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F000200"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[2]\,
      I1 => cnt_reg(2),
      I2 => cnt_reg(3),
      I3 => \slv_reg1_reg_n_0_[9]\,
      I4 => \slv_reg1_reg_n_0_[3]\,
      O => \slv_reg1_reg[6]_1\(1)
    );
\in10_carry_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F000200"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[2]\,
      I1 => cnt_reg(2),
      I2 => cnt_reg(3),
      I3 => \slv_reg2_reg_n_0_[9]\,
      I4 => \slv_reg2_reg_n_0_[3]\,
      O => \slv_reg2_reg[6]_1\(1)
    );
\in10_carry_i_3__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F000200"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[2]\,
      I1 => cnt_reg(2),
      I2 => cnt_reg(3),
      I3 => \slv_reg3_reg_n_0_[9]\,
      I4 => \slv_reg3_reg_n_0_[3]\,
      O => \slv_reg3_reg[6]_1\(1)
    );
in10_carry_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F000200"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[0]\,
      I1 => cnt_reg(0),
      I2 => cnt_reg(1),
      I3 => \slv_reg0_reg_n_0_[9]\,
      I4 => \slv_reg0_reg_n_0_[1]\,
      O => DI(0)
    );
\in10_carry_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F000200"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[0]\,
      I1 => cnt_reg(0),
      I2 => cnt_reg(1),
      I3 => \slv_reg1_reg_n_0_[9]\,
      I4 => \slv_reg1_reg_n_0_[1]\,
      O => \slv_reg1_reg[6]_1\(0)
    );
\in10_carry_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F000200"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[0]\,
      I1 => cnt_reg(0),
      I2 => cnt_reg(1),
      I3 => \slv_reg2_reg_n_0_[9]\,
      I4 => \slv_reg2_reg_n_0_[1]\,
      O => \slv_reg2_reg[6]_1\(0)
    );
\in10_carry_i_4__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F000200"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[0]\,
      I1 => cnt_reg(0),
      I2 => cnt_reg(1),
      I3 => \slv_reg3_reg_n_0_[9]\,
      I4 => \slv_reg3_reg_n_0_[1]\,
      O => \slv_reg3_reg[6]_1\(0)
    );
in10_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000393"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[6]\,
      I1 => cnt_reg(6),
      I2 => \slv_reg0_reg_n_0_[9]\,
      I3 => \slv_reg0_reg_n_0_[7]\,
      I4 => cnt_reg(7),
      O => S(3)
    );
\in10_carry_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000393"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[6]\,
      I1 => cnt_reg(6),
      I2 => \slv_reg1_reg_n_0_[9]\,
      I3 => \slv_reg1_reg_n_0_[7]\,
      I4 => cnt_reg(7),
      O => \slv_reg1_reg[6]_0\(3)
    );
\in10_carry_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000393"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[6]\,
      I1 => cnt_reg(6),
      I2 => \slv_reg2_reg_n_0_[9]\,
      I3 => \slv_reg2_reg_n_0_[7]\,
      I4 => cnt_reg(7),
      O => \slv_reg2_reg[6]_0\(3)
    );
\in10_carry_i_5__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000393"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[6]\,
      I1 => cnt_reg(6),
      I2 => \slv_reg3_reg_n_0_[9]\,
      I3 => \slv_reg3_reg_n_0_[7]\,
      I4 => cnt_reg(7),
      O => \slv_reg3_reg[6]_0\(3)
    );
in10_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000393"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[4]\,
      I1 => cnt_reg(4),
      I2 => \slv_reg0_reg_n_0_[9]\,
      I3 => \slv_reg0_reg_n_0_[5]\,
      I4 => cnt_reg(5),
      O => S(2)
    );
\in10_carry_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000393"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[4]\,
      I1 => cnt_reg(4),
      I2 => \slv_reg1_reg_n_0_[9]\,
      I3 => \slv_reg1_reg_n_0_[5]\,
      I4 => cnt_reg(5),
      O => \slv_reg1_reg[6]_0\(2)
    );
\in10_carry_i_6__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000393"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[4]\,
      I1 => cnt_reg(4),
      I2 => \slv_reg2_reg_n_0_[9]\,
      I3 => \slv_reg2_reg_n_0_[5]\,
      I4 => cnt_reg(5),
      O => \slv_reg2_reg[6]_0\(2)
    );
\in10_carry_i_6__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000393"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[4]\,
      I1 => cnt_reg(4),
      I2 => \slv_reg3_reg_n_0_[9]\,
      I3 => \slv_reg3_reg_n_0_[5]\,
      I4 => cnt_reg(5),
      O => \slv_reg3_reg[6]_0\(2)
    );
in10_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000393"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[2]\,
      I1 => cnt_reg(2),
      I2 => \slv_reg0_reg_n_0_[9]\,
      I3 => \slv_reg0_reg_n_0_[3]\,
      I4 => cnt_reg(3),
      O => S(1)
    );
\in10_carry_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000393"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[2]\,
      I1 => cnt_reg(2),
      I2 => \slv_reg1_reg_n_0_[9]\,
      I3 => \slv_reg1_reg_n_0_[3]\,
      I4 => cnt_reg(3),
      O => \slv_reg1_reg[6]_0\(1)
    );
\in10_carry_i_7__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000393"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[2]\,
      I1 => cnt_reg(2),
      I2 => \slv_reg2_reg_n_0_[9]\,
      I3 => \slv_reg2_reg_n_0_[3]\,
      I4 => cnt_reg(3),
      O => \slv_reg2_reg[6]_0\(1)
    );
\in10_carry_i_7__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000393"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[2]\,
      I1 => cnt_reg(2),
      I2 => \slv_reg3_reg_n_0_[9]\,
      I3 => \slv_reg3_reg_n_0_[3]\,
      I4 => cnt_reg(3),
      O => \slv_reg3_reg[6]_0\(1)
    );
in10_carry_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000393"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[0]\,
      I1 => cnt_reg(0),
      I2 => \slv_reg0_reg_n_0_[9]\,
      I3 => \slv_reg0_reg_n_0_[1]\,
      I4 => cnt_reg(1),
      O => S(0)
    );
\in10_carry_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000393"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[0]\,
      I1 => cnt_reg(0),
      I2 => \slv_reg1_reg_n_0_[9]\,
      I3 => \slv_reg1_reg_n_0_[1]\,
      I4 => cnt_reg(1),
      O => \slv_reg1_reg[6]_0\(0)
    );
\in10_carry_i_8__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000393"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[0]\,
      I1 => cnt_reg(0),
      I2 => \slv_reg2_reg_n_0_[9]\,
      I3 => \slv_reg2_reg_n_0_[1]\,
      I4 => cnt_reg(1),
      O => \slv_reg2_reg[6]_0\(0)
    );
\in10_carry_i_8__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000393"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[0]\,
      I1 => cnt_reg(0),
      I2 => \slv_reg3_reg_n_0_[9]\,
      I3 => \slv_reg3_reg_n_0_[1]\,
      I4 => cnt_reg(1),
      O => \slv_reg3_reg[6]_0\(0)
    );
m1_in1_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CO(0),
      I1 => reg_x1_ctrl(8),
      O => m1_in1
    );
m1_in2_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reg_x1_ctrl(8),
      I1 => CO(0),
      O => m1_in2
    );
m2_in1_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m2_in1_0(0),
      I1 => reg_x2_ctrl(8),
      O => m2_in1
    );
m2_in2_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reg_x2_ctrl(8),
      I1 => m2_in1_0(0),
      O => m2_in2
    );
m3_in1_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m3_in1_0(0),
      I1 => reg_y_ctrl(8),
      O => m3_in1
    );
m3_in2_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reg_y_ctrl(8),
      I1 => m3_in1_0(0),
      O => m3_in2
    );
m4_in1_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m4_in1_0(0),
      I1 => reg_z_ctrl(8),
      O => m4_in1
    );
m4_in2_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reg_z_ctrl(8),
      I1 => m4_in1_0(0),
      O => m4_in2
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[0]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[0]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(0),
      S => sel0(2)
    );
\s00_axi_rdata[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[0]\,
      I1 => \slv_reg2_reg_n_0_[0]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[0]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[0]\,
      O => \s00_axi_rdata[0]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(0),
      I1 => y_count_reg(0),
      I2 => sel0(1),
      I3 => x2_count_reg(0),
      I4 => sel0(0),
      I5 => x1_count_reg(0),
      O => \s00_axi_rdata[0]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[10]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[10]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(10),
      S => sel0(2)
    );
\s00_axi_rdata[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[10]\,
      I1 => \slv_reg2_reg_n_0_[10]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[10]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[10]\,
      O => \s00_axi_rdata[10]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(10),
      I1 => y_count_reg(10),
      I2 => sel0(1),
      I3 => x2_count_reg(10),
      I4 => sel0(0),
      I5 => x1_count_reg(10),
      O => \s00_axi_rdata[10]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[11]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[11]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(11),
      S => sel0(2)
    );
\s00_axi_rdata[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[11]\,
      I1 => \slv_reg2_reg_n_0_[11]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[11]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[11]\,
      O => \s00_axi_rdata[11]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(11),
      I1 => y_count_reg(11),
      I2 => sel0(1),
      I3 => x2_count_reg(11),
      I4 => sel0(0),
      I5 => x1_count_reg(11),
      O => \s00_axi_rdata[11]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[12]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[12]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(12),
      S => sel0(2)
    );
\s00_axi_rdata[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[12]\,
      I1 => \slv_reg2_reg_n_0_[12]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[12]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[12]\,
      O => \s00_axi_rdata[12]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(12),
      I1 => y_count_reg(12),
      I2 => sel0(1),
      I3 => x2_count_reg(12),
      I4 => sel0(0),
      I5 => x1_count_reg(12),
      O => \s00_axi_rdata[12]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[13]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[13]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(13),
      S => sel0(2)
    );
\s00_axi_rdata[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[13]\,
      I1 => \slv_reg2_reg_n_0_[13]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[13]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[13]\,
      O => \s00_axi_rdata[13]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(13),
      I1 => y_count_reg(13),
      I2 => sel0(1),
      I3 => x2_count_reg(13),
      I4 => sel0(0),
      I5 => x1_count_reg(13),
      O => \s00_axi_rdata[13]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[14]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[14]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(14),
      S => sel0(2)
    );
\s00_axi_rdata[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[14]\,
      I1 => \slv_reg2_reg_n_0_[14]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[14]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[14]\,
      O => \s00_axi_rdata[14]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(14),
      I1 => y_count_reg(14),
      I2 => sel0(1),
      I3 => x2_count_reg(14),
      I4 => sel0(0),
      I5 => x1_count_reg(14),
      O => \s00_axi_rdata[14]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[15]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[15]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(15),
      S => sel0(2)
    );
\s00_axi_rdata[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[15]\,
      I1 => \slv_reg2_reg_n_0_[15]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[15]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[15]\,
      O => \s00_axi_rdata[15]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(15),
      I1 => y_count_reg(15),
      I2 => sel0(1),
      I3 => x2_count_reg(15),
      I4 => sel0(0),
      I5 => x1_count_reg(15),
      O => \s00_axi_rdata[15]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[16]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[16]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(16),
      S => sel0(2)
    );
\s00_axi_rdata[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[16]\,
      I1 => \slv_reg2_reg_n_0_[16]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[16]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[16]\,
      O => \s00_axi_rdata[16]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[16]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(16),
      I1 => y_count_reg(16),
      I2 => sel0(1),
      I3 => x2_count_reg(16),
      I4 => sel0(0),
      I5 => x1_count_reg(16),
      O => \s00_axi_rdata[16]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[17]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[17]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(17),
      S => sel0(2)
    );
\s00_axi_rdata[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[17]\,
      I1 => \slv_reg2_reg_n_0_[17]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[17]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[17]\,
      O => \s00_axi_rdata[17]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[17]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(17),
      I1 => y_count_reg(17),
      I2 => sel0(1),
      I3 => x2_count_reg(17),
      I4 => sel0(0),
      I5 => x1_count_reg(17),
      O => \s00_axi_rdata[17]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[18]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[18]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(18),
      S => sel0(2)
    );
\s00_axi_rdata[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[18]\,
      I1 => \slv_reg2_reg_n_0_[18]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[18]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[18]\,
      O => \s00_axi_rdata[18]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[18]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(18),
      I1 => y_count_reg(18),
      I2 => sel0(1),
      I3 => x2_count_reg(18),
      I4 => sel0(0),
      I5 => x1_count_reg(18),
      O => \s00_axi_rdata[18]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[19]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[19]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(19),
      S => sel0(2)
    );
\s00_axi_rdata[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[19]\,
      I1 => \slv_reg2_reg_n_0_[19]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[19]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[19]\,
      O => \s00_axi_rdata[19]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(19),
      I1 => y_count_reg(19),
      I2 => sel0(1),
      I3 => x2_count_reg(19),
      I4 => sel0(0),
      I5 => x1_count_reg(19),
      O => \s00_axi_rdata[19]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[1]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[1]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(1),
      S => sel0(2)
    );
\s00_axi_rdata[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[1]\,
      I1 => \slv_reg2_reg_n_0_[1]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[1]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[1]\,
      O => \s00_axi_rdata[1]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(1),
      I1 => y_count_reg(1),
      I2 => sel0(1),
      I3 => x2_count_reg(1),
      I4 => sel0(0),
      I5 => x1_count_reg(1),
      O => \s00_axi_rdata[1]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[20]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[20]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(20),
      S => sel0(2)
    );
\s00_axi_rdata[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[20]\,
      I1 => \slv_reg2_reg_n_0_[20]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[20]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[20]\,
      O => \s00_axi_rdata[20]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[20]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(20),
      I1 => y_count_reg(20),
      I2 => sel0(1),
      I3 => x2_count_reg(20),
      I4 => sel0(0),
      I5 => x1_count_reg(20),
      O => \s00_axi_rdata[20]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[21]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[21]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(21),
      S => sel0(2)
    );
\s00_axi_rdata[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[21]\,
      I1 => \slv_reg2_reg_n_0_[21]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[21]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[21]\,
      O => \s00_axi_rdata[21]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[21]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(21),
      I1 => y_count_reg(21),
      I2 => sel0(1),
      I3 => x2_count_reg(21),
      I4 => sel0(0),
      I5 => x1_count_reg(21),
      O => \s00_axi_rdata[21]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[22]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[22]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(22),
      S => sel0(2)
    );
\s00_axi_rdata[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[22]\,
      I1 => \slv_reg2_reg_n_0_[22]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[22]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[22]\,
      O => \s00_axi_rdata[22]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[22]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(22),
      I1 => y_count_reg(22),
      I2 => sel0(1),
      I3 => x2_count_reg(22),
      I4 => sel0(0),
      I5 => x1_count_reg(22),
      O => \s00_axi_rdata[22]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[23]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[23]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(23),
      S => sel0(2)
    );
\s00_axi_rdata[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[23]\,
      I1 => \slv_reg2_reg_n_0_[23]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[23]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[23]\,
      O => \s00_axi_rdata[23]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[23]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(23),
      I1 => y_count_reg(23),
      I2 => sel0(1),
      I3 => x2_count_reg(23),
      I4 => sel0(0),
      I5 => x1_count_reg(23),
      O => \s00_axi_rdata[23]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[24]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[24]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(24),
      S => sel0(2)
    );
\s00_axi_rdata[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[24]\,
      I1 => \slv_reg2_reg_n_0_[24]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[24]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[24]\,
      O => \s00_axi_rdata[24]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[24]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(24),
      I1 => y_count_reg(24),
      I2 => sel0(1),
      I3 => x2_count_reg(24),
      I4 => sel0(0),
      I5 => x1_count_reg(24),
      O => \s00_axi_rdata[24]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[25]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[25]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(25),
      S => sel0(2)
    );
\s00_axi_rdata[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[25]\,
      I1 => \slv_reg2_reg_n_0_[25]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[25]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[25]\,
      O => \s00_axi_rdata[25]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[25]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(25),
      I1 => y_count_reg(25),
      I2 => sel0(1),
      I3 => x2_count_reg(25),
      I4 => sel0(0),
      I5 => x1_count_reg(25),
      O => \s00_axi_rdata[25]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[26]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[26]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(26),
      S => sel0(2)
    );
\s00_axi_rdata[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[26]\,
      I1 => \slv_reg2_reg_n_0_[26]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[26]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[26]\,
      O => \s00_axi_rdata[26]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[26]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(26),
      I1 => y_count_reg(26),
      I2 => sel0(1),
      I3 => x2_count_reg(26),
      I4 => sel0(0),
      I5 => x1_count_reg(26),
      O => \s00_axi_rdata[26]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[27]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[27]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(27),
      S => sel0(2)
    );
\s00_axi_rdata[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[27]\,
      I1 => \slv_reg2_reg_n_0_[27]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[27]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[27]\,
      O => \s00_axi_rdata[27]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[27]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(27),
      I1 => y_count_reg(27),
      I2 => sel0(1),
      I3 => x2_count_reg(27),
      I4 => sel0(0),
      I5 => x1_count_reg(27),
      O => \s00_axi_rdata[27]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[28]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[28]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(28),
      S => sel0(2)
    );
\s00_axi_rdata[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[28]\,
      I1 => \slv_reg2_reg_n_0_[28]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[28]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[28]\,
      O => \s00_axi_rdata[28]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[28]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(28),
      I1 => y_count_reg(28),
      I2 => sel0(1),
      I3 => x2_count_reg(28),
      I4 => sel0(0),
      I5 => x1_count_reg(28),
      O => \s00_axi_rdata[28]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[29]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[29]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(29),
      S => sel0(2)
    );
\s00_axi_rdata[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[29]\,
      I1 => \slv_reg2_reg_n_0_[29]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[29]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[29]\,
      O => \s00_axi_rdata[29]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[29]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(29),
      I1 => y_count_reg(29),
      I2 => sel0(1),
      I3 => x2_count_reg(29),
      I4 => sel0(0),
      I5 => x1_count_reg(29),
      O => \s00_axi_rdata[29]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[2]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[2]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(2),
      S => sel0(2)
    );
\s00_axi_rdata[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[2]\,
      I1 => \slv_reg2_reg_n_0_[2]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[2]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[2]\,
      O => \s00_axi_rdata[2]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(2),
      I1 => y_count_reg(2),
      I2 => sel0(1),
      I3 => x2_count_reg(2),
      I4 => sel0(0),
      I5 => x1_count_reg(2),
      O => \s00_axi_rdata[2]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[30]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[30]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(30),
      S => sel0(2)
    );
\s00_axi_rdata[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[30]\,
      I1 => \slv_reg2_reg_n_0_[30]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[30]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[30]\,
      O => \s00_axi_rdata[30]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[30]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(30),
      I1 => y_count_reg(30),
      I2 => sel0(1),
      I3 => x2_count_reg(30),
      I4 => sel0(0),
      I5 => x1_count_reg(30),
      O => \s00_axi_rdata[30]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(31),
      S => sel0(2)
    );
\s00_axi_rdata[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[31]\,
      I1 => \slv_reg2_reg_n_0_[31]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[31]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[31]\,
      O => \s00_axi_rdata[31]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(31),
      I1 => y_count_reg(31),
      I2 => sel0(1),
      I3 => x2_count_reg(31),
      I4 => sel0(0),
      I5 => x1_count_reg(31),
      O => \s00_axi_rdata[31]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[3]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[3]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(3),
      S => sel0(2)
    );
\s00_axi_rdata[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[3]\,
      I1 => \slv_reg2_reg_n_0_[3]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[3]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[3]\,
      O => \s00_axi_rdata[3]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(3),
      I1 => y_count_reg(3),
      I2 => sel0(1),
      I3 => x2_count_reg(3),
      I4 => sel0(0),
      I5 => x1_count_reg(3),
      O => \s00_axi_rdata[3]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[4]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[4]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(4),
      S => sel0(2)
    );
\s00_axi_rdata[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[4]\,
      I1 => \slv_reg2_reg_n_0_[4]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[4]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[4]\,
      O => \s00_axi_rdata[4]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(4),
      I1 => y_count_reg(4),
      I2 => sel0(1),
      I3 => x2_count_reg(4),
      I4 => sel0(0),
      I5 => x1_count_reg(4),
      O => \s00_axi_rdata[4]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[5]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[5]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(5),
      S => sel0(2)
    );
\s00_axi_rdata[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[5]\,
      I1 => \slv_reg2_reg_n_0_[5]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[5]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[5]\,
      O => \s00_axi_rdata[5]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(5),
      I1 => y_count_reg(5),
      I2 => sel0(1),
      I3 => x2_count_reg(5),
      I4 => sel0(0),
      I5 => x1_count_reg(5),
      O => \s00_axi_rdata[5]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[6]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[6]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(6),
      S => sel0(2)
    );
\s00_axi_rdata[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[6]\,
      I1 => \slv_reg2_reg_n_0_[6]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[6]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[6]\,
      O => \s00_axi_rdata[6]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(6),
      I1 => y_count_reg(6),
      I2 => sel0(1),
      I3 => x2_count_reg(6),
      I4 => sel0(0),
      I5 => x1_count_reg(6),
      O => \s00_axi_rdata[6]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[7]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[7]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(7),
      S => sel0(2)
    );
\s00_axi_rdata[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[7]\,
      I1 => \slv_reg2_reg_n_0_[7]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[7]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[7]\,
      O => \s00_axi_rdata[7]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(7),
      I1 => y_count_reg(7),
      I2 => sel0(1),
      I3 => x2_count_reg(7),
      I4 => sel0(0),
      I5 => x1_count_reg(7),
      O => \s00_axi_rdata[7]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[8]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[8]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(8),
      S => sel0(2)
    );
\s00_axi_rdata[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg_z_ctrl(8),
      I1 => reg_y_ctrl(8),
      I2 => sel0(1),
      I3 => reg_x2_ctrl(8),
      I4 => sel0(0),
      I5 => reg_x1_ctrl(8),
      O => \s00_axi_rdata[8]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(8),
      I1 => y_count_reg(8),
      I2 => sel0(1),
      I3 => x2_count_reg(8),
      I4 => sel0(0),
      I5 => x1_count_reg(8),
      O => \s00_axi_rdata[8]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[9]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[9]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(9),
      S => sel0(2)
    );
\s00_axi_rdata[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[9]\,
      I1 => \slv_reg2_reg_n_0_[9]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[9]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[9]\,
      O => \s00_axi_rdata[9]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => z_count_reg(9),
      I1 => y_count_reg(9),
      I2 => sel0(1),
      I3 => x2_count_reg(9),
      I4 => sel0(0),
      I5 => x1_count_reg(9),
      O => \s00_axi_rdata[9]_INST_0_i_2_n_0\
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__2\(4),
      I2 => s00_axi_wstrb(1),
      I3 => \mem_logic__2\(2),
      I4 => \mem_logic__2\(3),
      O => p_1_in(8)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__2\(4),
      I2 => s00_axi_wstrb(2),
      I3 => \mem_logic__2\(2),
      I4 => \mem_logic__2\(3),
      O => p_1_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__2\(4),
      I2 => s00_axi_wstrb(3),
      I3 => \mem_logic__2\(2),
      I4 => \mem_logic__2\(3),
      O => p_1_in(31)
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      O => \mem_logic__2\(4)
    );
\slv_reg0[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[2]\,
      O => \mem_logic__2\(2)
    );
\slv_reg0[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[3]\,
      O => \mem_logic__2\(3)
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__2\(4),
      I2 => s00_axi_wstrb(0),
      I3 => \mem_logic__2\(2),
      I4 => \mem_logic__2\(3),
      O => p_1_in(7)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => \slv_reg0_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => \slv_reg0_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => \slv_reg0_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => \slv_reg0_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => \slv_reg0_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => \slv_reg0_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => \slv_reg0_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(8),
      Q => reg_x1_ctrl(8),
      R => \^sr\(0)
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(9),
      Q => \slv_reg0_reg_n_0_[9]\,
      R => \^sr\(0)
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__2\(4),
      I2 => \mem_logic__2\(3),
      I3 => \mem_logic__2\(2),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__2\(4),
      I2 => \mem_logic__2\(3),
      I3 => \mem_logic__2\(2),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__2\(4),
      I2 => \mem_logic__2\(3),
      I3 => \mem_logic__2\(2),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__2\(4),
      I2 => \mem_logic__2\(3),
      I3 => \mem_logic__2\(2),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg1_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg1_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg1_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg1_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg1_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg1_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg1_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg1_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg1_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg1_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg1_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg1_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg1_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg1_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg1_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg1_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg1_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg1_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg1_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg1_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg1_reg_n_0_[28]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg1_reg_n_0_[29]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg1_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg1_reg_n_0_[30]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg1_reg_n_0_[31]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg1_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg1_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg1_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg1_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg1_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => reg_x2_ctrl(8),
      R => \^sr\(0)
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg1_reg_n_0_[9]\,
      R => \^sr\(0)
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__2\(4),
      I2 => \mem_logic__2\(2),
      I3 => s00_axi_wstrb(1),
      I4 => \mem_logic__2\(3),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__2\(4),
      I2 => \mem_logic__2\(2),
      I3 => s00_axi_wstrb(2),
      I4 => \mem_logic__2\(3),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__2\(4),
      I2 => \mem_logic__2\(2),
      I3 => s00_axi_wstrb(3),
      I4 => \mem_logic__2\(3),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__2\(4),
      I2 => \mem_logic__2\(2),
      I3 => s00_axi_wstrb(0),
      I4 => \mem_logic__2\(3),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg2_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg2_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg2_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg2_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg2_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg2_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg2_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg2_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg2_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg2_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg2_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg2_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg2_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg2_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg2_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg2_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg2_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg2_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg2_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg2_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg2_reg_n_0_[28]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg2_reg_n_0_[29]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg2_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg2_reg_n_0_[30]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg2_reg_n_0_[31]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg2_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg2_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg2_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg2_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg2_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => reg_y_ctrl(8),
      R => \^sr\(0)
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg2_reg_n_0_[9]\,
      R => \^sr\(0)
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__2\(4),
      I2 => \mem_logic__2\(3),
      I3 => \mem_logic__2\(2),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__2\(4),
      I2 => \mem_logic__2\(3),
      I3 => \mem_logic__2\(2),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__2\(4),
      I2 => \mem_logic__2\(3),
      I3 => \mem_logic__2\(2),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \mem_logic__2\(4),
      I2 => \mem_logic__2\(3),
      I3 => \mem_logic__2\(2),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg3_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg3_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg3_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg3_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg3_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg3_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg3_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg3_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg3_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg3_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg3_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg3_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg3_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg3_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg3_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg3_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg3_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg3_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg3_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg3_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg3_reg_n_0_[28]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg3_reg_n_0_[29]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg3_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg3_reg_n_0_[30]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg3_reg_n_0_[31]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg3_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg3_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg3_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg3_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg3_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => reg_z_ctrl(8),
      R => \^sr\(0)
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg3_reg_n_0_[9]\,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_motor_ctrl is
  port (
    axi_awready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    m1_in1 : out STD_LOGIC;
    m1_in2 : out STD_LOGIC;
    m2_in1 : out STD_LOGIC;
    m2_in2 : out STD_LOGIC;
    m3_in1 : out STD_LOGIC;
    m3_in2 : out STD_LOGIC;
    m4_in1 : out STD_LOGIC;
    m4_in2 : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wready : out STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    enc_x1_a : in STD_LOGIC;
    enc_x1_b : in STD_LOGIC;
    enc_x2_a : in STD_LOGIC;
    enc_x2_b : in STD_LOGIC;
    enc_y_a : in STD_LOGIC;
    enc_y_b : in STD_LOGIC;
    enc_z_a : in STD_LOGIC;
    enc_z_b : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_motor_ctrl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_motor_ctrl is
  signal cnt_reg : STD_LOGIC_VECTOR ( 11 downto 4 );
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_15 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_16 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_17 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_18 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_19 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_20 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_21 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_22 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_23 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_24 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_25 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_26 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_27 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_28 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_29 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_30 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_31 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_32 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_33 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_34 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_35 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_36 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_37 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_38 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_39 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_40 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_41 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_42 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_43 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_44 : STD_LOGIC;
  signal motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_45 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pwm : STD_LOGIC;
  signal pwm_0 : STD_LOGIC;
  signal pwm_1 : STD_LOGIC;
  signal pwm_2 : STD_LOGIC;
  signal x1_a_sync : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal x1_b_sync : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \x1_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \x1_count[0]_i_3_n_0\ : STD_LOGIC;
  signal \x1_count[0]_i_4_n_0\ : STD_LOGIC;
  signal \x1_count[0]_i_5_n_0\ : STD_LOGIC;
  signal \x1_count[0]_i_6_n_0\ : STD_LOGIC;
  signal \x1_count[12]_i_2_n_0\ : STD_LOGIC;
  signal \x1_count[12]_i_3_n_0\ : STD_LOGIC;
  signal \x1_count[12]_i_4_n_0\ : STD_LOGIC;
  signal \x1_count[12]_i_5_n_0\ : STD_LOGIC;
  signal \x1_count[16]_i_2_n_0\ : STD_LOGIC;
  signal \x1_count[16]_i_3_n_0\ : STD_LOGIC;
  signal \x1_count[16]_i_4_n_0\ : STD_LOGIC;
  signal \x1_count[16]_i_5_n_0\ : STD_LOGIC;
  signal \x1_count[20]_i_2_n_0\ : STD_LOGIC;
  signal \x1_count[20]_i_3_n_0\ : STD_LOGIC;
  signal \x1_count[20]_i_4_n_0\ : STD_LOGIC;
  signal \x1_count[20]_i_5_n_0\ : STD_LOGIC;
  signal \x1_count[24]_i_2_n_0\ : STD_LOGIC;
  signal \x1_count[24]_i_3_n_0\ : STD_LOGIC;
  signal \x1_count[24]_i_4_n_0\ : STD_LOGIC;
  signal \x1_count[24]_i_5_n_0\ : STD_LOGIC;
  signal \x1_count[28]_i_2_n_0\ : STD_LOGIC;
  signal \x1_count[28]_i_3_n_0\ : STD_LOGIC;
  signal \x1_count[28]_i_4_n_0\ : STD_LOGIC;
  signal \x1_count[28]_i_5_n_0\ : STD_LOGIC;
  signal \x1_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \x1_count[4]_i_3_n_0\ : STD_LOGIC;
  signal \x1_count[4]_i_4_n_0\ : STD_LOGIC;
  signal \x1_count[4]_i_5_n_0\ : STD_LOGIC;
  signal \x1_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \x1_count[8]_i_3_n_0\ : STD_LOGIC;
  signal \x1_count[8]_i_4_n_0\ : STD_LOGIC;
  signal \x1_count[8]_i_5_n_0\ : STD_LOGIC;
  signal x1_count_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \x1_count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \x1_count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \x1_count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \x1_count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \x1_count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \x1_count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \x1_count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \x1_count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \x1_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \x1_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \x1_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \x1_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \x1_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \x1_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \x1_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \x1_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \x1_count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \x1_count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \x1_count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \x1_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \x1_count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \x1_count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \x1_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \x1_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \x1_count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \x1_count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \x1_count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \x1_count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \x1_count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \x1_count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \x1_count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \x1_count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \x1_count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \x1_count_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \x1_count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \x1_count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \x1_count_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \x1_count_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \x1_count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \x1_count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \x1_count_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \x1_count_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \x1_count_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \x1_count_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \x1_count_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \x1_count_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \x1_count_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \x1_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \x1_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \x1_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \x1_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \x1_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \x1_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \x1_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \x1_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \x1_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \x1_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \x1_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \x1_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \x1_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \x1_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \x1_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \x1_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal x2_a_sync : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal x2_b_sync : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \x2_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \x2_count[0]_i_3_n_0\ : STD_LOGIC;
  signal \x2_count[0]_i_4_n_0\ : STD_LOGIC;
  signal \x2_count[0]_i_5_n_0\ : STD_LOGIC;
  signal \x2_count[0]_i_6_n_0\ : STD_LOGIC;
  signal \x2_count[12]_i_2_n_0\ : STD_LOGIC;
  signal \x2_count[12]_i_3_n_0\ : STD_LOGIC;
  signal \x2_count[12]_i_4_n_0\ : STD_LOGIC;
  signal \x2_count[12]_i_5_n_0\ : STD_LOGIC;
  signal \x2_count[16]_i_2_n_0\ : STD_LOGIC;
  signal \x2_count[16]_i_3_n_0\ : STD_LOGIC;
  signal \x2_count[16]_i_4_n_0\ : STD_LOGIC;
  signal \x2_count[16]_i_5_n_0\ : STD_LOGIC;
  signal \x2_count[20]_i_2_n_0\ : STD_LOGIC;
  signal \x2_count[20]_i_3_n_0\ : STD_LOGIC;
  signal \x2_count[20]_i_4_n_0\ : STD_LOGIC;
  signal \x2_count[20]_i_5_n_0\ : STD_LOGIC;
  signal \x2_count[24]_i_2_n_0\ : STD_LOGIC;
  signal \x2_count[24]_i_3_n_0\ : STD_LOGIC;
  signal \x2_count[24]_i_4_n_0\ : STD_LOGIC;
  signal \x2_count[24]_i_5_n_0\ : STD_LOGIC;
  signal \x2_count[28]_i_2_n_0\ : STD_LOGIC;
  signal \x2_count[28]_i_3_n_0\ : STD_LOGIC;
  signal \x2_count[28]_i_4_n_0\ : STD_LOGIC;
  signal \x2_count[28]_i_5_n_0\ : STD_LOGIC;
  signal \x2_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \x2_count[4]_i_3_n_0\ : STD_LOGIC;
  signal \x2_count[4]_i_4_n_0\ : STD_LOGIC;
  signal \x2_count[4]_i_5_n_0\ : STD_LOGIC;
  signal \x2_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \x2_count[8]_i_3_n_0\ : STD_LOGIC;
  signal \x2_count[8]_i_4_n_0\ : STD_LOGIC;
  signal \x2_count[8]_i_5_n_0\ : STD_LOGIC;
  signal x2_count_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \x2_count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \x2_count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \x2_count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \x2_count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \x2_count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \x2_count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \x2_count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \x2_count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \x2_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \x2_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \x2_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \x2_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \x2_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \x2_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \x2_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \x2_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \x2_count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \x2_count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \x2_count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \x2_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \x2_count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \x2_count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \x2_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \x2_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \x2_count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \x2_count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \x2_count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \x2_count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \x2_count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \x2_count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \x2_count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \x2_count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \x2_count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \x2_count_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \x2_count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \x2_count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \x2_count_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \x2_count_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \x2_count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \x2_count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \x2_count_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \x2_count_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \x2_count_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \x2_count_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \x2_count_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \x2_count_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \x2_count_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \x2_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \x2_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \x2_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \x2_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \x2_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \x2_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \x2_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \x2_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \x2_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \x2_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \x2_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \x2_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \x2_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \x2_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \x2_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \x2_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal x2_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal x2_state_p : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal y_a_sync : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal y_b_sync : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \y_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \y_count[0]_i_3_n_0\ : STD_LOGIC;
  signal \y_count[0]_i_4_n_0\ : STD_LOGIC;
  signal \y_count[0]_i_5_n_0\ : STD_LOGIC;
  signal \y_count[0]_i_6_n_0\ : STD_LOGIC;
  signal \y_count[12]_i_2_n_0\ : STD_LOGIC;
  signal \y_count[12]_i_3_n_0\ : STD_LOGIC;
  signal \y_count[12]_i_4_n_0\ : STD_LOGIC;
  signal \y_count[12]_i_5_n_0\ : STD_LOGIC;
  signal \y_count[16]_i_2_n_0\ : STD_LOGIC;
  signal \y_count[16]_i_3_n_0\ : STD_LOGIC;
  signal \y_count[16]_i_4_n_0\ : STD_LOGIC;
  signal \y_count[16]_i_5_n_0\ : STD_LOGIC;
  signal \y_count[20]_i_2_n_0\ : STD_LOGIC;
  signal \y_count[20]_i_3_n_0\ : STD_LOGIC;
  signal \y_count[20]_i_4_n_0\ : STD_LOGIC;
  signal \y_count[20]_i_5_n_0\ : STD_LOGIC;
  signal \y_count[24]_i_2_n_0\ : STD_LOGIC;
  signal \y_count[24]_i_3_n_0\ : STD_LOGIC;
  signal \y_count[24]_i_4_n_0\ : STD_LOGIC;
  signal \y_count[24]_i_5_n_0\ : STD_LOGIC;
  signal \y_count[28]_i_2_n_0\ : STD_LOGIC;
  signal \y_count[28]_i_3_n_0\ : STD_LOGIC;
  signal \y_count[28]_i_4_n_0\ : STD_LOGIC;
  signal \y_count[28]_i_5_n_0\ : STD_LOGIC;
  signal \y_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \y_count[4]_i_3_n_0\ : STD_LOGIC;
  signal \y_count[4]_i_4_n_0\ : STD_LOGIC;
  signal \y_count[4]_i_5_n_0\ : STD_LOGIC;
  signal \y_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \y_count[8]_i_3_n_0\ : STD_LOGIC;
  signal \y_count[8]_i_4_n_0\ : STD_LOGIC;
  signal \y_count[8]_i_5_n_0\ : STD_LOGIC;
  signal y_count_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \y_count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \y_count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \y_count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \y_count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \y_count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \y_count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \y_count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \y_count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \y_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \y_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \y_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \y_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \y_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \y_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \y_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \y_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \y_count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \y_count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \y_count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \y_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \y_count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \y_count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \y_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \y_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \y_count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \y_count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \y_count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \y_count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \y_count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \y_count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \y_count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \y_count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \y_count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \y_count_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \y_count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \y_count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \y_count_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \y_count_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \y_count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \y_count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \y_count_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \y_count_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \y_count_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \y_count_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \y_count_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \y_count_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \y_count_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \y_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \y_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \y_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \y_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \y_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \y_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \y_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \y_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \y_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \y_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \y_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \y_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \y_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \y_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \y_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \y_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal y_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal y_state_p : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal z_a_sync : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal z_b_sync : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \z_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \z_count[0]_i_3_n_0\ : STD_LOGIC;
  signal \z_count[0]_i_4_n_0\ : STD_LOGIC;
  signal \z_count[0]_i_5_n_0\ : STD_LOGIC;
  signal \z_count[0]_i_6_n_0\ : STD_LOGIC;
  signal \z_count[12]_i_2_n_0\ : STD_LOGIC;
  signal \z_count[12]_i_3_n_0\ : STD_LOGIC;
  signal \z_count[12]_i_4_n_0\ : STD_LOGIC;
  signal \z_count[12]_i_5_n_0\ : STD_LOGIC;
  signal \z_count[16]_i_2_n_0\ : STD_LOGIC;
  signal \z_count[16]_i_3_n_0\ : STD_LOGIC;
  signal \z_count[16]_i_4_n_0\ : STD_LOGIC;
  signal \z_count[16]_i_5_n_0\ : STD_LOGIC;
  signal \z_count[20]_i_2_n_0\ : STD_LOGIC;
  signal \z_count[20]_i_3_n_0\ : STD_LOGIC;
  signal \z_count[20]_i_4_n_0\ : STD_LOGIC;
  signal \z_count[20]_i_5_n_0\ : STD_LOGIC;
  signal \z_count[24]_i_2_n_0\ : STD_LOGIC;
  signal \z_count[24]_i_3_n_0\ : STD_LOGIC;
  signal \z_count[24]_i_4_n_0\ : STD_LOGIC;
  signal \z_count[24]_i_5_n_0\ : STD_LOGIC;
  signal \z_count[28]_i_2_n_0\ : STD_LOGIC;
  signal \z_count[28]_i_3_n_0\ : STD_LOGIC;
  signal \z_count[28]_i_4_n_0\ : STD_LOGIC;
  signal \z_count[28]_i_5_n_0\ : STD_LOGIC;
  signal \z_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \z_count[4]_i_3_n_0\ : STD_LOGIC;
  signal \z_count[4]_i_4_n_0\ : STD_LOGIC;
  signal \z_count[4]_i_5_n_0\ : STD_LOGIC;
  signal \z_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \z_count[8]_i_3_n_0\ : STD_LOGIC;
  signal \z_count[8]_i_4_n_0\ : STD_LOGIC;
  signal \z_count[8]_i_5_n_0\ : STD_LOGIC;
  signal z_count_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \z_count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \z_count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \z_count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \z_count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \z_count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \z_count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \z_count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \z_count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \z_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \z_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \z_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \z_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \z_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \z_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \z_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \z_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \z_count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \z_count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \z_count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \z_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \z_count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \z_count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \z_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \z_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \z_count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \z_count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \z_count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \z_count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \z_count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \z_count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \z_count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \z_count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \z_count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \z_count_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \z_count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \z_count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \z_count_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \z_count_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \z_count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \z_count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \z_count_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \z_count_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \z_count_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \z_count_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \z_count_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \z_count_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \z_count_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \z_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \z_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \z_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \z_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \z_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \z_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \z_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \z_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \z_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \z_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \z_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \z_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \z_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \z_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \z_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \z_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal z_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal z_state_p : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_x1_count_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_x2_count_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_y_count_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_z_count_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \x1_count_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \x1_count_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \x1_count_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \x1_count_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \x1_count_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \x1_count_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \x1_count_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \x1_count_reg[8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \x2_count_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \x2_count_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \x2_count_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \x2_count_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \x2_count_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \x2_count_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \x2_count_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \x2_count_reg[8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \y_count_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \y_count_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \y_count_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \y_count_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \y_count_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \y_count_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \y_count_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \y_count_reg[8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \z_count_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \z_count_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \z_count_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \z_count_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \z_count_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \z_count_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \z_count_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \z_count_reg[8]_i_1\ : label is 11;
begin
motor_ctrl_slave_lite_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_motor_ctrl_slave_lite_v1_0_S00_AXI
     port map (
      CO(0) => pwm,
      DI(3) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_18,
      DI(2) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_19,
      DI(1) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_20,
      DI(0) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_21,
      S(3) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14,
      S(2) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_15,
      S(1) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_16,
      S(0) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_17,
      SR(0) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      cnt_reg(7 downto 0) => cnt_reg(11 downto 4),
      m1_in1 => m1_in1,
      m1_in2 => m1_in2,
      m2_in1 => m2_in1,
      m2_in1_0(0) => pwm_0,
      m2_in2 => m2_in2,
      m3_in1 => m3_in1,
      m3_in1_0(0) => pwm_1,
      m3_in2 => m3_in2,
      m4_in1 => m4_in1,
      m4_in1_0(0) => pwm_2,
      m4_in2 => m4_in2,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(2 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(2 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      \slv_reg1_reg[6]_0\(3) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_22,
      \slv_reg1_reg[6]_0\(2) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_23,
      \slv_reg1_reg[6]_0\(1) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_24,
      \slv_reg1_reg[6]_0\(0) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_25,
      \slv_reg1_reg[6]_1\(3) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_26,
      \slv_reg1_reg[6]_1\(2) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_27,
      \slv_reg1_reg[6]_1\(1) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_28,
      \slv_reg1_reg[6]_1\(0) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_29,
      \slv_reg2_reg[6]_0\(3) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_30,
      \slv_reg2_reg[6]_0\(2) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_31,
      \slv_reg2_reg[6]_0\(1) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_32,
      \slv_reg2_reg[6]_0\(0) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_33,
      \slv_reg2_reg[6]_1\(3) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_34,
      \slv_reg2_reg[6]_1\(2) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_35,
      \slv_reg2_reg[6]_1\(1) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_36,
      \slv_reg2_reg[6]_1\(0) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_37,
      \slv_reg3_reg[6]_0\(3) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_38,
      \slv_reg3_reg[6]_0\(2) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_39,
      \slv_reg3_reg[6]_0\(1) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_40,
      \slv_reg3_reg[6]_0\(0) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_41,
      \slv_reg3_reg[6]_1\(3) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_42,
      \slv_reg3_reg[6]_1\(2) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_43,
      \slv_reg3_reg[6]_1\(1) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_44,
      \slv_reg3_reg[6]_1\(0) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_45,
      x1_count_reg(31 downto 0) => x1_count_reg(31 downto 0),
      x2_count_reg(31 downto 0) => x2_count_reg(31 downto 0),
      y_count_reg(31 downto 0) => y_count_reg(31 downto 0),
      z_count_reg(31 downto 0) => z_count_reg(31 downto 0)
    );
u_m1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MotorControl
     port map (
      CO(0) => pwm,
      DI(3) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_18,
      DI(2) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_19,
      DI(1) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_20,
      DI(0) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_21,
      S(3) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_14,
      S(2) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_15,
      S(1) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_16,
      S(0) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_17,
      SR(0) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1,
      cnt_reg(7 downto 0) => cnt_reg(11 downto 4),
      s00_axi_aclk => s00_axi_aclk
    );
u_m2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MotorControl_0
     port map (
      m2_in1(3) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_26,
      m2_in1(2) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_27,
      m2_in1(1) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_28,
      m2_in1(0) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_29,
      m2_in1_0(3) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_22,
      m2_in1_0(2) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_23,
      m2_in1_0(1) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_24,
      m2_in1_0(0) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_25,
      \slv_reg1_reg[6]\(0) => pwm_0
    );
u_m3: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MotorControl_1
     port map (
      m3_in1(3) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_34,
      m3_in1(2) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_35,
      m3_in1(1) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_36,
      m3_in1(0) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_37,
      m3_in1_0(3) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_30,
      m3_in1_0(2) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_31,
      m3_in1_0(1) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_32,
      m3_in1_0(0) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_33,
      \slv_reg2_reg[6]\(0) => pwm_1
    );
u_m4: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MotorControl_2
     port map (
      m4_in1(3) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_42,
      m4_in1(2) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_43,
      m4_in1(1) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_44,
      m4_in1(0) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_45,
      m4_in1_0(3) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_38,
      m4_in1_0(2) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_39,
      m4_in1_0(1) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_40,
      m4_in1_0(0) => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_41,
      \slv_reg3_reg[6]\(0) => pwm_2
    );
\x1_a_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => enc_x1_a,
      Q => x1_a_sync(0),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_a_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => x1_a_sync(0),
      Q => x1_a_sync(1),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_b_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => enc_x1_b,
      Q => x1_b_sync(0),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_b_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => x1_b_sync(0),
      Q => x1_b_sync(1),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => p_0_in(3),
      I3 => p_0_in(2),
      O => \x1_count[0]_i_1_n_0\
    );
\x1_count[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(3),
      O => \x1_count[0]_i_3_n_0\
    );
\x1_count[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(2),
      O => \x1_count[0]_i_4_n_0\
    );
\x1_count[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(1),
      O => \x1_count[0]_i_5_n_0\
    );
\x1_count[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x1_count_reg(0),
      O => \x1_count[0]_i_6_n_0\
    );
\x1_count[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(15),
      O => \x1_count[12]_i_2_n_0\
    );
\x1_count[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(14),
      O => \x1_count[12]_i_3_n_0\
    );
\x1_count[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(13),
      O => \x1_count[12]_i_4_n_0\
    );
\x1_count[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(12),
      O => \x1_count[12]_i_5_n_0\
    );
\x1_count[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(19),
      O => \x1_count[16]_i_2_n_0\
    );
\x1_count[16]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(18),
      O => \x1_count[16]_i_3_n_0\
    );
\x1_count[16]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(17),
      O => \x1_count[16]_i_4_n_0\
    );
\x1_count[16]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(16),
      O => \x1_count[16]_i_5_n_0\
    );
\x1_count[20]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(23),
      O => \x1_count[20]_i_2_n_0\
    );
\x1_count[20]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(22),
      O => \x1_count[20]_i_3_n_0\
    );
\x1_count[20]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(21),
      O => \x1_count[20]_i_4_n_0\
    );
\x1_count[20]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(20),
      O => \x1_count[20]_i_5_n_0\
    );
\x1_count[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(27),
      O => \x1_count[24]_i_2_n_0\
    );
\x1_count[24]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(26),
      O => \x1_count[24]_i_3_n_0\
    );
\x1_count[24]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(25),
      O => \x1_count[24]_i_4_n_0\
    );
\x1_count[24]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(24),
      O => \x1_count[24]_i_5_n_0\
    );
\x1_count[28]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(31),
      O => \x1_count[28]_i_2_n_0\
    );
\x1_count[28]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(30),
      O => \x1_count[28]_i_3_n_0\
    );
\x1_count[28]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(29),
      O => \x1_count[28]_i_4_n_0\
    );
\x1_count[28]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(28),
      O => \x1_count[28]_i_5_n_0\
    );
\x1_count[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(7),
      O => \x1_count[4]_i_2_n_0\
    );
\x1_count[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(6),
      O => \x1_count[4]_i_3_n_0\
    );
\x1_count[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(5),
      O => \x1_count[4]_i_4_n_0\
    );
\x1_count[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(4),
      O => \x1_count[4]_i_5_n_0\
    );
\x1_count[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(11),
      O => \x1_count[8]_i_2_n_0\
    );
\x1_count[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(10),
      O => \x1_count[8]_i_3_n_0\
    );
\x1_count[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(9),
      O => \x1_count[8]_i_4_n_0\
    );
\x1_count[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => x1_count_reg(8),
      O => \x1_count[8]_i_5_n_0\
    );
\x1_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[0]_i_2_n_7\,
      Q => x1_count_reg(0),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \x1_count_reg[0]_i_2_n_0\,
      CO(2) => \x1_count_reg[0]_i_2_n_1\,
      CO(1) => \x1_count_reg[0]_i_2_n_2\,
      CO(0) => \x1_count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => x1_count_reg(3 downto 1),
      DI(0) => '1',
      O(3) => \x1_count_reg[0]_i_2_n_4\,
      O(2) => \x1_count_reg[0]_i_2_n_5\,
      O(1) => \x1_count_reg[0]_i_2_n_6\,
      O(0) => \x1_count_reg[0]_i_2_n_7\,
      S(3) => \x1_count[0]_i_3_n_0\,
      S(2) => \x1_count[0]_i_4_n_0\,
      S(1) => \x1_count[0]_i_5_n_0\,
      S(0) => \x1_count[0]_i_6_n_0\
    );
\x1_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[8]_i_1_n_5\,
      Q => x1_count_reg(10),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[8]_i_1_n_4\,
      Q => x1_count_reg(11),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[12]_i_1_n_7\,
      Q => x1_count_reg(12),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x1_count_reg[8]_i_1_n_0\,
      CO(3) => \x1_count_reg[12]_i_1_n_0\,
      CO(2) => \x1_count_reg[12]_i_1_n_1\,
      CO(1) => \x1_count_reg[12]_i_1_n_2\,
      CO(0) => \x1_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => x1_count_reg(15 downto 12),
      O(3) => \x1_count_reg[12]_i_1_n_4\,
      O(2) => \x1_count_reg[12]_i_1_n_5\,
      O(1) => \x1_count_reg[12]_i_1_n_6\,
      O(0) => \x1_count_reg[12]_i_1_n_7\,
      S(3) => \x1_count[12]_i_2_n_0\,
      S(2) => \x1_count[12]_i_3_n_0\,
      S(1) => \x1_count[12]_i_4_n_0\,
      S(0) => \x1_count[12]_i_5_n_0\
    );
\x1_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[12]_i_1_n_6\,
      Q => x1_count_reg(13),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[12]_i_1_n_5\,
      Q => x1_count_reg(14),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[12]_i_1_n_4\,
      Q => x1_count_reg(15),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[16]_i_1_n_7\,
      Q => x1_count_reg(16),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x1_count_reg[12]_i_1_n_0\,
      CO(3) => \x1_count_reg[16]_i_1_n_0\,
      CO(2) => \x1_count_reg[16]_i_1_n_1\,
      CO(1) => \x1_count_reg[16]_i_1_n_2\,
      CO(0) => \x1_count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => x1_count_reg(19 downto 16),
      O(3) => \x1_count_reg[16]_i_1_n_4\,
      O(2) => \x1_count_reg[16]_i_1_n_5\,
      O(1) => \x1_count_reg[16]_i_1_n_6\,
      O(0) => \x1_count_reg[16]_i_1_n_7\,
      S(3) => \x1_count[16]_i_2_n_0\,
      S(2) => \x1_count[16]_i_3_n_0\,
      S(1) => \x1_count[16]_i_4_n_0\,
      S(0) => \x1_count[16]_i_5_n_0\
    );
\x1_count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[16]_i_1_n_6\,
      Q => x1_count_reg(17),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[16]_i_1_n_5\,
      Q => x1_count_reg(18),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[16]_i_1_n_4\,
      Q => x1_count_reg(19),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[0]_i_2_n_6\,
      Q => x1_count_reg(1),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[20]_i_1_n_7\,
      Q => x1_count_reg(20),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x1_count_reg[16]_i_1_n_0\,
      CO(3) => \x1_count_reg[20]_i_1_n_0\,
      CO(2) => \x1_count_reg[20]_i_1_n_1\,
      CO(1) => \x1_count_reg[20]_i_1_n_2\,
      CO(0) => \x1_count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => x1_count_reg(23 downto 20),
      O(3) => \x1_count_reg[20]_i_1_n_4\,
      O(2) => \x1_count_reg[20]_i_1_n_5\,
      O(1) => \x1_count_reg[20]_i_1_n_6\,
      O(0) => \x1_count_reg[20]_i_1_n_7\,
      S(3) => \x1_count[20]_i_2_n_0\,
      S(2) => \x1_count[20]_i_3_n_0\,
      S(1) => \x1_count[20]_i_4_n_0\,
      S(0) => \x1_count[20]_i_5_n_0\
    );
\x1_count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[20]_i_1_n_6\,
      Q => x1_count_reg(21),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[20]_i_1_n_5\,
      Q => x1_count_reg(22),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[20]_i_1_n_4\,
      Q => x1_count_reg(23),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[24]_i_1_n_7\,
      Q => x1_count_reg(24),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x1_count_reg[20]_i_1_n_0\,
      CO(3) => \x1_count_reg[24]_i_1_n_0\,
      CO(2) => \x1_count_reg[24]_i_1_n_1\,
      CO(1) => \x1_count_reg[24]_i_1_n_2\,
      CO(0) => \x1_count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => x1_count_reg(27 downto 24),
      O(3) => \x1_count_reg[24]_i_1_n_4\,
      O(2) => \x1_count_reg[24]_i_1_n_5\,
      O(1) => \x1_count_reg[24]_i_1_n_6\,
      O(0) => \x1_count_reg[24]_i_1_n_7\,
      S(3) => \x1_count[24]_i_2_n_0\,
      S(2) => \x1_count[24]_i_3_n_0\,
      S(1) => \x1_count[24]_i_4_n_0\,
      S(0) => \x1_count[24]_i_5_n_0\
    );
\x1_count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[24]_i_1_n_6\,
      Q => x1_count_reg(25),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[24]_i_1_n_5\,
      Q => x1_count_reg(26),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[24]_i_1_n_4\,
      Q => x1_count_reg(27),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[28]_i_1_n_7\,
      Q => x1_count_reg(28),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x1_count_reg[24]_i_1_n_0\,
      CO(3) => \NLW_x1_count_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \x1_count_reg[28]_i_1_n_1\,
      CO(1) => \x1_count_reg[28]_i_1_n_2\,
      CO(0) => \x1_count_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => x1_count_reg(30 downto 28),
      O(3) => \x1_count_reg[28]_i_1_n_4\,
      O(2) => \x1_count_reg[28]_i_1_n_5\,
      O(1) => \x1_count_reg[28]_i_1_n_6\,
      O(0) => \x1_count_reg[28]_i_1_n_7\,
      S(3) => \x1_count[28]_i_2_n_0\,
      S(2) => \x1_count[28]_i_3_n_0\,
      S(1) => \x1_count[28]_i_4_n_0\,
      S(0) => \x1_count[28]_i_5_n_0\
    );
\x1_count_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[28]_i_1_n_6\,
      Q => x1_count_reg(29),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[0]_i_2_n_5\,
      Q => x1_count_reg(2),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[28]_i_1_n_5\,
      Q => x1_count_reg(30),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[28]_i_1_n_4\,
      Q => x1_count_reg(31),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[0]_i_2_n_4\,
      Q => x1_count_reg(3),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[4]_i_1_n_7\,
      Q => x1_count_reg(4),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x1_count_reg[0]_i_2_n_0\,
      CO(3) => \x1_count_reg[4]_i_1_n_0\,
      CO(2) => \x1_count_reg[4]_i_1_n_1\,
      CO(1) => \x1_count_reg[4]_i_1_n_2\,
      CO(0) => \x1_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => x1_count_reg(7 downto 4),
      O(3) => \x1_count_reg[4]_i_1_n_4\,
      O(2) => \x1_count_reg[4]_i_1_n_5\,
      O(1) => \x1_count_reg[4]_i_1_n_6\,
      O(0) => \x1_count_reg[4]_i_1_n_7\,
      S(3) => \x1_count[4]_i_2_n_0\,
      S(2) => \x1_count[4]_i_3_n_0\,
      S(1) => \x1_count[4]_i_4_n_0\,
      S(0) => \x1_count[4]_i_5_n_0\
    );
\x1_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[4]_i_1_n_6\,
      Q => x1_count_reg(5),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[4]_i_1_n_5\,
      Q => x1_count_reg(6),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[4]_i_1_n_4\,
      Q => x1_count_reg(7),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[8]_i_1_n_7\,
      Q => x1_count_reg(8),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x1_count_reg[4]_i_1_n_0\,
      CO(3) => \x1_count_reg[8]_i_1_n_0\,
      CO(2) => \x1_count_reg[8]_i_1_n_1\,
      CO(1) => \x1_count_reg[8]_i_1_n_2\,
      CO(0) => \x1_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => x1_count_reg(11 downto 8),
      O(3) => \x1_count_reg[8]_i_1_n_4\,
      O(2) => \x1_count_reg[8]_i_1_n_5\,
      O(1) => \x1_count_reg[8]_i_1_n_6\,
      O(0) => \x1_count_reg[8]_i_1_n_7\,
      S(3) => \x1_count[8]_i_2_n_0\,
      S(2) => \x1_count[8]_i_3_n_0\,
      S(1) => \x1_count[8]_i_4_n_0\,
      S(0) => \x1_count[8]_i_5_n_0\
    );
\x1_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x1_count[0]_i_1_n_0\,
      D => \x1_count_reg[8]_i_1_n_6\,
      Q => x1_count_reg(9),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_state_p_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(0),
      Q => p_0_in(2),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_state_p_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(1),
      Q => p_0_in(3),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => x1_a_sync(1),
      Q => p_0_in(0),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x1_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => x1_b_sync(1),
      Q => p_0_in(1),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_a_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => enc_x2_a,
      Q => x2_a_sync(0),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_a_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => x2_a_sync(0),
      Q => x2_a_sync(1),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_b_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => enc_x2_b,
      Q => x2_b_sync(0),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_b_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => x2_b_sync(0),
      Q => x2_b_sync(1),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => x2_state(1),
      I1 => x2_state(0),
      I2 => x2_state_p(1),
      I3 => x2_state_p(0),
      O => \x2_count[0]_i_1_n_0\
    );
\x2_count[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(3),
      O => \x2_count[0]_i_3_n_0\
    );
\x2_count[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(2),
      O => \x2_count[0]_i_4_n_0\
    );
\x2_count[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(1),
      O => \x2_count[0]_i_5_n_0\
    );
\x2_count[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x2_count_reg(0),
      O => \x2_count[0]_i_6_n_0\
    );
\x2_count[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(15),
      O => \x2_count[12]_i_2_n_0\
    );
\x2_count[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(14),
      O => \x2_count[12]_i_3_n_0\
    );
\x2_count[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(13),
      O => \x2_count[12]_i_4_n_0\
    );
\x2_count[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(12),
      O => \x2_count[12]_i_5_n_0\
    );
\x2_count[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(19),
      O => \x2_count[16]_i_2_n_0\
    );
\x2_count[16]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(18),
      O => \x2_count[16]_i_3_n_0\
    );
\x2_count[16]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(17),
      O => \x2_count[16]_i_4_n_0\
    );
\x2_count[16]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(16),
      O => \x2_count[16]_i_5_n_0\
    );
\x2_count[20]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(23),
      O => \x2_count[20]_i_2_n_0\
    );
\x2_count[20]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(22),
      O => \x2_count[20]_i_3_n_0\
    );
\x2_count[20]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(21),
      O => \x2_count[20]_i_4_n_0\
    );
\x2_count[20]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(20),
      O => \x2_count[20]_i_5_n_0\
    );
\x2_count[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(27),
      O => \x2_count[24]_i_2_n_0\
    );
\x2_count[24]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(26),
      O => \x2_count[24]_i_3_n_0\
    );
\x2_count[24]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(25),
      O => \x2_count[24]_i_4_n_0\
    );
\x2_count[24]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(24),
      O => \x2_count[24]_i_5_n_0\
    );
\x2_count[28]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(31),
      O => \x2_count[28]_i_2_n_0\
    );
\x2_count[28]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(30),
      O => \x2_count[28]_i_3_n_0\
    );
\x2_count[28]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(29),
      O => \x2_count[28]_i_4_n_0\
    );
\x2_count[28]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(28),
      O => \x2_count[28]_i_5_n_0\
    );
\x2_count[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(7),
      O => \x2_count[4]_i_2_n_0\
    );
\x2_count[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(6),
      O => \x2_count[4]_i_3_n_0\
    );
\x2_count[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(5),
      O => \x2_count[4]_i_4_n_0\
    );
\x2_count[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(4),
      O => \x2_count[4]_i_5_n_0\
    );
\x2_count[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(11),
      O => \x2_count[8]_i_2_n_0\
    );
\x2_count[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(10),
      O => \x2_count[8]_i_3_n_0\
    );
\x2_count[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(9),
      O => \x2_count[8]_i_4_n_0\
    );
\x2_count[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x2_state_p(0),
      I1 => x2_state(1),
      I2 => x2_count_reg(8),
      O => \x2_count[8]_i_5_n_0\
    );
\x2_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[0]_i_2_n_7\,
      Q => x2_count_reg(0),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \x2_count_reg[0]_i_2_n_0\,
      CO(2) => \x2_count_reg[0]_i_2_n_1\,
      CO(1) => \x2_count_reg[0]_i_2_n_2\,
      CO(0) => \x2_count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => x2_count_reg(3 downto 1),
      DI(0) => '1',
      O(3) => \x2_count_reg[0]_i_2_n_4\,
      O(2) => \x2_count_reg[0]_i_2_n_5\,
      O(1) => \x2_count_reg[0]_i_2_n_6\,
      O(0) => \x2_count_reg[0]_i_2_n_7\,
      S(3) => \x2_count[0]_i_3_n_0\,
      S(2) => \x2_count[0]_i_4_n_0\,
      S(1) => \x2_count[0]_i_5_n_0\,
      S(0) => \x2_count[0]_i_6_n_0\
    );
\x2_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[8]_i_1_n_5\,
      Q => x2_count_reg(10),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[8]_i_1_n_4\,
      Q => x2_count_reg(11),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[12]_i_1_n_7\,
      Q => x2_count_reg(12),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x2_count_reg[8]_i_1_n_0\,
      CO(3) => \x2_count_reg[12]_i_1_n_0\,
      CO(2) => \x2_count_reg[12]_i_1_n_1\,
      CO(1) => \x2_count_reg[12]_i_1_n_2\,
      CO(0) => \x2_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => x2_count_reg(15 downto 12),
      O(3) => \x2_count_reg[12]_i_1_n_4\,
      O(2) => \x2_count_reg[12]_i_1_n_5\,
      O(1) => \x2_count_reg[12]_i_1_n_6\,
      O(0) => \x2_count_reg[12]_i_1_n_7\,
      S(3) => \x2_count[12]_i_2_n_0\,
      S(2) => \x2_count[12]_i_3_n_0\,
      S(1) => \x2_count[12]_i_4_n_0\,
      S(0) => \x2_count[12]_i_5_n_0\
    );
\x2_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[12]_i_1_n_6\,
      Q => x2_count_reg(13),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[12]_i_1_n_5\,
      Q => x2_count_reg(14),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[12]_i_1_n_4\,
      Q => x2_count_reg(15),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[16]_i_1_n_7\,
      Q => x2_count_reg(16),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x2_count_reg[12]_i_1_n_0\,
      CO(3) => \x2_count_reg[16]_i_1_n_0\,
      CO(2) => \x2_count_reg[16]_i_1_n_1\,
      CO(1) => \x2_count_reg[16]_i_1_n_2\,
      CO(0) => \x2_count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => x2_count_reg(19 downto 16),
      O(3) => \x2_count_reg[16]_i_1_n_4\,
      O(2) => \x2_count_reg[16]_i_1_n_5\,
      O(1) => \x2_count_reg[16]_i_1_n_6\,
      O(0) => \x2_count_reg[16]_i_1_n_7\,
      S(3) => \x2_count[16]_i_2_n_0\,
      S(2) => \x2_count[16]_i_3_n_0\,
      S(1) => \x2_count[16]_i_4_n_0\,
      S(0) => \x2_count[16]_i_5_n_0\
    );
\x2_count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[16]_i_1_n_6\,
      Q => x2_count_reg(17),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[16]_i_1_n_5\,
      Q => x2_count_reg(18),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[16]_i_1_n_4\,
      Q => x2_count_reg(19),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[0]_i_2_n_6\,
      Q => x2_count_reg(1),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[20]_i_1_n_7\,
      Q => x2_count_reg(20),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x2_count_reg[16]_i_1_n_0\,
      CO(3) => \x2_count_reg[20]_i_1_n_0\,
      CO(2) => \x2_count_reg[20]_i_1_n_1\,
      CO(1) => \x2_count_reg[20]_i_1_n_2\,
      CO(0) => \x2_count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => x2_count_reg(23 downto 20),
      O(3) => \x2_count_reg[20]_i_1_n_4\,
      O(2) => \x2_count_reg[20]_i_1_n_5\,
      O(1) => \x2_count_reg[20]_i_1_n_6\,
      O(0) => \x2_count_reg[20]_i_1_n_7\,
      S(3) => \x2_count[20]_i_2_n_0\,
      S(2) => \x2_count[20]_i_3_n_0\,
      S(1) => \x2_count[20]_i_4_n_0\,
      S(0) => \x2_count[20]_i_5_n_0\
    );
\x2_count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[20]_i_1_n_6\,
      Q => x2_count_reg(21),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[20]_i_1_n_5\,
      Q => x2_count_reg(22),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[20]_i_1_n_4\,
      Q => x2_count_reg(23),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[24]_i_1_n_7\,
      Q => x2_count_reg(24),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x2_count_reg[20]_i_1_n_0\,
      CO(3) => \x2_count_reg[24]_i_1_n_0\,
      CO(2) => \x2_count_reg[24]_i_1_n_1\,
      CO(1) => \x2_count_reg[24]_i_1_n_2\,
      CO(0) => \x2_count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => x2_count_reg(27 downto 24),
      O(3) => \x2_count_reg[24]_i_1_n_4\,
      O(2) => \x2_count_reg[24]_i_1_n_5\,
      O(1) => \x2_count_reg[24]_i_1_n_6\,
      O(0) => \x2_count_reg[24]_i_1_n_7\,
      S(3) => \x2_count[24]_i_2_n_0\,
      S(2) => \x2_count[24]_i_3_n_0\,
      S(1) => \x2_count[24]_i_4_n_0\,
      S(0) => \x2_count[24]_i_5_n_0\
    );
\x2_count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[24]_i_1_n_6\,
      Q => x2_count_reg(25),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[24]_i_1_n_5\,
      Q => x2_count_reg(26),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[24]_i_1_n_4\,
      Q => x2_count_reg(27),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[28]_i_1_n_7\,
      Q => x2_count_reg(28),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x2_count_reg[24]_i_1_n_0\,
      CO(3) => \NLW_x2_count_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \x2_count_reg[28]_i_1_n_1\,
      CO(1) => \x2_count_reg[28]_i_1_n_2\,
      CO(0) => \x2_count_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => x2_count_reg(30 downto 28),
      O(3) => \x2_count_reg[28]_i_1_n_4\,
      O(2) => \x2_count_reg[28]_i_1_n_5\,
      O(1) => \x2_count_reg[28]_i_1_n_6\,
      O(0) => \x2_count_reg[28]_i_1_n_7\,
      S(3) => \x2_count[28]_i_2_n_0\,
      S(2) => \x2_count[28]_i_3_n_0\,
      S(1) => \x2_count[28]_i_4_n_0\,
      S(0) => \x2_count[28]_i_5_n_0\
    );
\x2_count_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[28]_i_1_n_6\,
      Q => x2_count_reg(29),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[0]_i_2_n_5\,
      Q => x2_count_reg(2),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[28]_i_1_n_5\,
      Q => x2_count_reg(30),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[28]_i_1_n_4\,
      Q => x2_count_reg(31),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[0]_i_2_n_4\,
      Q => x2_count_reg(3),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[4]_i_1_n_7\,
      Q => x2_count_reg(4),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x2_count_reg[0]_i_2_n_0\,
      CO(3) => \x2_count_reg[4]_i_1_n_0\,
      CO(2) => \x2_count_reg[4]_i_1_n_1\,
      CO(1) => \x2_count_reg[4]_i_1_n_2\,
      CO(0) => \x2_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => x2_count_reg(7 downto 4),
      O(3) => \x2_count_reg[4]_i_1_n_4\,
      O(2) => \x2_count_reg[4]_i_1_n_5\,
      O(1) => \x2_count_reg[4]_i_1_n_6\,
      O(0) => \x2_count_reg[4]_i_1_n_7\,
      S(3) => \x2_count[4]_i_2_n_0\,
      S(2) => \x2_count[4]_i_3_n_0\,
      S(1) => \x2_count[4]_i_4_n_0\,
      S(0) => \x2_count[4]_i_5_n_0\
    );
\x2_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[4]_i_1_n_6\,
      Q => x2_count_reg(5),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[4]_i_1_n_5\,
      Q => x2_count_reg(6),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[4]_i_1_n_4\,
      Q => x2_count_reg(7),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[8]_i_1_n_7\,
      Q => x2_count_reg(8),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x2_count_reg[4]_i_1_n_0\,
      CO(3) => \x2_count_reg[8]_i_1_n_0\,
      CO(2) => \x2_count_reg[8]_i_1_n_1\,
      CO(1) => \x2_count_reg[8]_i_1_n_2\,
      CO(0) => \x2_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => x2_count_reg(11 downto 8),
      O(3) => \x2_count_reg[8]_i_1_n_4\,
      O(2) => \x2_count_reg[8]_i_1_n_5\,
      O(1) => \x2_count_reg[8]_i_1_n_6\,
      O(0) => \x2_count_reg[8]_i_1_n_7\,
      S(3) => \x2_count[8]_i_2_n_0\,
      S(2) => \x2_count[8]_i_3_n_0\,
      S(1) => \x2_count[8]_i_4_n_0\,
      S(0) => \x2_count[8]_i_5_n_0\
    );
\x2_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x2_count[0]_i_1_n_0\,
      D => \x2_count_reg[8]_i_1_n_6\,
      Q => x2_count_reg(9),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_state_p_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => x2_state(0),
      Q => x2_state_p(0),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_state_p_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => x2_state(1),
      Q => x2_state_p(1),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => x2_a_sync(1),
      Q => x2_state(0),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\x2_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => x2_b_sync(1),
      Q => x2_state(1),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_a_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => enc_y_a,
      Q => y_a_sync(0),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_a_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => y_a_sync(0),
      Q => y_a_sync(1),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_b_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => enc_y_b,
      Q => y_b_sync(0),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_b_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => y_b_sync(0),
      Q => y_b_sync(1),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => y_state(1),
      I1 => y_state(0),
      I2 => y_state_p(1),
      I3 => y_state_p(0),
      O => \y_count[0]_i_1_n_0\
    );
\y_count[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(3),
      O => \y_count[0]_i_3_n_0\
    );
\y_count[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(2),
      O => \y_count[0]_i_4_n_0\
    );
\y_count[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(1),
      O => \y_count[0]_i_5_n_0\
    );
\y_count[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_count_reg(0),
      O => \y_count[0]_i_6_n_0\
    );
\y_count[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(15),
      O => \y_count[12]_i_2_n_0\
    );
\y_count[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(14),
      O => \y_count[12]_i_3_n_0\
    );
\y_count[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(13),
      O => \y_count[12]_i_4_n_0\
    );
\y_count[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(12),
      O => \y_count[12]_i_5_n_0\
    );
\y_count[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(19),
      O => \y_count[16]_i_2_n_0\
    );
\y_count[16]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(18),
      O => \y_count[16]_i_3_n_0\
    );
\y_count[16]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(17),
      O => \y_count[16]_i_4_n_0\
    );
\y_count[16]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(16),
      O => \y_count[16]_i_5_n_0\
    );
\y_count[20]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(23),
      O => \y_count[20]_i_2_n_0\
    );
\y_count[20]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(22),
      O => \y_count[20]_i_3_n_0\
    );
\y_count[20]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(21),
      O => \y_count[20]_i_4_n_0\
    );
\y_count[20]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(20),
      O => \y_count[20]_i_5_n_0\
    );
\y_count[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(27),
      O => \y_count[24]_i_2_n_0\
    );
\y_count[24]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(26),
      O => \y_count[24]_i_3_n_0\
    );
\y_count[24]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(25),
      O => \y_count[24]_i_4_n_0\
    );
\y_count[24]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(24),
      O => \y_count[24]_i_5_n_0\
    );
\y_count[28]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(31),
      O => \y_count[28]_i_2_n_0\
    );
\y_count[28]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(30),
      O => \y_count[28]_i_3_n_0\
    );
\y_count[28]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(29),
      O => \y_count[28]_i_4_n_0\
    );
\y_count[28]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(28),
      O => \y_count[28]_i_5_n_0\
    );
\y_count[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(7),
      O => \y_count[4]_i_2_n_0\
    );
\y_count[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(6),
      O => \y_count[4]_i_3_n_0\
    );
\y_count[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(5),
      O => \y_count[4]_i_4_n_0\
    );
\y_count[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(4),
      O => \y_count[4]_i_5_n_0\
    );
\y_count[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(11),
      O => \y_count[8]_i_2_n_0\
    );
\y_count[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(10),
      O => \y_count[8]_i_3_n_0\
    );
\y_count[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(9),
      O => \y_count[8]_i_4_n_0\
    );
\y_count[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y_state_p(0),
      I1 => y_state(1),
      I2 => y_count_reg(8),
      O => \y_count[8]_i_5_n_0\
    );
\y_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[0]_i_2_n_7\,
      Q => y_count_reg(0),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y_count_reg[0]_i_2_n_0\,
      CO(2) => \y_count_reg[0]_i_2_n_1\,
      CO(1) => \y_count_reg[0]_i_2_n_2\,
      CO(0) => \y_count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => y_count_reg(3 downto 1),
      DI(0) => '1',
      O(3) => \y_count_reg[0]_i_2_n_4\,
      O(2) => \y_count_reg[0]_i_2_n_5\,
      O(1) => \y_count_reg[0]_i_2_n_6\,
      O(0) => \y_count_reg[0]_i_2_n_7\,
      S(3) => \y_count[0]_i_3_n_0\,
      S(2) => \y_count[0]_i_4_n_0\,
      S(1) => \y_count[0]_i_5_n_0\,
      S(0) => \y_count[0]_i_6_n_0\
    );
\y_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[8]_i_1_n_5\,
      Q => y_count_reg(10),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[8]_i_1_n_4\,
      Q => y_count_reg(11),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[12]_i_1_n_7\,
      Q => y_count_reg(12),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_count_reg[8]_i_1_n_0\,
      CO(3) => \y_count_reg[12]_i_1_n_0\,
      CO(2) => \y_count_reg[12]_i_1_n_1\,
      CO(1) => \y_count_reg[12]_i_1_n_2\,
      CO(0) => \y_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => y_count_reg(15 downto 12),
      O(3) => \y_count_reg[12]_i_1_n_4\,
      O(2) => \y_count_reg[12]_i_1_n_5\,
      O(1) => \y_count_reg[12]_i_1_n_6\,
      O(0) => \y_count_reg[12]_i_1_n_7\,
      S(3) => \y_count[12]_i_2_n_0\,
      S(2) => \y_count[12]_i_3_n_0\,
      S(1) => \y_count[12]_i_4_n_0\,
      S(0) => \y_count[12]_i_5_n_0\
    );
\y_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[12]_i_1_n_6\,
      Q => y_count_reg(13),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[12]_i_1_n_5\,
      Q => y_count_reg(14),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[12]_i_1_n_4\,
      Q => y_count_reg(15),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[16]_i_1_n_7\,
      Q => y_count_reg(16),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_count_reg[12]_i_1_n_0\,
      CO(3) => \y_count_reg[16]_i_1_n_0\,
      CO(2) => \y_count_reg[16]_i_1_n_1\,
      CO(1) => \y_count_reg[16]_i_1_n_2\,
      CO(0) => \y_count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => y_count_reg(19 downto 16),
      O(3) => \y_count_reg[16]_i_1_n_4\,
      O(2) => \y_count_reg[16]_i_1_n_5\,
      O(1) => \y_count_reg[16]_i_1_n_6\,
      O(0) => \y_count_reg[16]_i_1_n_7\,
      S(3) => \y_count[16]_i_2_n_0\,
      S(2) => \y_count[16]_i_3_n_0\,
      S(1) => \y_count[16]_i_4_n_0\,
      S(0) => \y_count[16]_i_5_n_0\
    );
\y_count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[16]_i_1_n_6\,
      Q => y_count_reg(17),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[16]_i_1_n_5\,
      Q => y_count_reg(18),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[16]_i_1_n_4\,
      Q => y_count_reg(19),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[0]_i_2_n_6\,
      Q => y_count_reg(1),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[20]_i_1_n_7\,
      Q => y_count_reg(20),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_count_reg[16]_i_1_n_0\,
      CO(3) => \y_count_reg[20]_i_1_n_0\,
      CO(2) => \y_count_reg[20]_i_1_n_1\,
      CO(1) => \y_count_reg[20]_i_1_n_2\,
      CO(0) => \y_count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => y_count_reg(23 downto 20),
      O(3) => \y_count_reg[20]_i_1_n_4\,
      O(2) => \y_count_reg[20]_i_1_n_5\,
      O(1) => \y_count_reg[20]_i_1_n_6\,
      O(0) => \y_count_reg[20]_i_1_n_7\,
      S(3) => \y_count[20]_i_2_n_0\,
      S(2) => \y_count[20]_i_3_n_0\,
      S(1) => \y_count[20]_i_4_n_0\,
      S(0) => \y_count[20]_i_5_n_0\
    );
\y_count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[20]_i_1_n_6\,
      Q => y_count_reg(21),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[20]_i_1_n_5\,
      Q => y_count_reg(22),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[20]_i_1_n_4\,
      Q => y_count_reg(23),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[24]_i_1_n_7\,
      Q => y_count_reg(24),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_count_reg[20]_i_1_n_0\,
      CO(3) => \y_count_reg[24]_i_1_n_0\,
      CO(2) => \y_count_reg[24]_i_1_n_1\,
      CO(1) => \y_count_reg[24]_i_1_n_2\,
      CO(0) => \y_count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => y_count_reg(27 downto 24),
      O(3) => \y_count_reg[24]_i_1_n_4\,
      O(2) => \y_count_reg[24]_i_1_n_5\,
      O(1) => \y_count_reg[24]_i_1_n_6\,
      O(0) => \y_count_reg[24]_i_1_n_7\,
      S(3) => \y_count[24]_i_2_n_0\,
      S(2) => \y_count[24]_i_3_n_0\,
      S(1) => \y_count[24]_i_4_n_0\,
      S(0) => \y_count[24]_i_5_n_0\
    );
\y_count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[24]_i_1_n_6\,
      Q => y_count_reg(25),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[24]_i_1_n_5\,
      Q => y_count_reg(26),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[24]_i_1_n_4\,
      Q => y_count_reg(27),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[28]_i_1_n_7\,
      Q => y_count_reg(28),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_count_reg[24]_i_1_n_0\,
      CO(3) => \NLW_y_count_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \y_count_reg[28]_i_1_n_1\,
      CO(1) => \y_count_reg[28]_i_1_n_2\,
      CO(0) => \y_count_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => y_count_reg(30 downto 28),
      O(3) => \y_count_reg[28]_i_1_n_4\,
      O(2) => \y_count_reg[28]_i_1_n_5\,
      O(1) => \y_count_reg[28]_i_1_n_6\,
      O(0) => \y_count_reg[28]_i_1_n_7\,
      S(3) => \y_count[28]_i_2_n_0\,
      S(2) => \y_count[28]_i_3_n_0\,
      S(1) => \y_count[28]_i_4_n_0\,
      S(0) => \y_count[28]_i_5_n_0\
    );
\y_count_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[28]_i_1_n_6\,
      Q => y_count_reg(29),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[0]_i_2_n_5\,
      Q => y_count_reg(2),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[28]_i_1_n_5\,
      Q => y_count_reg(30),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[28]_i_1_n_4\,
      Q => y_count_reg(31),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[0]_i_2_n_4\,
      Q => y_count_reg(3),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[4]_i_1_n_7\,
      Q => y_count_reg(4),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_count_reg[0]_i_2_n_0\,
      CO(3) => \y_count_reg[4]_i_1_n_0\,
      CO(2) => \y_count_reg[4]_i_1_n_1\,
      CO(1) => \y_count_reg[4]_i_1_n_2\,
      CO(0) => \y_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => y_count_reg(7 downto 4),
      O(3) => \y_count_reg[4]_i_1_n_4\,
      O(2) => \y_count_reg[4]_i_1_n_5\,
      O(1) => \y_count_reg[4]_i_1_n_6\,
      O(0) => \y_count_reg[4]_i_1_n_7\,
      S(3) => \y_count[4]_i_2_n_0\,
      S(2) => \y_count[4]_i_3_n_0\,
      S(1) => \y_count[4]_i_4_n_0\,
      S(0) => \y_count[4]_i_5_n_0\
    );
\y_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[4]_i_1_n_6\,
      Q => y_count_reg(5),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[4]_i_1_n_5\,
      Q => y_count_reg(6),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[4]_i_1_n_4\,
      Q => y_count_reg(7),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[8]_i_1_n_7\,
      Q => y_count_reg(8),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_count_reg[4]_i_1_n_0\,
      CO(3) => \y_count_reg[8]_i_1_n_0\,
      CO(2) => \y_count_reg[8]_i_1_n_1\,
      CO(1) => \y_count_reg[8]_i_1_n_2\,
      CO(0) => \y_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => y_count_reg(11 downto 8),
      O(3) => \y_count_reg[8]_i_1_n_4\,
      O(2) => \y_count_reg[8]_i_1_n_5\,
      O(1) => \y_count_reg[8]_i_1_n_6\,
      O(0) => \y_count_reg[8]_i_1_n_7\,
      S(3) => \y_count[8]_i_2_n_0\,
      S(2) => \y_count[8]_i_3_n_0\,
      S(1) => \y_count[8]_i_4_n_0\,
      S(0) => \y_count[8]_i_5_n_0\
    );
\y_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \y_count[0]_i_1_n_0\,
      D => \y_count_reg[8]_i_1_n_6\,
      Q => y_count_reg(9),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_state_p_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => y_state(0),
      Q => y_state_p(0),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_state_p_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => y_state(1),
      Q => y_state_p(1),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => y_a_sync(1),
      Q => y_state(0),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\y_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => y_b_sync(1),
      Q => y_state(1),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_a_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => enc_z_a,
      Q => z_a_sync(0),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_a_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => z_a_sync(0),
      Q => z_a_sync(1),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_b_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => enc_z_b,
      Q => z_b_sync(0),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_b_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => z_b_sync(0),
      Q => z_b_sync(1),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => z_state(1),
      I1 => z_state(0),
      I2 => z_state_p(1),
      I3 => z_state_p(0),
      O => \z_count[0]_i_1_n_0\
    );
\z_count[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(3),
      O => \z_count[0]_i_3_n_0\
    );
\z_count[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(2),
      O => \z_count[0]_i_4_n_0\
    );
\z_count[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(1),
      O => \z_count[0]_i_5_n_0\
    );
\z_count[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => z_count_reg(0),
      O => \z_count[0]_i_6_n_0\
    );
\z_count[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(15),
      O => \z_count[12]_i_2_n_0\
    );
\z_count[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(14),
      O => \z_count[12]_i_3_n_0\
    );
\z_count[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(13),
      O => \z_count[12]_i_4_n_0\
    );
\z_count[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(12),
      O => \z_count[12]_i_5_n_0\
    );
\z_count[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(19),
      O => \z_count[16]_i_2_n_0\
    );
\z_count[16]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(18),
      O => \z_count[16]_i_3_n_0\
    );
\z_count[16]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(17),
      O => \z_count[16]_i_4_n_0\
    );
\z_count[16]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(16),
      O => \z_count[16]_i_5_n_0\
    );
\z_count[20]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(23),
      O => \z_count[20]_i_2_n_0\
    );
\z_count[20]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(22),
      O => \z_count[20]_i_3_n_0\
    );
\z_count[20]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(21),
      O => \z_count[20]_i_4_n_0\
    );
\z_count[20]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(20),
      O => \z_count[20]_i_5_n_0\
    );
\z_count[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(27),
      O => \z_count[24]_i_2_n_0\
    );
\z_count[24]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(26),
      O => \z_count[24]_i_3_n_0\
    );
\z_count[24]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(25),
      O => \z_count[24]_i_4_n_0\
    );
\z_count[24]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(24),
      O => \z_count[24]_i_5_n_0\
    );
\z_count[28]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(31),
      O => \z_count[28]_i_2_n_0\
    );
\z_count[28]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(30),
      O => \z_count[28]_i_3_n_0\
    );
\z_count[28]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(29),
      O => \z_count[28]_i_4_n_0\
    );
\z_count[28]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(28),
      O => \z_count[28]_i_5_n_0\
    );
\z_count[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(7),
      O => \z_count[4]_i_2_n_0\
    );
\z_count[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(6),
      O => \z_count[4]_i_3_n_0\
    );
\z_count[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(5),
      O => \z_count[4]_i_4_n_0\
    );
\z_count[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(4),
      O => \z_count[4]_i_5_n_0\
    );
\z_count[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(11),
      O => \z_count[8]_i_2_n_0\
    );
\z_count[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(10),
      O => \z_count[8]_i_3_n_0\
    );
\z_count[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(9),
      O => \z_count[8]_i_4_n_0\
    );
\z_count[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => z_state_p(0),
      I1 => z_state(1),
      I2 => z_count_reg(8),
      O => \z_count[8]_i_5_n_0\
    );
\z_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[0]_i_2_n_7\,
      Q => z_count_reg(0),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \z_count_reg[0]_i_2_n_0\,
      CO(2) => \z_count_reg[0]_i_2_n_1\,
      CO(1) => \z_count_reg[0]_i_2_n_2\,
      CO(0) => \z_count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => z_count_reg(3 downto 1),
      DI(0) => '1',
      O(3) => \z_count_reg[0]_i_2_n_4\,
      O(2) => \z_count_reg[0]_i_2_n_5\,
      O(1) => \z_count_reg[0]_i_2_n_6\,
      O(0) => \z_count_reg[0]_i_2_n_7\,
      S(3) => \z_count[0]_i_3_n_0\,
      S(2) => \z_count[0]_i_4_n_0\,
      S(1) => \z_count[0]_i_5_n_0\,
      S(0) => \z_count[0]_i_6_n_0\
    );
\z_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[8]_i_1_n_5\,
      Q => z_count_reg(10),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[8]_i_1_n_4\,
      Q => z_count_reg(11),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[12]_i_1_n_7\,
      Q => z_count_reg(12),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \z_count_reg[8]_i_1_n_0\,
      CO(3) => \z_count_reg[12]_i_1_n_0\,
      CO(2) => \z_count_reg[12]_i_1_n_1\,
      CO(1) => \z_count_reg[12]_i_1_n_2\,
      CO(0) => \z_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => z_count_reg(15 downto 12),
      O(3) => \z_count_reg[12]_i_1_n_4\,
      O(2) => \z_count_reg[12]_i_1_n_5\,
      O(1) => \z_count_reg[12]_i_1_n_6\,
      O(0) => \z_count_reg[12]_i_1_n_7\,
      S(3) => \z_count[12]_i_2_n_0\,
      S(2) => \z_count[12]_i_3_n_0\,
      S(1) => \z_count[12]_i_4_n_0\,
      S(0) => \z_count[12]_i_5_n_0\
    );
\z_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[12]_i_1_n_6\,
      Q => z_count_reg(13),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[12]_i_1_n_5\,
      Q => z_count_reg(14),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[12]_i_1_n_4\,
      Q => z_count_reg(15),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[16]_i_1_n_7\,
      Q => z_count_reg(16),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \z_count_reg[12]_i_1_n_0\,
      CO(3) => \z_count_reg[16]_i_1_n_0\,
      CO(2) => \z_count_reg[16]_i_1_n_1\,
      CO(1) => \z_count_reg[16]_i_1_n_2\,
      CO(0) => \z_count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => z_count_reg(19 downto 16),
      O(3) => \z_count_reg[16]_i_1_n_4\,
      O(2) => \z_count_reg[16]_i_1_n_5\,
      O(1) => \z_count_reg[16]_i_1_n_6\,
      O(0) => \z_count_reg[16]_i_1_n_7\,
      S(3) => \z_count[16]_i_2_n_0\,
      S(2) => \z_count[16]_i_3_n_0\,
      S(1) => \z_count[16]_i_4_n_0\,
      S(0) => \z_count[16]_i_5_n_0\
    );
\z_count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[16]_i_1_n_6\,
      Q => z_count_reg(17),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[16]_i_1_n_5\,
      Q => z_count_reg(18),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[16]_i_1_n_4\,
      Q => z_count_reg(19),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[0]_i_2_n_6\,
      Q => z_count_reg(1),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[20]_i_1_n_7\,
      Q => z_count_reg(20),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \z_count_reg[16]_i_1_n_0\,
      CO(3) => \z_count_reg[20]_i_1_n_0\,
      CO(2) => \z_count_reg[20]_i_1_n_1\,
      CO(1) => \z_count_reg[20]_i_1_n_2\,
      CO(0) => \z_count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => z_count_reg(23 downto 20),
      O(3) => \z_count_reg[20]_i_1_n_4\,
      O(2) => \z_count_reg[20]_i_1_n_5\,
      O(1) => \z_count_reg[20]_i_1_n_6\,
      O(0) => \z_count_reg[20]_i_1_n_7\,
      S(3) => \z_count[20]_i_2_n_0\,
      S(2) => \z_count[20]_i_3_n_0\,
      S(1) => \z_count[20]_i_4_n_0\,
      S(0) => \z_count[20]_i_5_n_0\
    );
\z_count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[20]_i_1_n_6\,
      Q => z_count_reg(21),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[20]_i_1_n_5\,
      Q => z_count_reg(22),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[20]_i_1_n_4\,
      Q => z_count_reg(23),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[24]_i_1_n_7\,
      Q => z_count_reg(24),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \z_count_reg[20]_i_1_n_0\,
      CO(3) => \z_count_reg[24]_i_1_n_0\,
      CO(2) => \z_count_reg[24]_i_1_n_1\,
      CO(1) => \z_count_reg[24]_i_1_n_2\,
      CO(0) => \z_count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => z_count_reg(27 downto 24),
      O(3) => \z_count_reg[24]_i_1_n_4\,
      O(2) => \z_count_reg[24]_i_1_n_5\,
      O(1) => \z_count_reg[24]_i_1_n_6\,
      O(0) => \z_count_reg[24]_i_1_n_7\,
      S(3) => \z_count[24]_i_2_n_0\,
      S(2) => \z_count[24]_i_3_n_0\,
      S(1) => \z_count[24]_i_4_n_0\,
      S(0) => \z_count[24]_i_5_n_0\
    );
\z_count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[24]_i_1_n_6\,
      Q => z_count_reg(25),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[24]_i_1_n_5\,
      Q => z_count_reg(26),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[24]_i_1_n_4\,
      Q => z_count_reg(27),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[28]_i_1_n_7\,
      Q => z_count_reg(28),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \z_count_reg[24]_i_1_n_0\,
      CO(3) => \NLW_z_count_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \z_count_reg[28]_i_1_n_1\,
      CO(1) => \z_count_reg[28]_i_1_n_2\,
      CO(0) => \z_count_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => z_count_reg(30 downto 28),
      O(3) => \z_count_reg[28]_i_1_n_4\,
      O(2) => \z_count_reg[28]_i_1_n_5\,
      O(1) => \z_count_reg[28]_i_1_n_6\,
      O(0) => \z_count_reg[28]_i_1_n_7\,
      S(3) => \z_count[28]_i_2_n_0\,
      S(2) => \z_count[28]_i_3_n_0\,
      S(1) => \z_count[28]_i_4_n_0\,
      S(0) => \z_count[28]_i_5_n_0\
    );
\z_count_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[28]_i_1_n_6\,
      Q => z_count_reg(29),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[0]_i_2_n_5\,
      Q => z_count_reg(2),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[28]_i_1_n_5\,
      Q => z_count_reg(30),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[28]_i_1_n_4\,
      Q => z_count_reg(31),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[0]_i_2_n_4\,
      Q => z_count_reg(3),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[4]_i_1_n_7\,
      Q => z_count_reg(4),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \z_count_reg[0]_i_2_n_0\,
      CO(3) => \z_count_reg[4]_i_1_n_0\,
      CO(2) => \z_count_reg[4]_i_1_n_1\,
      CO(1) => \z_count_reg[4]_i_1_n_2\,
      CO(0) => \z_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => z_count_reg(7 downto 4),
      O(3) => \z_count_reg[4]_i_1_n_4\,
      O(2) => \z_count_reg[4]_i_1_n_5\,
      O(1) => \z_count_reg[4]_i_1_n_6\,
      O(0) => \z_count_reg[4]_i_1_n_7\,
      S(3) => \z_count[4]_i_2_n_0\,
      S(2) => \z_count[4]_i_3_n_0\,
      S(1) => \z_count[4]_i_4_n_0\,
      S(0) => \z_count[4]_i_5_n_0\
    );
\z_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[4]_i_1_n_6\,
      Q => z_count_reg(5),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[4]_i_1_n_5\,
      Q => z_count_reg(6),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[4]_i_1_n_4\,
      Q => z_count_reg(7),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[8]_i_1_n_7\,
      Q => z_count_reg(8),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \z_count_reg[4]_i_1_n_0\,
      CO(3) => \z_count_reg[8]_i_1_n_0\,
      CO(2) => \z_count_reg[8]_i_1_n_1\,
      CO(1) => \z_count_reg[8]_i_1_n_2\,
      CO(0) => \z_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => z_count_reg(11 downto 8),
      O(3) => \z_count_reg[8]_i_1_n_4\,
      O(2) => \z_count_reg[8]_i_1_n_5\,
      O(1) => \z_count_reg[8]_i_1_n_6\,
      O(0) => \z_count_reg[8]_i_1_n_7\,
      S(3) => \z_count[8]_i_2_n_0\,
      S(2) => \z_count[8]_i_3_n_0\,
      S(1) => \z_count[8]_i_4_n_0\,
      S(0) => \z_count[8]_i_5_n_0\
    );
\z_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \z_count[0]_i_1_n_0\,
      D => \z_count_reg[8]_i_1_n_6\,
      Q => z_count_reg(9),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_state_p_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => z_state(0),
      Q => z_state_p(0),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_state_p_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => z_state(1),
      Q => z_state_p(1),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => z_a_sync(1),
      Q => z_state(0),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
\z_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => z_b_sync(1),
      Q => z_state(1),
      R => motor_ctrl_slave_lite_v1_0_S00_AXI_inst_n_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    m1_in1 : out STD_LOGIC;
    m1_in2 : out STD_LOGIC;
    m2_in1 : out STD_LOGIC;
    m2_in2 : out STD_LOGIC;
    m3_in1 : out STD_LOGIC;
    m3_in2 : out STD_LOGIC;
    m4_in1 : out STD_LOGIC;
    m4_in2 : out STD_LOGIC;
    enc_x1_a : in STD_LOGIC;
    enc_x1_b : in STD_LOGIC;
    enc_x2_a : in STD_LOGIC;
    enc_x2_b : in STD_LOGIC;
    enc_y_a : in STD_LOGIC;
    enc_y_b : in STD_LOGIC;
    enc_z_a : in STD_LOGIC;
    enc_z_b : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "RISC_V_motor_ctrl_0_0,motor_ctrl,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "motor_ctrl,Vivado 2025.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of s00_axi_aclk : signal is "slave S00_AXI_CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_mode of s00_axi_aresetn : signal is "slave S00_AXI_RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_mode of s00_axi_awaddr : signal is "slave S00_AXI";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_motor_ctrl
     port map (
      axi_arready_reg => s00_axi_arready,
      axi_awready_reg => s00_axi_awready,
      axi_rvalid_reg => s00_axi_rvalid,
      enc_x1_a => enc_x1_a,
      enc_x1_b => enc_x1_b,
      enc_x2_a => enc_x2_a,
      enc_x2_b => enc_x2_b,
      enc_y_a => enc_y_a,
      enc_y_b => enc_y_b,
      enc_z_a => enc_z_a,
      enc_z_b => enc_z_b,
      m1_in1 => m1_in1,
      m1_in2 => m1_in2,
      m2_in1 => m2_in1,
      m2_in2 => m2_in2,
      m3_in1 => m3_in1,
      m3_in2 => m3_in2,
      m4_in1 => m4_in1,
      m4_in2 => m4_in2,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(4 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(4 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
