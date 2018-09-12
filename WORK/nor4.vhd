library STD;
library IEEE;
use IEEE.std_logic_1164.all;

entity nor4 is
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    input3   : in  std_logic;
    input4   : in  std_logic;
    output   : out std_logic);
end nor4;

architecture structural of nor4 is

component and2
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    output   : out std_logic);
end component;	
	
component nor2
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    output   : out std_logic);
end component;

signal t1, t2: std_logic;

for n1: nor2 use entity work.nor2(structural);
for n2: nor2 use entity work.nor2(structural);
for and11: and2 use entity work.and2(structural);

begin
n1: nor2 port map (input1, input2, t1);
n2: nor2 port map (input3, input4, t2); 
and11 :and2 port map (t1, t2, output);
end structural;
