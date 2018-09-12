library STD;
library IEEE;
use IEEE.std_logic_1164.all;

entity tag_3bit_cache is
    port ( tag_in : in std_logic_vector(2 downto 0);
           tag_write_en : in std_logic;
           tag_read_en : in std_logic;
           tag_out : out std_logic_vector(2 downto 0));
end tag_3bit_cache;

architecture structural of tag_3bit_cache is

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

for tag_0_cache : cache_1bit use entity work.cache_1bit(structural);
for tag_1_cache : cache_1bit use entity work.cache_1bit(structural);
for tag_2_cache : cache_1bit use entity work.cache_1bit(structural);

begin
 
tag_0_cache : cache_1bit port map (tag_in(0), tag_write_en, tag_read_en,   tag_out(0) );
tag_1_cache : cache_1bit port map (tag_in(1), tag_write_en, tag_read_en,   tag_out(1) );
tag_2_cache : cache_1bit port map (tag_in(2), tag_write_en, tag_read_en,   tag_out(2) );

end structural;
