library STD;
library IEEE;
use IEEE.std_logic_1164.all;

entity mux_4x1 is 
   port ( a : in std_logic;
	  b : in std_logic;
          d0 :in std_logic;
	  d1 :in std_logic;
   	  d2 :in std_logic;
 	  d3 :in std_logic;
	  d_out : out std_logic );
end mux_4x1;

architecture structural of mux_4x1 is

component nand3 
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    input3   : in  std_logic;
    output   : out std_logic);
end component;

component nand4
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    input3   : in  std_logic;
    input4   : in  std_logic;
    output   : out std_logic);
end component;

component inverter 
  port (
    input    : in  std_logic;
    output   : out std_logic);
end component;

signal a_bar, b_bar , te0, te1, te2, te3   : std_logic;
for n0 : nand3 use entity work.nand3(structural);
for n1 : nand3 use entity work.nand3(structural);
for n2 : nand3 use entity work.nand3(structural);
for n3 : nand3 use entity work.nand3(structural);
for n4 : nand4 use entity work.nand4(structural);
for i1 : inverter use entity work.inverter(structural);
for i2 : inverter use entity work.inverter(structural);

begin
-- active low enable
n0 : nand3 port map ( a_bar, b_bar,   d0, te0 );
n1 : nand3 port map ( a_bar, b , d1, te1 );
n2 : nand3 port map ( a, b_bar , d2, te2 );
n3 : nand3 port map ( a, b , d3, te3 );

n4 : nand4 port map (te0, te1, te2, te3 ,d_out);
i1: inverter port map (a, a_bar);
i2: inverter port map (b, b_bar);


end structural;
