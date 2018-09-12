library STD;
library IEEE;
use IEEE.std_logic_1164.all;

entity cache_byte is
    port ( data_in : in std_logic_vector(7 downto 0); 
           write_en : in std_logic;
           read_en : in std_logic;
           data_out : out std_logic_vector(7 downto 0));
end cache_byte; 

architecture structural of cache_byte is

component cache_1bit 
    port ( data_in : in std_logic;
           write_en : in std_logic;
           read_en : in std_logic;
           data_out : out std_logic);
end component;

for cache_1bit1 : cache_1bit use entity work.cache_1bit(structural);
for cache_1bit2 : cache_1bit use entity work.cache_1bit(structural);
for cache_1bit3 : cache_1bit use entity work.cache_1bit(structural);
for cache_1bit4 : cache_1bit use entity work.cache_1bit(structural);
for cache_1bit5 : cache_1bit use entity work.cache_1bit(structural);
for cache_1bit6 : cache_1bit use entity work.cache_1bit(structural);
for cache_1bit7 : cache_1bit use entity work.cache_1bit(structural);
for cache_1bit8 : cache_1bit use entity work.cache_1bit(structural);

begin

cache_1bit1 : cache_1bit port map (data_in(0), write_en, read_en,   data_out(0) );
cache_1bit2 : cache_1bit port map (data_in(1), write_en, read_en,   data_out(1) );
cache_1bit3 : cache_1bit port map (data_in(2), write_en, read_en,   data_out(2) );
cache_1bit4 : cache_1bit port map (data_in(3), write_en, read_en,   data_out(3) );
cache_1bit5 : cache_1bit port map (data_in(4), write_en, read_en,   data_out(4) );
cache_1bit6 : cache_1bit port map (data_in(5), write_en, read_en,   data_out(5) );
cache_1bit7 : cache_1bit port map (data_in(6), write_en, read_en,   data_out(6) );
cache_1bit8 : cache_1bit port map (data_in(7), write_en, read_en,   data_out(7) );

end structural;

