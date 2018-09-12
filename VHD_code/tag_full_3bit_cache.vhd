library STD;
library IEEE;
use IEEE.std_logic_1164.all;

entity tag_full_3bit_cache is
    port ( tag_in : in std_logic_vector(2 downto 0);
           write_tag_en : in std_logic_vector(7 downto 0);
           read_tag_en : in std_logic_vector(7 downto 0);
           tag_out : out std_logic_vector(2 downto 0));
end tag_full_3bit_cache;

architecture structural of tag_full_3bit_cache is

component tag_3bit_cache
    port ( tag_in : in std_logic_vector(2 downto 0);
           tag_write_en : in std_logic;
           tag_read_en : in std_logic;
           tag_out : out std_logic_vector(2 downto 0));
end component;

for tag_cache0 : tag_3bit_cache use entity work.tag_3bit_cache(structural);
for tag_cache1 : tag_3bit_cache use entity work.tag_3bit_cache(structural);
for tag_cache2 : tag_3bit_cache use entity work.tag_3bit_cache(structural);
for tag_cache3 : tag_3bit_cache use entity work.tag_3bit_cache(structural);
for tag_cache4 : tag_3bit_cache use entity work.tag_3bit_cache(structural);
for tag_cache5 : tag_3bit_cache use entity work.tag_3bit_cache(structural);
for tag_cache6 : tag_3bit_cache use entity work.tag_3bit_cache(structural);
for tag_cache7 : tag_3bit_cache use entity work.tag_3bit_cache(structural);

begin

tag_cache0 : tag_3bit_cache port map (tag_in , write_tag_en(0),read_tag_en(0), tag_out) ;
tag_cache1 : tag_3bit_cache port map (tag_in , write_tag_en(1),read_tag_en(1), tag_out) ;
tag_cache2 : tag_3bit_cache port map (tag_in , write_tag_en(2),read_tag_en(2), tag_out) ;
tag_cache3 : tag_3bit_cache port map (tag_in , write_tag_en(3),read_tag_en(3), tag_out) ;
tag_cache4 : tag_3bit_cache port map (tag_in , write_tag_en(4),read_tag_en(4), tag_out) ;
tag_cache5 : tag_3bit_cache port map (tag_in , write_tag_en(5),read_tag_en(5), tag_out) ;
tag_cache6 : tag_3bit_cache port map (tag_in , write_tag_en(6),read_tag_en(6), tag_out) ;
tag_cache7 : tag_3bit_cache port map (tag_in , write_tag_en(7),read_tag_en(7), tag_out) ;
end structural;
