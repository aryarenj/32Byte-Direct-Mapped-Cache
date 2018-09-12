--library std;
library ieee;
use ieee.std_logic_1164.all;
use std.textio.all;
use ieee.std_logic_textio.all;


entity counter_test is
	
end counter_test;

architecture test of counter_test is

component counter
  port (  clk : in std_logic;
          reset : in std_logic;
          counter_out : out std_logic_vector(4 downto 0)) ;
end component;

for i1 : counter use entity work.counter(structural);
signal reset_in, clock : std_logic;
signal q_out : std_logic_vector(4 downto 0) ;
	
begin

i1 :  counter port map ( clock, reset_in ,  q_out);   

			   
clk: process
		begin
	  	      clock <= '0';
		      wait for 5 ns;
		      clock <= '1';
		      wait for 5 ns;
		end process clk;

		ioprocess : process
			variable buf : line;
			variable b,y : std_logic ;
        		
			variable k : std_logic_vector(4 downto 0);
			file infile : text is in "counter_in.txt";
		      	file outfile: text is out "counter_out.txt";


		begin
			while not (endfile (infile)) loop
	
                                readline (infile, buf);
                                read (buf ,b);
                                reset_in<= b;

				wait until falling_edge(clock);

                                k := q_out;
                                write (buf, k);
                                writeline (outfile, buf);

		end loop;
                wait;
	end process ioprocess;
end test;


