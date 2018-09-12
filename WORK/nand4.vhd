library STD;
library IEEE;
use IEEE.std_logic_1164.all;

entity nand4 is
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    input3   : in  std_logic;
    input4   : in  std_logic;
    output   : out std_logic);
end nand4;

architecture structural of nand4 is

component or2 
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    output   : out std_logic);
end component;	
	
component nand2
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    output   : out std_logic);
end component;

signal t1, t2: std_logic;

for n1: nand2 use entity work.nand2(structural);
for n2: nand2 use entity work.nand2(structural);
for or11: or2 use entity work.or2(structural);

begin
n1: nand2 port map (input1, input2, t1);
n2: nand2 port map (input3, input4, t2); 
or11 :or2 port map (t1, t2, output);
end structural;
