library STD;
library IEEE;
use IEEE.std_logic_1164.all;

entity mux_2x1 is 
   port ( s : in std_logic;
          d0 :in std_logic;
	  d1 :in std_logic;
	  d_out : out std_logic );
end mux_2x1;

architecture structural of mux_2x1 is

component and2 
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    output   : out std_logic);
end component;

component or2
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

signal s_bar, te0, te1 : std_logic;
for n0 : and2 use entity work.and2(structural);
for n1 : and2 use entity work.and2(structural);
for o1 : or2 use entity work.or2(structural);
for i1 : inverter use entity work.inverter(structural);

begin
-- active low enable
n0 : and2 port map ( s_bar,  d0, te0 );
n1 : and2 port map ( s, d1, te1 );

o1 : or2 port map (te0,te1 ,d_out);
i1: inverter port map (s, s_bar);


end structural;
