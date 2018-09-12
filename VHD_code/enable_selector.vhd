library STD;
library IEEE;
use IEEE.std_logic_1164.all;

entity enable_selector is
  port ( row : in std_logic_vector(7 downto 0);
         rowcolsel : in std_logic_vector(31 downto 0);
         busy : in std_logic;
	 Vdd  : in  std_logic;
	 reset : in std_logic ;
	 common_write : in std_logic;
	 common_read : in std_logic;	 
	 valid_write_en : in std_logic;
	 read_tag_valid_en : out std_logic_vector(7 downto 0);
	 write_tag_en : out std_logic_vector(7 downto 0);
	 read_data_en : out std_logic_vector(31 downto 0);
         write_data_en : out std_logic_vector(31 downto 0);
         write_valid_en : out std_logic_vector(7 downto 0));
end enable_selector;

architecture structural of enable_selector is


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

for read_data_en_1 : and2 use entity work.and2(structural);
for read_data_en_2 : and2 use entity work.and2(structural);
for read_data_en_3 : and2 use entity work.and2(structural);
for read_data_en_4 : and2 use entity work.and2(structural);
for read_data_en_5 : and2 use entity work.and2(structural);
for read_data_en_6 : and2 use entity work.and2(structural);
for read_data_en_7 : and2 use entity work.and2(structural);
for read_data_en_8 : and2 use entity work.and2(structural);
for read_data_en_9 : and2 use entity work.and2(structural);
for read_data_en_10: and2 use entity work.and2(structural);
for read_data_en_11: and2 use entity work.and2(structural);
for read_data_en_12: and2 use entity work.and2(structural);
for read_data_en_13: and2 use entity work.and2(structural);
for read_data_en_14: and2 use entity work.and2(structural);
for read_data_en_15: and2 use entity work.and2(structural);
for read_data_en_16: and2 use entity work.and2(structural);
for read_data_en_17: and2 use entity work.and2(structural);
for read_data_en_18: and2 use entity work.and2(structural);
for read_data_en_19: and2 use entity work.and2(structural);
for read_data_en_20: and2 use entity work.and2(structural);
for read_data_en_21: and2 use entity work.and2(structural);
for read_data_en_22: and2 use entity work.and2(structural);
for read_data_en_23: and2 use entity work.and2(structural);
for read_data_en_24: and2 use entity work.and2(structural);
for read_data_en_25: and2 use entity work.and2(structural);
for read_data_en_26: and2 use entity work.and2(structural);
for read_data_en_27: and2 use entity work.and2(structural);
for read_data_en_28: and2 use entity work.and2(structural);
for read_data_en_29: and2 use entity work.and2(structural);
for read_data_en_30: and2 use entity work.and2(structural);
for read_data_en_31: and2 use entity work.and2(structural);
for read_data_en_32: and2 use entity work.and2(structural);


for write_data_en_1 : and2 use entity work.and2(structural);
for write_data_en_2 : and2 use entity work.and2(structural);
for write_data_en_3 : and2 use entity work.and2(structural);
for write_data_en_4 : and2 use entity work.and2(structural);
for write_data_en_5 : and2 use entity work.and2(structural);
for write_data_en_6 : and2 use entity work.and2(structural);
for write_data_en_7 : and2 use entity work.and2(structural);
for write_data_en_8 : and2 use entity work.and2(structural);
for write_data_en_9 : and2 use entity work.and2(structural);
for write_data_en_10: and2 use entity work.and2(structural);
for write_data_en_11: and2 use entity work.and2(structural);
for write_data_en_12: and2 use entity work.and2(structural);
for write_data_en_13: and2 use entity work.and2(structural);
for write_data_en_14: and2 use entity work.and2(structural);
for write_data_en_15: and2 use entity work.and2(structural);
for write_data_en_16: and2 use entity work.and2(structural);
for write_data_en_17: and2 use entity work.and2(structural);
for write_data_en_18: and2 use entity work.and2(structural);
for write_data_en_19: and2 use entity work.and2(structural);
for write_data_en_20: and2 use entity work.and2(structural);
for write_data_en_21: and2 use entity work.and2(structural);
for write_data_en_22: and2 use entity work.and2(structural);
for write_data_en_23: and2 use entity work.and2(structural);
for write_data_en_24: and2 use entity work.and2(structural);
for write_data_en_25: and2 use entity work.and2(structural);
for write_data_en_26: and2 use entity work.and2(structural);
for write_data_en_27: and2 use entity work.and2(structural);
for write_data_en_28: and2 use entity work.and2(structural);
for write_data_en_29: and2 use entity work.and2(structural);
for write_data_en_30: and2 use entity work.and2(structural);
for write_data_en_31: and2 use entity work.and2(structural);
for write_data_en_32: and2 use entity work.and2(structural);

for write_tag_en_1 : and2 use entity work.and2(structural);
for write_tag_en_2 : and2 use entity work.and2(structural);
for write_tag_en_3 : and2 use entity work.and2(structural);
for write_tag_en_4 : and2 use entity work.and2(structural);
for write_tag_en_5 : and2 use entity work.and2(structural);
for write_tag_en_6 : and2 use entity work.and2(structural);
for write_tag_en_7 : and2 use entity work.and2(structural);
for write_tag_en_8 : and2 use entity work.and2(structural);

for read_tag_valid_en_1 : and2 use entity work.and2(structural);
for read_tag_valid_en_2 : and2 use entity work.and2(structural);
for read_tag_valid_en_3 : and2 use entity work.and2(structural);
for read_tag_valid_en_4 : and2 use entity work.and2(structural);
for read_tag_valid_en_5 : and2 use entity work.and2(structural);
for read_tag_valid_en_6 : and2 use entity work.and2(structural);
for read_tag_valid_en_7 : and2 use entity work.and2(structural);
for read_tag_valid_en_8 : and2 use entity work.and2(structural);


signal sig : std_logic_vector(7 downto 0);

begin

	read_data_en_1 : and2 port map (rowcolsel(0), common_read, read_data_en(0));
	read_data_en_2 : and2 port map (rowcolsel(1), common_read, read_data_en(1));
	read_data_en_3 : and2 port map (rowcolsel(2), common_read, read_data_en(2));
	read_data_en_4 : and2 port map (rowcolsel(3), common_read , read_data_en(3));
	read_data_en_5 : and2 port map (rowcolsel(4), common_read , read_data_en(4));
	read_data_en_6 : and2 port map (rowcolsel(5), common_read , read_data_en(5));
	read_data_en_7 : and2 port map (rowcolsel(6), common_read , read_data_en(6));
	read_data_en_8 : and2 port map (rowcolsel(7), common_read , read_data_en(7));
	read_data_en_9 : and2 port map (rowcolsel(8), common_read , read_data_en(8));
	read_data_en_10 : and2 port map (rowcolsel(9), common_read , read_data_en(9));
	read_data_en_11 : and2 port map (rowcolsel(10), common_read , read_data_en(10));
	read_data_en_12 : and2 port map (rowcolsel(11), common_read , read_data_en(11));
	read_data_en_13 : and2 port map (rowcolsel(12), common_read, read_data_en(12));
	read_data_en_14 : and2 port map (rowcolsel(13), common_read , read_data_en(13));
	read_data_en_15 : and2 port map (rowcolsel(14), common_read , read_data_en(14));
	read_data_en_16 : and2 port map (rowcolsel(15), common_read , read_data_en(15));
	read_data_en_17 : and2 port map (rowcolsel(16), common_read , read_data_en(16));
	read_data_en_18 : and2 port map (rowcolsel(17), common_read , read_data_en(17));
	read_data_en_19 : and2 port map (rowcolsel(18), common_read , read_data_en(18));
	read_data_en_20 : and2 port map (rowcolsel(19), common_read , read_data_en(19));
	read_data_en_21 : and2 port map (rowcolsel(20), common_read , read_data_en(20));
	read_data_en_22 : and2 port map (rowcolsel(21), common_read , read_data_en(21));
	read_data_en_23 : and2 port map (rowcolsel(22), common_read , read_data_en(22));
	read_data_en_24 : and2 port map (rowcolsel(23), common_read , read_data_en(23));
	read_data_en_25 : and2 port map (rowcolsel(24), common_read , read_data_en(24));
	read_data_en_26 : and2 port map (rowcolsel(25), common_read , read_data_en(25));
	read_data_en_27 : and2 port map (rowcolsel(26), common_read , read_data_en(26));
	read_data_en_28 : and2 port map (rowcolsel(27), common_read , read_data_en(27));
	read_data_en_29 : and2 port map (rowcolsel(28), common_read , read_data_en(28));
	read_data_en_30 : and2 port map (rowcolsel(29), common_read , read_data_en(29));
	read_data_en_31 : and2 port map (rowcolsel(30), common_read , read_data_en(30));
	read_data_en_32 : and2 port map (rowcolsel(31), common_read , read_data_en(31));
	
	write_data_en_1 : and2 port map (rowcolsel(0), common_write, write_data_en(0));
	write_data_en_2 : and2 port map (rowcolsel(1), common_write, write_data_en(1));
	write_data_en_3 : and2 port map (rowcolsel(2), common_write, write_data_en(2));
	write_data_en_4 : and2 port map (rowcolsel(3), common_write , write_data_en(3));
	write_data_en_5 : and2 port map (rowcolsel(4), common_write , write_data_en(4));
	write_data_en_6 : and2 port map (rowcolsel(5), common_write , write_data_en(5));
	write_data_en_7 : and2 port map (rowcolsel(6), common_write , write_data_en(6));
	write_data_en_8 : and2 port map (rowcolsel(7), common_write , write_data_en(7));
	write_data_en_9 : and2 port map (rowcolsel(8), common_write , write_data_en(8));
	write_data_en_10 : and2 port map (rowcolsel(9), common_write , write_data_en(9));
	write_data_en_11 : and2 port map (rowcolsel(10), common_write , write_data_en(10));
	write_data_en_12 : and2 port map (rowcolsel(11), common_write , write_data_en(11));
	write_data_en_13 : and2 port map (rowcolsel(12), common_write, write_data_en(12));
	write_data_en_14 : and2 port map (rowcolsel(13), common_write , write_data_en(13));
	write_data_en_15 : and2 port map (rowcolsel(14), common_write , write_data_en(14));
	write_data_en_16 : and2 port map (rowcolsel(15), common_write , write_data_en(15));
	write_data_en_17 : and2 port map (rowcolsel(16), common_write , write_data_en(16));
	write_data_en_18 : and2 port map (rowcolsel(17), common_write , write_data_en(17));
	write_data_en_19 : and2 port map (rowcolsel(18), common_write , write_data_en(18));
	write_data_en_20 : and2 port map (rowcolsel(19), common_write , write_data_en(19));
	write_data_en_21 : and2 port map (rowcolsel(20), common_write , write_data_en(20));
	write_data_en_22 : and2 port map (rowcolsel(21), common_write , write_data_en(21));
	write_data_en_23 : and2 port map (rowcolsel(22), common_write , write_data_en(22));
	write_data_en_24 : and2 port map (rowcolsel(23), common_write , write_data_en(23));
	write_data_en_25 : and2 port map (rowcolsel(24), common_write , write_data_en(24));
	write_data_en_26 : and2 port map (rowcolsel(25), common_write , write_data_en(25));
	write_data_en_27 : and2 port map (rowcolsel(26), common_write , write_data_en(26));
	write_data_en_28 : and2 port map (rowcolsel(27), common_write , write_data_en(27));
	write_data_en_29 : and2 port map (rowcolsel(28), common_write , write_data_en(28));
	write_data_en_30 : and2 port map (rowcolsel(29), common_write , write_data_en(29));
	write_data_en_31 : and2 port map (rowcolsel(30), common_write , write_data_en(30));
	write_data_en_32 : and2 port map (rowcolsel(31), common_write , write_data_en(31));
	
	read_tag_valid_en_1 : and2 port map (row(0), Vdd , read_tag_valid_en(0));
	read_tag_valid_en_2 : and2 port map (row(1), Vdd , read_tag_valid_en(1));
	read_tag_valid_en_3 : and2 port map (row(2), Vdd , read_tag_valid_en(2));
	read_tag_valid_en_4 : and2 port map (row(3), Vdd  , read_tag_valid_en(3));
	read_tag_valid_en_5 : and2 port map (row(4), Vdd , read_tag_valid_en(4));
	read_tag_valid_en_6 : and2 port map (row(5), Vdd , read_tag_valid_en(5));
	read_tag_valid_en_7 : and2 port map (row(6), Vdd , read_tag_valid_en(6));
	read_tag_valid_en_8 : and2 port map (row(7), Vdd , read_tag_valid_en(7));
	
	
	write_tag_en_1 : and2 port map (row(0), valid_write_en , sig(0));
	write_tag_en_2 : and2 port map (row(1), valid_write_en, sig(1));
	write_tag_en_3 : and2 port map (row(2), valid_write_en, sig(2));
	write_tag_en_4 : and2 port map (row(3), valid_write_en , sig(3));
	write_tag_en_5 : and2 port map (row(4), valid_write_en , sig(4));
	write_tag_en_6 : and2 port map (row(5), valid_write_en , sig(5));
	write_tag_en_7 : and2 port map (row(6), valid_write_en , sig(6));
	write_tag_en_8 : and2 port map (row(7), valid_write_en , sig(7));
	
	write_tag_en <= sig;
	
	write_valid_en_1 : or2 port map (sig(0), reset , write_valid_en(0));
	write_valid_en_2 : or2 port map (sig(1), reset, write_valid_en(1));
	write_valid_en_3 : or2 port map (sig(2), reset, write_valid_en(2));
	write_valid_en_4 : or2 port map (sig(3), reset , write_valid_en(3));
	write_valid_en_5 : or2 port map (sig(4), reset , write_valid_en(4));
	write_valid_en_6 : or2 port map (sig(5), reset , write_valid_en(5));
	write_valid_en_7 : or2 port map (sig(6), reset , write_valid_en(6));
	write_valid_en_8 : or2 port map (sig(7), reset , write_valid_en(7));




end structural;
