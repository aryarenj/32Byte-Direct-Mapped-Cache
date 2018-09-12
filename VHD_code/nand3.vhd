library STD;
library IEEE;
use IEEE.std_logic_1164.all;

entity nand3 is
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    input3   : in  std_logic;
    output   : out std_logic);
end nand3;

architecture structural of nand3 is
signal temp : std_logic;
begin

  temp <=  input3 and input2 and input1;
  output <= not temp;
end structural;
