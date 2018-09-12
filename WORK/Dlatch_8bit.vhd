library STD;
library IEEE;
use IEEE.std_logic_1164.all;

entity Dlatch_mem_data_8bit is
   port (  data_in : in std_logic_vector(7 downto 0); 
	   clk : in std_logic;
   	   Gnd : in std_logic;
	   data_out: out std_logic_vector(7 downto 0));
end Dlatch_mem_data_8bit;

architecture structural of Dlatch_mem_data_8bit is

component Dlatch
  port ( d   : in  std_logic;
         clk : in  std_logic;
         q   : out std_logic);
end component;

for Dlatch1 : Dlatch use entity work.Dlatch(structural);
for Dlatch2 : Dlatch use entity work.Dlatch(structural);
for Dlatch3 : Dlatch use entity work.Dlatch(structural);
for Dlatch4 : Dlatch use entity work.Dlatch(structural);
for Dlatch5 : Dlatch use entity work.Dlatch(structural);
for Dlatch6 : Dlatch use entity work.Dlatch(structural);
for Dlatch7 : Dlatch use entity work.Dlatch(structural);
for Dlatch8 : Dlatch use entity work.Dlatch(structural);


begin
Dlatch1 : Dlatch port map ( Gnd, clk ,  data_out(0) );
Dlatch2 : Dlatch port map ( Gnd, clk ,  data_out(1) );
Dlatch3 : Dlatch port map (data_in(2), clk ,  data_out(2) );
Dlatch4 : Dlatch port map (data_in(3), clk ,  data_out(3) );
Dlatch5 : Dlatch port map (data_in(4), clk ,  data_out(4) );
Dlatch6 : Dlatch port map (data_in(5), clk ,  data_out(5) );
Dlatch7 : Dlatch port map (data_in(6), clk ,  data_out(6) );
Dlatch8 : Dlatch port map (data_in(7), clk ,  data_out(7) );


end structural;
	   
