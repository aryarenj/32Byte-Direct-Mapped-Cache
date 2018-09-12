-- Entity: dff
-- Architecture : structural
-- Author: arya
--

library STD;
library IEEE;                      
use IEEE.std_logic_1164.all;       

entity dff is                      
  port ( d   : in  std_logic;
         clk : in  std_logic;
         reset : in std_logic;
	 q   : out std_logic;
	 qbar : out std_logic);
end dff;                          

architecture structural of dff is 

  
begin

process(clk,reset)
  begin
	if (reset='1') then
		q<='0';
		qbar <= '1';
	elsif (clk'event and clk='0') then
		q<=d;
		qbar <= not d;
	end if;
end process;  


                             
end structural;  
