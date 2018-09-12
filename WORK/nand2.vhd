library STD;
library IEEE;
use IEEE.std_logic_1164.all;

entity nand2 is
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    output   : out std_logic);
end nand2;

architecture structural of nand2 is
signal temp : std_logic;
begin

  temp <=  input2 and input1;
  output <= not temp;
end structural;
