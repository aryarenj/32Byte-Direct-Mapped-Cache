library STD;
library IEEE;
use IEEE.std_logic_1164.all;

entity chip is
    port (
      cpu_add    : in  std_logic_vector(7 downto 0);
      cpu_data   : inout  std_logic_vector(7 downto 0);
      cpu_rd_wrn : in  std_logic;
      start      : in  std_logic;
      clk        : in  std_logic;
      reset      : in  std_logic;
      mem_data   : in  std_logic_vector(7 downto 0);
      Vdd        : in  std_logic;
      Gnd        : in  std_logic;
      busy       : out std_logic;
      mem_en     : out std_logic;
      mem_add    : out std_logic_vector(7 downto 0));
   end chip;

architecture structural of chip is 

component dff
  port ( d   : in  std_logic;
         clk : in  std_logic;
         reset : in std_logic;
         q  : out std_logic;
         qbar: out std_logic);
end component;


component and2
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    output   : out std_logic);
end component;

component register_8bit
   port (  clk : in std_logic ;
           reset : in std_logic ;
           data : in std_logic_vector(7 downto 0);
           reg_out: out std_logic_vector(7 downto 0));
end component;

component TxGate_8bit
  port ( sel   : in std_logic;
         selnot: in std_logic;
         input : in std_logic_vector(7 downto 0);
         output:out std_logic_vector(7 downto 0));
end component;

component or2
  port (
    input1   : in  std_logic;
    input2   : in  std_logic;
    output   : out std_logic);
end component;

component dec_2x4
   port ( a : in std_logic;
          b : in std_logic;
          d_out : out std_logic_vector(3 downto 0));
end component;

component dec_3x8
   port ( a : in std_logic;
          b : in std_logic;
          c : in std_logic;
          d_out : out std_logic_vector(7 downto 0));
end component;


component cache_1bit
    port ( data_in : in std_logic;
           write_en : in std_logic;
           read_en : in std_logic;
           data_out : out std_logic);
end component;

component inverter
  port (
    input    : in  std_logic;
    output   : out std_logic);
end component;


component tag_comparator
   port (  tag_in: in std_logic_vector(2 downto 0) ;
           tag_out: in std_logic_vector(2 downto 0);
           tag_check : out std_logic);
end component;

component  counter
  port (  clk : in std_logic;
          reset : in std_logic;
          counter_out : out std_logic_vector(4 downto 0)) ;
end component;

component enable_selector
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
end component;

component row_col_selector
  port ( row : in std_logic_vector(7 downto 0);
         col : in std_logic_vector(3 downto 0);
         output : out std_logic_vector(31 downto 0));
end component;

component  cache_32_byte
    port ( data_in : in std_logic_vector(7 downto 0);
           write_data_en : in std_logic_vector(31 downto 0);
           read_data_en : in std_logic_vector(31 downto 0);
           data_out : out std_logic_vector(7 downto 0));
end component;

component cache_byte
    port ( data_in : in std_logic_vector(7 downto 0);
           write_en : in std_logic;
           read_en : in std_logic;
           data_out : out std_logic_vector(7 downto 0));
end component;

component Dlatch 
  port ( d   : in  std_logic;
         clk : in  std_logic;
         q   : out std_logic);
end component;


component Dlatch_mem_data_8bit
   port (  data_in : in std_logic_vector(7 downto 0);
           clk : in std_logic;
           Gnd : in std_logic;
           data_out: out std_logic_vector(7 downto 0));
end component;

component  tag_full_3bit_cache
    port ( tag_in : in std_logic_vector(2 downto 0);
           write_tag_en : in std_logic_vector(7 downto 0);
           read_tag_en : in std_logic_vector(7 downto 0);
           tag_out : out std_logic_vector(2 downto 0));
end component;

component counter_resets
    port (counter_out : in std_logic_vector(4 downto 0);
        reset_c_1 : out std_logic;
        reset_c_2: out std_logic;
        reset_c_9: out std_logic;
        reset_c_11: out std_logic;
        reset_c_13 : out std_logic;
        reset_c_15: out std_logic;
        reset_c_18: out std_logic);
end component;

component mux_4x1
   port ( a : in std_logic;
          b : in std_logic;
          d0 :in std_logic;
          d1 :in std_logic;
          d2 :in std_logic;
          d3 :in std_logic;
          d_out : out std_logic );
end component;


component col_out_checker
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
end component;

component valid_1bit_cache
    port ( valid_in : in std_logic;
           write_valid_en : in std_logic_vector(7 downto 0);
           read_tag_valid_en : in std_logic_vector(7 downto 0);
           valid_out : out std_logic);
end component;


for data_reg, addr_reg : register_8bit use entity work.register_8bit(structural);
for and_1, and_3, and_4, and_5, and_6, and_7, and_8, and_9, and_10, and_11, and_12 : and2 use entity work.and2(structural);
for busy_gen, cpu_rd_wrn_reg : dff use entity work.dff(structural);
for row_sel : dec_3x8 use entity work.dec_3x8(structural);
for col_sel , cpu_rd_wrn_dec: dec_2x4 use entity work.dec_2x4(structural);
for or_1111 : or2 use entity work.or2(structural);
for inv_2: inverter use entity work.inverter(structural);
for tag_cache_full: tag_full_3bit_cache use entity work.tag_full_3bit_cache(structural);
for val_cache: valid_1bit_cache use entity work.valid_1bit_cache(structural);
for rowcolmatrix : row_col_selector  use entity work.row_col_selector(structural);
for enableselmatrix : enable_selector use entity work.enable_selector(structural);
for data_cache_32byte : cache_32_byte use entity work.cache_32_byte(structural);
for count : counter use entity work.counter(structural);
for counter_r : counter_resets use entity work.counter_resets(structural);




signal  t12, val1,   busy_reset, busy_bar, counter_reset,  cpu_rd_wrn_out, cpu_rd_wrn_outbar, tag_check,valid_write_en,  reset_bar, valid_bar, miss,  common_write, common_read, valid_in, valid_out , busy_out, t1, t2, mem_en_out, mem_en_out_bar,  miss_out, reset_c_18_bar, t11,  str_rst_clk, a11, operation_0_bar , operation_3_bar, busy_reset11: std_logic;
signal cpu_add_out ,cpu_add_out_appended,  cpu_data_out , row_out , write_tag_en, read_tag_valid_en, data_out, data_in , write_valid_en : std_logic_vector(7 downto 0);
signal  reset_c_1 , reset_c_2 , reset_c_9, reset_c_11, reset_c_13, reset_c_15, reset_c_18 : std_logic;
signal col_out, col_act_out ,operation : std_logic_vector(3 downto 0);
signal tag_in , tag_out : std_logic_vector(2 downto 0);
signal write_data_en,  read_data_en,  rowcol_selout : std_logic_vector(31 downto 0);
signal counter_out : std_logic_vector(4 downto 0);
signal reset_c_9_clk, reset_c_11_clk , reset_c_13_clk , reset_c_15_clk : std_logic ;

begin
     
     and_1 :and2 port map (start, clk, str_rst_clk);
     busy_gen : dff port map (start, str_rst_clk ,busy_reset ,busy_out, busy_bar );
              
     --and_2 : and2 port map (busy_bar , busy_bar, busy_bar);
     addr_reg : register_8bit port map (busy_bar, Gnd , cpu_add , cpu_add_out);
     data_reg : register_8bit port map (busy_bar, Gnd , cpu_data , cpu_data_out);
     cpu_rd_wrn_reg : dff port map (cpu_rd_wrn , busy_bar , Gnd , cpu_rd_wrn_out , cpu_rd_wrn_outbar);
     
     row_sel : dec_3x8 port map (cpu_add_out(4),  cpu_add_out(3), cpu_add_out(2) , row_out);
     col_sel : dec_2x4 port map (cpu_add_out(1), cpu_add_out(0), col_act_out);
     
     tag_in(0) <= cpu_add_out(5);
     tag_in(1) <= cpu_add_out(6);
     tag_in(2) <= cpu_add_out(7);
          
     tag_cache_full : tag_full_3bit_cache port map (tag_in , write_tag_en , read_tag_valid_en, tag_out) ;
     
     tag_compare : tag_comparator port map (tag_in, tag_out, tag_check);    
 
     val_cache :valid_1bit_cache port map (valid_in , write_valid_en , read_tag_valid_en,valid_out );
     
     
     and_3 : and2 port map (reset_c_2, operation(0), val1);
     or22  : or2 port map(val1, reset_c_18 , valid_write_en);
     
     valid_in <= reset_bar ;				   
     
     inv_2 : inverter port map (reset, reset_bar);
     inv_3 : inverter port map (valid_out, valid_bar);
     
     d11: Dlatch port map (miss, start, miss_out);
     
     rowcolmatrix : row_col_selector port map(row_out, col_out, rowcol_selout);
     enableselmatrix : enable_selector port map (row_out, rowcol_selout, busy_out,Vdd, reset, common_write, common_read, valid_write_en , read_tag_valid_en, write_tag_en , read_data_en, write_data_en, write_valid_en );
     					 
     data_cache_32byte : cache_32_byte port map (data_in ,write_data_en, read_data_en, data_out);
     
     count : counter port map (clk, counter_reset, counter_out);
     or2_1 : or2 port map (valid_bar , tag_check, miss);
     
     cpu_rd_wrn_dec : dec_2x4 port map ( cpu_rd_wrn_out, miss_out , operation);
     mux1 : mux_4x1 port map(cpu_rd_wrn_out , miss_out, reset_c_2, reset_c_2, reset_c_1, reset_c_18 , busy_reset11);
     
     or111 : or2 port map (busy_reset11 ,reset, busy_reset);
     
     counter_r : counter_resets port map (counter_out ,reset_c_1 , reset_c_2 , reset_c_9, reset_c_11, reset_c_13, reset_c_15, reset_c_18 );
    
     or_1111 :or2 port map (reset , start , a11);
     counter_reset <= a11;
     
     and_4 : and2 port map (  reset_c_1 , operation(2), t1);
     and_5 : and2 port map (operation(3) , reset_c_18 , t2);
     or_4 : or2 port map (t1, t2, common_read);
     
     busy <= busy_out;
     cpu_data <= data_out;    
     mem_en <= mem_en_out;     
     
     E11 : Dlatch_mem_data_8bit port map (cpu_add_out , mem_en_out, Gnd, cpu_add_out_appended);
     
     Txx : TxGate_8bit port map (mem_en_out, mem_en_out_bar , cpu_add_out_appended, mem_add);
     innvv : inverter port map(mem_en_out, mem_en_out_bar);
     and_6 : and2 port map (reset_c_1 ,operation(3) , mem_en_out );
          
     inv_a1 : inverter port map (operation(0), operation_0_bar);
     inv_a2 : inverter port map (operation(3), operation_3_bar);
     
     Tx2: TxGate_8bit port map  (operation(0), operation_0_bar , cpu_data_out , data_in);
     Tx3 : TxGate_8bit port map (operation(3), operation_3_bar, mem_data, data_in);
     
     inv11: inverter port map (reset_c_18, reset_c_18_bar);
     
     and_7: and2 port map (operation(3), reset_c_18_bar ,t11);
     and_8 : and2 port map (  reset_c_1 , operation(0), t12);
     or_5 : or2 port map ( t12, t11 , common_write );
     
     dec_out : col_out_checker port map (reset_c_2, reset_c_1, reset_c_18 , reset_c_9_clk, reset_c_11_clk , reset_c_13_clk, reset_c_15_clk, col_act_out, col_out );
     		      
     and_9 : and2 port map (clk, reset_c_9 ,reset_c_9_clk);
     and_10 : and2 port map (clk, reset_c_11 ,reset_c_11_clk);
     and_11: and2 port map (clk, reset_c_13 ,reset_c_13_clk);
     and_12 : and2 port map (clk, reset_c_15 ,reset_c_15_clk);      
     
end structural;
