library STD;
library IEEE;
use IEEE.std_logic_1164.all;

entity register_8bit is
   port (  clk : in std_logic ;
	   reset : in std_logic ;
 	   data : in std_logic_vector(7 downto 0); 
	   reg_out: out std_logic_vector(7 downto 0));
end register_8bit;

architecture structural of register_8bit is

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
for dff6 : dff use entity work.dff(structural);
for dff7 : dff use entity work.dff(structural);
for dff8 : dff use entity work.dff(structural);

signal qbar_out :  std_logic_vector(7 downto 0) ;

begin
 
dff1 : dff port map (data(0), clk , reset,  reg_out(0), qbar_out(0));
dff2 : dff port map (data(1), clk , reset,  reg_out(1), qbar_out(1));
dff3 : dff port map (data(2), clk , reset,  reg_out(2), qbar_out(2));
dff4 : dff port map (data(3), clk , reset,  reg_out(3), qbar_out(3));
dff5 : dff port map (data(4), clk , reset,  reg_out(4), qbar_out(4));
dff6 : dff port map (data(5), clk , reset,  reg_out(5), qbar_out(5));
dff7 : dff port map (data(6), clk , reset,  reg_out(6), qbar_out(6));
dff8 : dff port map (data(7), clk , reset,  reg_out(7), qbar_out(7));


end structural;
	   
