library STD;
library IEEE;
use IEEE.std_logic_1164.all;

entity counter is
  port (  clk : in std_logic;
	  reset : in std_logic;
	  counter_out : out std_logic_vector(4 downto 0)) ; 
end counter;

architecture structural of counter is

component dff
  port ( d   : in  std_logic;
         clk : in  std_logic;
         reset : in std_logic;
         q  : out std_logic;
         qbar: out std_logic);
end component;

for dff1 : dff use entity work.dff(structural);
for dff2 : dff use entity work.dff(structural);
for dff3 : dff use entity work.dff(structural);
for dff4 : dff use entity work.dff(structural);
for dff5 : dff use entity work.dff(structural);

signal qbar_in : std_logic := '0';
signal q_sig: std_logic_vector(4 downto 0);
signal qbar_sig: std_logic_vector(4 downto 0);
begin 
counter_out <= q_sig;

dff1: dff port map (qbar_sig(0) , clk, reset,  q_sig(0) , qbar_sig(0) );
dff2: dff port map (qbar_sig(1) ,  q_sig(0), reset,  q_sig(1) , qbar_sig(1) );
dff3: dff port map (qbar_sig(2) ,  q_sig(1), reset,  q_sig(2) , qbar_sig(2) );
dff4: dff port map (qbar_sig(3) ,  q_sig(2), reset,  q_sig(3) , qbar_sig(3) );
dff5: dff port map (qbar_sig(4) ,  q_sig(3), reset,  q_sig(4) , qbar_sig(4) );

end structural;

