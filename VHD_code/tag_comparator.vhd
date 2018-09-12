library STD;
library IEEE;
use IEEE.std_logic_1164.all;

entity tag_comparator is
   port (  tag_in: in std_logic_vector(2 downto 0) ;
	   tag_out: in std_logic_vector(2 downto 0);
	   tag_check : out std_logic);
end tag_comparator;

architecture structural of tag_comparator is


component xor2
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    output   : out std_logic);
end component;

component or3
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    input3   : in  std_logic;
    output   : out std_logic);
end component;

for xor_1 , xor_2, xor_3: xor2 use entity work.xor2(structural);
for or_3 : or3 use entity work.or3(structural);

signal tag_match:  std_logic_vector(22 downto 0) ;

begin
 

     xor_1 : xor2 port map (tag_out(0), tag_in(0) , tag_match(0));
     xor_2 : xor2 port map (tag_out(1), tag_in(1) , tag_match(1));
     xor_3 : xor2 port map (tag_out(2), tag_in(2) , tag_match(2));
     or_3 : or3 port map (tag_match(0) , tag_match(1), tag_match(2) , tag_check);


end structural;
	   
