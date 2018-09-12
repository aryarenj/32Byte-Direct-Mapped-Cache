
library STD;
library IEEE;
use IEEE.std_logic_1164.all;

entity counter_resets is
    port (counter_out : in std_logic_vector(4 downto 0);
        reset_c_1 : out std_logic;
        reset_c_2: out std_logic;
	reset_c_9: out std_logic;
        reset_c_11: out std_logic;
        reset_c_13 : out std_logic;
	reset_c_15: out std_logic;
	reset_c_18: out std_logic);
   end counter_resets;

architecture structural of counter_resets is

component and2
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    output   : out std_logic);
end component;

component nor2
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    output   : out std_logic);
end component;

component nor3
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    input3   : in  std_logic;
    output   : out std_logic);
end component;

component and3
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    input3   : in  std_logic;
    output   : out std_logic);
end component;

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

component nor4
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    input3   : in  std_logic;
    input4   : in  std_logic;
    output   : out std_logic);
end component;


for g1: nor4 use entity work.nor4(structural);
for g2: and2 use entity work.and2(structural);
for g3: nor4 use entity work.nor4(structural);
for g4: and2 use entity work.and2(structural);
for g7: nor3 use entity work.nor3(structural);
for g8: and3 use entity work.and3(structural);
for g11: nand3 use entity work.nand3(structural);
for g12: nor3 use entity work.nor3(structural);
for g15: nand3 use entity work.nand3(structural);
for g16: nor3 use entity work.nor3(structural);
for g19: nand4 use entity work.nand4(structural);
for g20: nor2 use entity work.nor2(structural);
for g25: nor3 use entity work.nor3(structural);
for g26: and3 use entity work.and3(structural);


signal t1 , t2, t3, t4, t5, t6, t7 ,t8, t9 , t10, t11, t12, t13, t14, t15, t16 : std_logic;

begin

g1 : nor4 port map (counter_out(4) , counter_out(3), counter_out(2) , counter_out(1), t1);
g2 :	and2 port map (t1, counter_out(0), reset_c_1);
	
g3 :  nor4 port map (counter_out(4) , counter_out(3), counter_out(2) , counter_out(0), t2);
g4 :  and2 port map (t2, counter_out(1), reset_c_2);



g7:       nor3 port map (counter_out(4), counter_out(2), counter_out(1) ,t4);
g8:       and3 port map (t4, counter_out(3), counter_out(0) , reset_c_9);



g11:        nand3 port map (counter_out(3), counter_out(1), counter_out(0) ,t5);
g12:        nor3 port map (t5, counter_out(4), counter_out(2) , reset_c_11);



g15:        nand3 port map (counter_out(3), counter_out(2), counter_out(0) ,t6);
g16:        nor3 port map (t6, counter_out(4), counter_out(1) , reset_c_13);


g19:	nand4 port map(counter_out(0) , counter_out(3), counter_out(2) , counter_out(1), t7);
g20:	nor2 port map(t7, counter_out(4), reset_c_15);



g25:    nor3 port map (counter_out(3), counter_out(2), counter_out(0) ,t9);
 g26:   and3 port map (t9, counter_out(4), counter_out(1) , reset_c_18);





end structural;
