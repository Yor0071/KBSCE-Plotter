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

        -- AXI slave interface
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

    ----------------------------------------------------------------
    -- Encoder-signalen: synchronisatie + quadrature-tellers
    ----------------------------------------------------------------
    -- X1
    signal x1_a_sync  : std_logic_vector(1 downto 0);
    signal x1_b_sync  : std_logic_vector(1 downto 0);
    signal x1_state   : std_logic_vector(1 downto 0);
    signal x1_state_p : std_logic_vector(1 downto 0);
    signal x1_count   : signed(31 downto 0);

    -- X2
    signal x2_a_sync  : std_logic_vector(1 downto 0);
    signal x2_b_sync  : std_logic_vector(1 downto 0);
    signal x2_state   : std_logic_vector(1 downto 0);
    signal x2_state_p : std_logic_vector(1 downto 0);
    signal x2_count   : signed(31 downto 0);

    -- Y
    signal y_a_sync   : std_logic_vector(1 downto 0);
    signal y_b_sync   : std_logic_vector(1 downto 0);
    signal y_state    : std_logic_vector(1 downto 0);
    signal y_state_p  : std_logic_vector(1 downto 0);
    signal y_count    : signed(31 downto 0);

    -- Z
    signal z_a_sync   : std_logic_vector(1 downto 0);
    signal z_b_sync   : std_logic_vector(1 downto 0);
    signal z_state    : std_logic_vector(1 downto 0);
    signal z_state_p  : std_logic_vector(1 downto 0);
    signal z_count    : signed(31 downto 0);

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

    ----------------------------------------------------------------
    -- Encoder X1: synchronisatie + quadrature teller
    ----------------------------------------------------------------
    process (s00_axi_aclk)
    begin
        if rising_edge(s00_axi_aclk) then
            if s00_axi_aresetn = '0' then
                x1_a_sync <= (others => '0');
                x1_b_sync <= (others => '0');
            else
                x1_a_sync <= x1_a_sync(0) & enc_x1_a;
                x1_b_sync <= x1_b_sync(0) & enc_x1_b;
            end if;
        end if;
    end process;

    process (s00_axi_aclk)
        variable trans : std_logic_vector(3 downto 0);
    begin
        if rising_edge(s00_axi_aclk) then
            if s00_axi_aresetn = '0' then
                x1_state   <= (others => '0');
                x1_state_p <= (others => '0');
                x1_count   <= (others => '0');
            else
                x1_state_p <= x1_state;
                x1_state   <= x1_b_sync(1) & x1_a_sync(1);  -- B=MSB, A=LSB

                trans := x1_state_p & x1_state;

                case trans is
                    -- vooruit
                    when "0001" | "0111" | "1110" | "1000" =>
                        x1_count <= x1_count + 1;
                    -- achteruit
                    when "0010" | "0100" | "1101" | "1011" =>
                        x1_count <= x1_count - 1;
                    when others =>
                        null;
                end case;
            end if;
        end if;
    end process;

    reg_x1_pos <= std_logic_vector(x1_count);

    ----------------------------------------------------------------
    -- Encoder X2
    ----------------------------------------------------------------
    process (s00_axi_aclk)
    begin
        if rising_edge(s00_axi_aclk) then
            if s00_axi_aresetn = '0' then
                x2_a_sync <= (others => '0');
                x2_b_sync <= (others => '0');
            else
                x2_a_sync <= x2_a_sync(0) & enc_x2_a;
                x2_b_sync <= x2_b_sync(0) & enc_x2_b;
            end if;
        end if;
    end process;

    process (s00_axi_aclk)
        variable trans : std_logic_vector(3 downto 0);
    begin
        if rising_edge(s00_axi_aclk) then
            if s00_axi_aresetn = '0' then
                x2_state   <= (others => '0');
                x2_state_p <= (others => '0');
                x2_count   <= (others => '0');
            else
                x2_state_p <= x2_state;
                x2_state   <= x2_b_sync(1) & x2_a_sync(1);

                trans := x2_state_p & x2_state;

                case trans is
                    when "0001" | "0111" | "1110" | "1000" =>
                        x2_count <= x2_count + 1;
                    when "0010" | "0100" | "1101" | "1011" =>
                        x2_count <= x2_count - 1;
                    when others =>
                        null;
                end case;
            end if;
        end if;
    end process;

    reg_x2_pos <= std_logic_vector(x2_count);

    ----------------------------------------------------------------
    -- Encoder Y
    ----------------------------------------------------------------
    process (s00_axi_aclk)
    begin
        if rising_edge(s00_axi_aclk) then
            if s00_axi_aresetn = '0' then
                y_a_sync <= (others => '0');
                y_b_sync <= (others => '0');
            else
                y_a_sync <= y_a_sync(0) & enc_y_a;
                y_b_sync <= y_b_sync(0) & enc_y_b;
            end if;
        end if;
    end process;

    process (s00_axi_aclk)
        variable trans : std_logic_vector(3 downto 0);
    begin
        if rising_edge(s00_axi_aclk) then
            if s00_axi_aresetn = '0' then
                y_state   <= (others => '0');
                y_state_p <= (others => '0');
                y_count   <= (others => '0');
            else
                y_state_p <= y_state;
                y_state   <= y_b_sync(1) & y_a_sync(1);

                trans := y_state_p & y_state;

                case trans is
                    when "0001" | "0111" | "1110" | "1000" =>
                        y_count <= y_count + 1;
                    when "0010" | "0100" | "1101" | "1011" =>
                        y_count <= y_count - 1;
                    when others =>
                        null;
                end case;
            end if;
        end if;
    end process;

    reg_y_pos <= std_logic_vector(y_count);

    ----------------------------------------------------------------
    -- Encoder Z
    ----------------------------------------------------------------
    process (s00_axi_aclk)
    begin
        if rising_edge(s00_axi_aclk) then
            if s00_axi_aresetn = '0' then
                z_a_sync <= (others => '0');
                z_b_sync <= (others => '0');
            else
                z_a_sync <= z_a_sync(0) & enc_z_a;
                z_b_sync <= z_b_sync(0) & enc_z_b;
            end if;
        end if;
    end process;

    process (s00_axi_aclk)
        variable trans : std_logic_vector(3 downto 0);
    begin
        if rising_edge(s00_axi_aclk) then
            if s00_axi_aresetn = '0' then
                z_state   <= (others => '0');
                z_state_p <= (others => '0');
                z_count   <= (others => '0');
            else
                z_state_p <= z_state;
                z_state   <= z_b_sync(1) & z_a_sync(1);

                trans := z_state_p & z_state;

                case trans is
                    when "0001" | "0111" | "1110" | "1000" =>
                        z_count <= z_count + 1;
                    when "0010" | "0100" | "1101" | "1011" =>
                        z_count <= z_count - 1;
                    when others =>
                        null;
                end case;
            end if;
        end if;
    end process;

    reg_z_pos <= std_logic_vector(z_count);

end arch_imp;
