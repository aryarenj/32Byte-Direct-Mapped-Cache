--library std;
library ieee;
use ieee.std_logic_1164.all;
use std.textio.all;
use ieee.std_logic_textio.all;


entity dec_2x4_test is
	
end dec_2x4_test;

architecture test of dec_2x4_test is

component dec_2x4
   port ( a : in std_logic;
          b : in std_logic;
          d_out : out std_logic_vector(3 downto 0));
end component;

for i1 : dec_2x4 use entity work.dec_2x4(structural);
signal clock, a, b: std_logic;
signal d_out:std_logic_vector(3 downto 0);
	
begin

i1 :  dec_2x4 port map (a, b,  d_out);   

			   
clk: process
		begin
	  	      clock <= '0';
		      wait for 5 ns;
		      clock <= '1';
		      wait for 5 ns;
		end process clk;

		ioprocess : process
			variable buf : line;
			variable y: std_logic ;
        		
			variable k : std_logic_vector(3 downto 0);
			file infile : text is in "dec_2x4_in.txt";
		      	file outfile: text is out "dec_2x4_out.txt";


		begin
			while not (endfile (infile)) loop
	
                                readline (infile, buf);
                                read (buf ,y);
                                a<= y;

                                read (buf ,y);
                                b <= y;

				wait until falling_edge(clock);

                                k := d_out;
                                write (buf, k);
                                writeline (outfile, buf);

		end loop;
                wait;
	end process ioprocess;
end test;


