library STD;
library IEEE;
use IEEE.std_logic_1164.all;

entity valid_1bit_cache is
    port ( valid_in : in std_logic;
           write_valid_en : in std_logic_vector(7 downto 0);
           read_tag_valid_en : in std_logic_vector(7 downto 0);
           valid_out : out std_logic);
end valid_1bit_cache;

architecture structural of valid_1bit_cache is

component cache_1bit
    port ( data_in : in std_logic;
           write_en : in std_logic;
           read_en : in std_logic;
           data_out : out std_logic);
end component;

for valid_cache0 : cache_1bit use entity work.cache_1bit(structural);
for valid_cache1 : cache_1bit use entity work.cache_1bit(structural);
for valid_cache2 : cache_1bit use entity work.cache_1bit(structural);
for valid_cache3 : cache_1bit use entity work.cache_1bit(structural);
for valid_cache4 : cache_1bit use entity work.cache_1bit(structural);
for valid_cache5 : cache_1bit use entity work.cache_1bit(structural);
for valid_cache6 : cache_1bit use entity work.cache_1bit(structural);
for valid_cache7 : cache_1bit use entity work.cache_1bit(structural);

begin

valid_cache0 :cache_1bit port map (valid_in , write_valid_en(0) , read_tag_valid_en(0), valid_out );
valid_cache1 :cache_1bit port map (valid_in , write_valid_en(1) , read_tag_valid_en(1), valid_out );
valid_cache2 :cache_1bit port map (valid_in , write_valid_en(2) , read_tag_valid_en(2), valid_out );
valid_cache3 :cache_1bit port map (valid_in , write_valid_en(3) , read_tag_valid_en(3), valid_out );
valid_cache4 :cache_1bit port map (valid_in , write_valid_en(4) , read_tag_valid_en(4), valid_out );
valid_cache5 :cache_1bit port map (valid_in , write_valid_en(5) , read_tag_valid_en(5), valid_out );
valid_cache6 :cache_1bit port map (valid_in , write_valid_en(6) , read_tag_valid_en(6), valid_out );
valid_cache7 :cache_1bit port map (valid_in , write_valid_en(7) , read_tag_valid_en(7), valid_out );

end structural;
