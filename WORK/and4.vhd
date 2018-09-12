library STD;
library IEEE;
use IEEE.std_logic_1164.all;

entity and4 is
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    input3   : in  std_logic;
    input4   : in  std_logic;
    output   : out std_logic);
end and4;

architecture structural of and4 is

component and3
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    input3   : in  std_logic;
    output   : out std_logic);
end component;

component and2
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    output   : out std_logic);
end component;

	
for and3_4_1 : and3 use entity work.and3(structural);
for and2_4_1 : and2 use entity work.and2(structural);

signal temp : std_logic;
begin
 and3_4_1 : and3 port map (input1, input2, input3, temp);
 and2_4_1 : and2 port map (input4, temp, output);

 end structural;

