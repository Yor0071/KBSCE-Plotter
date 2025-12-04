library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity motor_ctrl is
    generic (
        -- Parameters of Axi Slave Bus Interface S00_AXI
        C_S00_AXI_DATA_WIDTH : integer := 32;
        C_S00_AXI_ADDR_WIDTH : integer := 5
    );
    port (
        -- Users to add ports here

        -- Motor outputs (naar L298N)
        m1_in1 : out std_logic;
        m1_in2 : out std_logic;
        m2_in1 : out std_logic;
        m2_in2 : out std_logic;
        m3_in1 : out std_logic;
        m3_in2 : out std_logic;
        m4_in1 : out std_logic;
        m4_in2 : out std_logic;

        -- Encoder inputs (quadrature A/B)
        enc_x1_a : in std_logic;
        enc_x1_b : in std_logic;
        enc_x2_a : in std_logic;
        enc_x2_b : in std_logic;
        enc_y_a  : in std_logic;
        enc_y_b  : in std_logic;
        enc_z_a  : in std_logic;
        enc_z_b  : in std_logic;

        -- User ports ends
        -- Do not modify the ports beyond this line

        -- Ports of Axi Slave Bus Interface S00_AXI
        s00_axi_aclk    : in std_logic;
        s00_axi_aresetn : in std_logic;
        s00_axi_awaddr  : in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
        s00_axi_awprot  : in std_logic_vector(2 downto 0);
        s00_axi_awvalid : in std_logic;
        s00_axi_awready : out std_logic;
        s00_axi_wdata   : in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        s00_axi_wstrb   : in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
        s00_axi_wvalid  : in std_logic;
        s00_axi_wready  : out std_logic;
        s00_axi_bresp   : out std_logic_vector(1 downto 0);
        s00_axi_bvalid  : out std_logic;
        s00_axi_bready  : in std_logic;
        s00_axi_araddr  : in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
        s00_axi_arprot  : in std_logic_vector(2 downto 0);
        s00_axi_arvalid : in std_logic;
        s00_axi_arready : out std_logic;
        s00_axi_rdata   : out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        s00_axi_rresp   : out std_logic_vector(1 downto 0);
        s00_axi_rvalid  : out std_logic;
        s00_axi_rready  : in std_logic
    );
end motor_ctrl;

architecture arch_imp of motor_ctrl is

    ----------------------------------------------------------------
    -- verbinding tussen AXI-slave en user logic
    ----------------------------------------------------------------
    signal reg_x1_ctrl : std_logic_vector(31 downto 0);
    signal reg_x2_ctrl : std_logic_vector(31 downto 0);
    signal reg_y_ctrl  : std_logic_vector(31 downto 0);
    signal reg_z_ctrl  : std_logic_vector(31 downto 0);

    signal reg_x1_pos  : std_logic_vector(31 downto 0);
    signal reg_x2_pos  : std_logic_vector(31 downto 0);
    signal reg_y_pos   : std_logic_vector(31 downto 0);
    signal reg_z_pos   : std_logic_vector(31 downto 0);

    ----------------------------------------------------------------
    -- component declaraties
    ----------------------------------------------------------------
    component motor_ctrl_slave_lite_v1_0_S00_AXI is
        generic (
            C_S_AXI_DATA_WIDTH : integer := 32;
            C_S_AXI_ADDR_WIDTH : integer := 5
        );
        port (
            -- user poorten
            reg_x1_ctrl : out std_logic_vector(31 downto 0);
            reg_x2_ctrl : out std_logic_vector(31 downto 0);
            reg_y_ctrl  : out std_logic_vector(31 downto 0);
            reg_z_ctrl  : out std_logic_vector(31 downto 0);

            reg_x1_pos  : in  std_logic_vector(31 downto 0);
            reg_x2_pos  : in  std_logic_vector(31 downto 0);
            reg_y_pos   : in  std_logic_vector(31 downto 0);
            reg_z_pos   : in  std_logic_vector(31 downto 0);

            -- AXI poorten
            S_AXI_ACLK    : in std_logic;
            S_AXI_ARESETN : in std_logic;
            S_AXI_AWADDR  : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
            S_AXI_AWPROT  : in std_logic_vector(2 downto 0);
            S_AXI_AWVALID : in std_logic;
            S_AXI_AWREADY : out std_logic;
            S_AXI_WDATA   : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
            S_AXI_WSTRB   : in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
            S_AXI_WVALID  : in std_logic;
            S_AXI_WREADY  : out std_logic;
            S_AXI_BRESP   : out std_logic_vector(1 downto 0);
            S_AXI_BVALID  : out std_logic;
            S_AXI_BREADY  : in std_logic;
            S_AXI_ARADDR  : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
            S_AXI_ARPROT  : in std_logic_vector(2 downto 0);
            S_AXI_ARVALID : in std_logic;
            S_AXI_ARREADY : out std_logic;
            S_AXI_RDATA   : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
            S_AXI_RRESP   : out std_logic_vector(1 downto 0);
            S_AXI_RVALID  : out std_logic;
            S_AXI_RREADY  : in std_logic
        );
    end component;

    component MotorControl is
        port (
            clk    : in  std_logic;
            resetn : in  std_logic;
            speed  : in  std_logic_vector(7 downto 0);
            dir    : in  std_logic;
            in1    : out std_logic;
            in2    : out std_logic
        );
    end component;

    signal x1_speed, x2_speed, y_speed, z_speed : std_logic_vector(7 downto 0);
    signal x1_dir,   x2_dir,   y_dir,   z_dir   : std_logic;

begin

    ----------------------------------------------------------------
    -- Instantie van AXI-slave
    ----------------------------------------------------------------
    motor_ctrl_slave_lite_v1_0_S00_AXI_inst : motor_ctrl_slave_lite_v1_0_S00_AXI
        generic map (
            C_S_AXI_DATA_WIDTH => C_S00_AXI_DATA_WIDTH,
            C_S_AXI_ADDR_WIDTH => C_S00_AXI_ADDR_WIDTH
        )
        port map (
            reg_x1_ctrl => reg_x1_ctrl,
            reg_x2_ctrl => reg_x2_ctrl,
            reg_y_ctrl  => reg_y_ctrl,
            reg_z_ctrl  => reg_z_ctrl,
            reg_x1_pos  => reg_x1_pos,
            reg_x2_pos  => reg_x2_pos,
            reg_y_pos   => reg_y_pos,
            reg_z_pos   => reg_z_pos,

            S_AXI_ACLK    => s00_axi_aclk,
            S_AXI_ARESETN => s00_axi_aresetn,
            S_AXI_AWADDR  => s00_axi_awaddr,
            S_AXI_AWPROT  => s00_axi_awprot,
            S_AXI_AWVALID => s00_axi_awvalid,
            S_AXI_AWREADY => s00_axi_awready,
            S_AXI_WDATA   => s00_axi_wdata,
            S_AXI_WSTRB   => s00_axi_wstrb,
            S_AXI_WVALID  => s00_axi_wvalid,
            S_AXI_WREADY  => s00_axi_wready,
            S_AXI_BRESP   => s00_axi_bresp,
            S_AXI_BVALID  => s00_axi_bvalid,
            S_AXI_BREADY  => s00_axi_bready,
            S_AXI_ARADDR  => s00_axi_araddr,
            S_AXI_ARPROT  => s00_axi_arprot,
            S_AXI_ARVALID => s00_axi_arvalid,
            S_AXI_ARREADY => s00_axi_arready,
            S_AXI_RDATA   => s00_axi_rdata,
            S_AXI_RRESP   => s00_axi_rresp,
            S_AXI_RVALID  => s00_axi_rvalid,
            S_AXI_RREADY  => s00_axi_rready
        );

    ----------------------------------------------------------------
    -- User logic: motoren aansturen
    ----------------------------------------------------------------

    -- decode control registers naar speed/dir/en
    x1_speed <= reg_x1_ctrl(7 downto 0) when reg_x1_ctrl(9) = '1' else (others => '0');
    x1_dir   <= reg_x1_ctrl(8);

    x2_speed <= reg_x2_ctrl(7 downto 0) when reg_x2_ctrl(9) = '1' else (others => '0');
    x2_dir   <= reg_x2_ctrl(8);

    y_speed  <= reg_y_ctrl(7 downto 0)  when reg_y_ctrl(9)  = '1' else (others => '0');
    y_dir    <= reg_y_ctrl(8);

    z_speed  <= reg_z_ctrl(7 downto 0)  when reg_z_ctrl(9)  = '1' else (others => '0');
    z_dir    <= reg_z_ctrl(8);

    -- Voor nu: encoderposities nog niet geïmplementeerd
    reg_x1_pos <= (others => '0');
    reg_x2_pos <= (others => '0');
    reg_y_pos  <= (others => '0');
    reg_z_pos  <= (others => '0');

    -- Motor 1 (X1)
    u_m1 : MotorControl
        port map (
            clk    => s00_axi_aclk,
            resetn => s00_axi_aresetn,
            speed  => x1_speed,
            dir    => x1_dir,
            in1    => m1_in1,
            in2    => m1_in2
        );

    -- Motor 2 (X2)
    u_m2 : MotorControl
        port map (
            clk    => s00_axi_aclk,
            resetn => s00_axi_aresetn,
            speed  => x2_speed,
            dir    => x2_dir,
            in1    => m2_in1,
            in2    => m2_in2
        );

    -- Motor 3 (Y)
    u_m3 : MotorControl
        port map (
            clk    => s00_axi_aclk,
            resetn => s00_axi_aresetn,
            speed  => y_speed,
            dir    => y_dir,
            in1    => m3_in1,
            in2    => m3_in2
        );

    -- Motor 4 (Z)
    u_m4 : MotorControl
        port map (
            clk    => s00_axi_aclk,
            resetn => s00_axi_aresetn,
            speed  => z_speed,
            dir    => z_dir,
            in1    => m4_in1,
            in2    => m4_in2
        );

end arch_imp;
