--library std;
library ieee;
use ieee.std_logic_1164.all;
use std.textio.all;
use ieee.std_logic_textio.all;


entity cache_1bit_test is
	
end cache_1bit_test;

architecture test of cache_1bit_test is

component cache_1bit
    port ( data_in : in std_logic;
           write_en : in std_logic;
           read_en : in std_logic;
           data_out : out std_logic);
end component;

for i1 : cache_1bit use entity work.cache_1bit(structural);
signal clock, data_in, write_en, read_en, data_out : std_logic;
	
begin

i1 :  cache_1bit port map (data_in, write_en, read_en, data_out);   

			   
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
        		
			variable k : std_logic;
			file infile : text is in "cache_1bit_in.txt";
		      	file outfile: text is out "cache_1bit_out.txt";


		begin
			while not (endfile (infile)) loop
	
                                readline (infile, buf);
                                read (buf ,b);
                                data_in<= b;

                                readline (infile, buf);
                                read (buf ,b);
                                write_en <= b;

                                readline (infile, buf);
                                read (buf ,b);
                                read_en<= b;

				wait until falling_edge(clock);

                                k := data_out;
                                write (buf, k);
                                writeline (outfile, buf);

		end loop;
                wait;
	end process ioprocess;
end test;


