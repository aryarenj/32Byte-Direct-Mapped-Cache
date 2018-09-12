--library std;
library ieee;
use ieee.std_logic_1164.all;
use std.textio.all;
use ieee.std_logic_textio.all;


entity cache_32_byte_test is
	
end cache_32_byte_test;

architecture test of cache_32_byte_test is

component cache_32_byte
    port ( data_in : in std_logic_vector(7 downto 0);
           write_data_en : in std_logic_vector(31 downto 0);
           read_data_en : in std_logic_vector(31 downto 0);
           data_out : out std_logic_vector(7 downto 0));
end component;

for i1 : cache_32_byte use entity work.cache_32_byte(structural);
signal write_en, read_en : std_logic_vector(31 downto 0);
signal clock : std_logic;
signal data_in, data_out : std_logic_vector(7 downto 0);
	
begin

i1 :  cache_32_byte port map (data_in, write_en, read_en, data_out);   

			   
clk: process
		begin
	  	      clock <= '0';
		      wait for 5 ns;
		      clock <= '1';
		      wait for 5 ns;
		end process clk;

		ioprocess : process
			variable buf : line;
			variable b : std_logic_vector(31 downto 0) ;
        		variable y,k : std_logic_vector(7 downto 0) ;
			file infile : text is in "cache_32_byte_in.txt";
		      	file outfile: text is out "cache_32_byte_out.txt";


		begin
			while not (endfile (infile)) loop
	
                                readline (infile, buf);
                                read (buf ,y);
                                data_in<= y;

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


