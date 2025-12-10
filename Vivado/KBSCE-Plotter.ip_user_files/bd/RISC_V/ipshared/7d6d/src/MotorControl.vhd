library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MotorControl is
  port(
    clk    : in  std_logic;
    resetn : in  std_logic;
    speed  : in  std_logic_vector(7 downto 0); -- 0 = uit, 255 = max
    dir    : in  std_logic;                    -- '0' / '1' richting
    in1    : out std_logic;                    -- naar IN1 L298N
    in2    : out std_logic                     -- naar IN2 L298N
  );
end entity MotorControl;

architecture RTL of MotorControl is

  signal cnt : unsigned(11 downto 0);
  signal pwm : std_logic;

begin

  -- teller voor ~24 kHz PWM bij 100 MHz
  process(clk)
  begin
    if rising_edge(clk) then
      if resetn = '0' then
        cnt <= (others => '0');
      else
        cnt <= cnt + 1;
      end if;
    end if;
  end process;

  pwm <= '1' when cnt(11 downto 4) < unsigned(speed) else '0';

  -- richtingslogica: PWM op één van de IN's
  process(dir, pwm)
  begin
    if dir = '0' then
      in1 <= pwm;
      in2 <= '0';
    else
      in1 <= '0';
      in2 <= pwm;
    end if;
  end process;

end architecture RTL;
