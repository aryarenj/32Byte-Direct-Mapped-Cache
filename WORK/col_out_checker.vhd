library STD;
library IEEE;
use IEEE.std_logic_1164.all;

entity col_out_checker is
    port (
      reset_c_2  : in  std_logic;
      reset_c_1  : in  std_logic;
      reset_c_18 : in  std_logic;
      reset_c_9_clk : in  std_logic;
      reset_c_11_clk : in  std_logic;
      reset_c_13_clk : in  std_logic;
      reset_c_15_clk : in  std_logic;
      col_act_out: in  std_logic_vector(3 downto 0);
      col_out    : out  std_logic_vector(3 downto 0));
   end col_out_checker;

architecture structural of col_out_checker is

	
component or3
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    input3   : in  std_logic;
    output   : out std_logic);
end component;

component or2
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    output   : out std_logic);
end component;

component and2
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    output   : out std_logic);
end component;


signal t1, t2, t3, t4, t5, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16, t17, t18 : std_logic;
begin
  
or_111 : or3 port map ( reset_c_2, reset_c_1 ,reset_c_18, t1 );

and_112 : and2 port map (t1 ,col_act_out(0) , t2);
or_112 : or2 port map ( t2, reset_c_9_clk,  col_out(0));


and_122 : and2 port map (t1 ,col_act_out(1) , t3);
or_122 : or2 port map ( t3, reset_c_11_clk, col_out(1));

and_132 : and2 port map (t1 ,col_act_out(2) , t4);
or_132 : or2 port map ( t4, reset_c_13_clk, col_out(2));

and_142 : and2 port map (t1 ,col_act_out(3) , t5);
or_142 : or2 port map ( t5, reset_c_15_clk, col_out(3));



end structural;
