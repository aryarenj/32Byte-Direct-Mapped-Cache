library STD;
library IEEE;
use IEEE.std_logic_1164.all;

entity nor3 is
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    input3   : in  std_logic;
    output   : out std_logic);
end nor3;

architecture structural of nor3 is
signal temp : std_logic;
begin

  temp <=  input3 or input2 or input1;
  output <= not temp;
end structural;
