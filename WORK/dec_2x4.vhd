library STD;
library IEEE;
use IEEE.std_logic_1164.all;

entity dec_2x4 is 
   port ( a : in std_logic;
	  b : in std_logic;
          d_out : out std_logic_vector(3 downto 0));
end dec_2x4;

architecture structural of dec_2x4 is

component nor2 
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    output   : out std_logic);
end component;

component inverter 
  port (
    input    : in  std_logic;
    output   : out std_logic);
end component;

signal a_bar, b_bar   : std_logic;

begin
-- active low enable
n0 : nor2 port map ( a, b,  d_out(0));
n1 : nor2 port map ( a, b_bar , d_out(1));
n2 : nor2 port map ( a_bar, b , d_out(2));
n3 : nor2 port map ( a_bar, b_bar , d_out(3));


i1: inverter port map (a, a_bar);
i2: inverter port map (b, b_bar);


end structural;
