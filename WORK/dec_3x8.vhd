library STD;
library IEEE;
use IEEE.std_logic_1164.all;

entity dec_3x8 is 
   port ( a : in std_logic;
	  b : in std_logic;
 	  c : in std_logic;
          d_out : out std_logic_vector(7 downto 0));
end dec_3x8;

architecture structural of dec_3x8 is

component nor3 
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    input3   : in  std_logic;
    output   : out std_logic);
end component;

component inverter 
  port (
    input    : in  std_logic;
    output   : out std_logic);
end component;

signal a_bar, b_bar, c_bar   : std_logic;

begin
-- active low enable
n0 : nor3 port map ( a, b, c , d_out(0));
n1 : nor3 port map ( a, b, c_bar , d_out(1));
n2 : nor3 port map ( a, b_bar, c , d_out(2));
n3 : nor3 port map ( a, b_bar, c_bar , d_out(3));
n4 : nor3 port map ( a_bar, b, c , d_out(4));
n5 : nor3 port map ( a_bar, b, c_bar , d_out(5));
n6 : nor3 port map ( a_bar, b_bar, c , d_out(6));
n7 : nor3 port map ( a_bar, b_bar, c_bar , d_out(7));


i1: inverter port map (a, a_bar);
i2: inverter port map (b, b_bar);
i3: inverter port map (c, c_bar);


end structural;
