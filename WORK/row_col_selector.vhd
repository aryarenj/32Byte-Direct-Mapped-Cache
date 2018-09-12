library STD;
library IEEE;
use IEEE.std_logic_1164.all;

entity row_col_selector is
  port ( row : in std_logic_vector(7 downto 0);
    	 col : in std_logic_vector(3 downto 0);
  	 output : out std_logic_vector(31 downto 0));
end row_col_selector;

architecture structural of row_col_selector is

component and2
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    output   : out std_logic);
end component;

for and_rowcol_1 : and2 use entity work.and2(structural);
for and_rowcol_2 : and2 use entity work.and2(structural);
for and_rowcol_3 : and2 use entity work.and2(structural);
for and_rowcol_4 : and2 use entity work.and2(structural);
for and_rowcol_5 : and2 use entity work.and2(structural);
for and_rowcol_6 : and2 use entity work.and2(structural);
for and_rowcol_7 : and2 use entity work.and2(structural);
for and_rowcol_8 : and2 use entity work.and2(structural);
for and_rowcol_9 : and2 use entity work.and2(structural);
for and_rowcol_10: and2 use entity work.and2(structural);
for and_rowcol_11: and2 use entity work.and2(structural);
for and_rowcol_12: and2 use entity work.and2(structural);
for and_rowcol_13: and2 use entity work.and2(structural);
for and_rowcol_14: and2 use entity work.and2(structural);
for and_rowcol_15: and2 use entity work.and2(structural);
for and_rowcol_16: and2 use entity work.and2(structural);
for and_rowcol_17: and2 use entity work.and2(structural);
for and_rowcol_18: and2 use entity work.and2(structural);
for and_rowcol_19: and2 use entity work.and2(structural);
for and_rowcol_20: and2 use entity work.and2(structural);
for and_rowcol_21: and2 use entity work.and2(structural);
for and_rowcol_22: and2 use entity work.and2(structural);
for and_rowcol_23: and2 use entity work.and2(structural);
for and_rowcol_24: and2 use entity work.and2(structural);
for and_rowcol_25: and2 use entity work.and2(structural);
for and_rowcol_26: and2 use entity work.and2(structural);
for and_rowcol_27: and2 use entity work.and2(structural);
for and_rowcol_28: and2 use entity work.and2(structural);
for and_rowcol_29: and2 use entity work.and2(structural);
for and_rowcol_30: and2 use entity work.and2(structural);
for and_rowcol_31: and2 use entity work.and2(structural);
for and_rowcol_32: and2 use entity work.and2(structural);

begin

and_rowcol_1 : and2 port map (row(0), col(0) , output(0));
and_rowcol_2 : and2 port map (row(0), col(1) , output(1));
and_rowcol_3 : and2 port map (row(0), col(2) , output(2));
and_rowcol_4 : and2 port map (row(0), col(3) , output(3));
and_rowcol_5 : and2 port map (row(1), col(0) , output(4));
and_rowcol_6 : and2 port map (row(1), col(1) , output(5));
and_rowcol_7 : and2 port map (row(1), col(2) , output(6));
and_rowcol_8 : and2 port map (row(1), col(3) , output(7));
and_rowcol_9 : and2 port map (row(2), col(0) , output(8));
and_rowcol_10 : and2 port map (row(2), col(1) , output(9));
and_rowcol_11 : and2 port map (row(2), col(2) , output(10));
and_rowcol_12 : and2 port map (row(2), col(3) , output(11));
and_rowcol_13 : and2 port map (row(3), col(0) , output(12));
and_rowcol_14 : and2 port map (row(3), col(1) , output(13));
and_rowcol_15 : and2 port map (row(3), col(2) , output(14));
and_rowcol_16 : and2 port map (row(3), col(3) , output(15));

and_rowcol_17 : and2 port map (row(4), col(0) , output(16));
and_rowcol_18 : and2 port map (row(4), col(1) , output(17));
and_rowcol_19 : and2 port map (row(4), col(2) , output(18));
and_rowcol_20 : and2 port map (row(4), col(3) , output(19));
and_rowcol_21 : and2 port map (row(5), col(0) , output(20));
and_rowcol_22 : and2 port map (row(5), col(1) , output(21));
and_rowcol_23 : and2 port map (row(5), col(2) , output(22));
and_rowcol_24 : and2 port map (row(5), col(3) , output(23));
and_rowcol_25 : and2 port map (row(6), col(0) , output(24));
and_rowcol_26 : and2 port map (row(6), col(1) , output(25));
and_rowcol_27 : and2 port map (row(6), col(2) , output(26));
and_rowcol_28 : and2 port map (row(6), col(3) , output(27));
and_rowcol_29 : and2 port map (row(7), col(0) , output(28));
and_rowcol_30 : and2 port map (row(7), col(1) , output(29));
and_rowcol_31 : and2 port map (row(7), col(2) , output(30));
and_rowcol_32 : and2 port map (row(7), col(3) , output(31));

end structural;



