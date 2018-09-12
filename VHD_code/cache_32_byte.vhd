library STD;
library IEEE;
use IEEE.std_logic_1164.all;

entity cache_32_byte is
    port ( data_in : in std_logic_vector(7 downto 0);
           write_data_en : in std_logic_vector(31 downto 0);
           read_data_en : in std_logic_vector(31 downto 0);
           data_out : out std_logic_vector(7 downto 0));
end cache_32_byte;

architecture structural of cache_32_byte is

component cache_byte
    port ( data_in : in std_logic_vector(7 downto 0);
           write_en : in std_logic;
           read_en : in std_logic;
           data_out : out std_logic_vector(7 downto 0));
end component;


for cache_byte_1 : cache_byte use entity work.cache_byte(structural);
for cache_byte_2 : cache_byte use entity work.cache_byte(structural);
for cache_byte_3 : cache_byte use entity work.cache_byte(structural);
for cache_byte_4 : cache_byte use entity work.cache_byte(structural);
for cache_byte_5 : cache_byte use entity work.cache_byte(structural);
for cache_byte_6 : cache_byte use entity work.cache_byte(structural);
for cache_byte_7 : cache_byte use entity work.cache_byte(structural);
for cache_byte_8 : cache_byte use entity work.cache_byte(structural);
for cache_byte_9 : cache_byte use entity work.cache_byte(structural);
for cache_byte_10: cache_byte use entity work.cache_byte(structural);
for cache_byte_11: cache_byte use entity work.cache_byte(structural);
for cache_byte_12: cache_byte use entity work.cache_byte(structural);
for cache_byte_13: cache_byte use entity work.cache_byte(structural);
for cache_byte_14: cache_byte use entity work.cache_byte(structural);
for cache_byte_15: cache_byte use entity work.cache_byte(structural);
for cache_byte_16: cache_byte use entity work.cache_byte(structural);
for cache_byte_17: cache_byte use entity work.cache_byte(structural);
for cache_byte_18: cache_byte use entity work.cache_byte(structural);
for cache_byte_19: cache_byte use entity work.cache_byte(structural);
for cache_byte_20: cache_byte use entity work.cache_byte(structural);
for cache_byte_21: cache_byte use entity work.cache_byte(structural);
for cache_byte_22: cache_byte use entity work.cache_byte(structural);
for cache_byte_23: cache_byte use entity work.cache_byte(structural);
for cache_byte_24: cache_byte use entity work.cache_byte(structural);
for cache_byte_25: cache_byte use entity work.cache_byte(structural);
for cache_byte_26: cache_byte use entity work.cache_byte(structural);
for cache_byte_27: cache_byte use entity work.cache_byte(structural);
for cache_byte_28: cache_byte use entity work.cache_byte(structural);
for cache_byte_29: cache_byte use entity work.cache_byte(structural);
for cache_byte_30: cache_byte use entity work.cache_byte(structural);
for cache_byte_31: cache_byte use entity work.cache_byte(structural);
for cache_byte_32: cache_byte use entity work.cache_byte(structural);

begin


cache_byte_1 : cache_byte port map (data_in, write_data_en(0), read_data_en(0), data_out);
cache_byte_2 : cache_byte port map (data_in, write_data_en(1), read_data_en(1), data_out);
cache_byte_3 : cache_byte port map (data_in, write_data_en(2), read_data_en(2), data_out);
cache_byte_4 : cache_byte port map (data_in, write_data_en(3), read_data_en(3), data_out);
cache_byte_5 : cache_byte port map (data_in, write_data_en(4), read_data_en(4), data_out);
cache_byte_6 : cache_byte port map (data_in, write_data_en(5), read_data_en(5), data_out);
cache_byte_7 : cache_byte port map (data_in, write_data_en(6), read_data_en(6), data_out);
cache_byte_8 : cache_byte port map (data_in, write_data_en(7), read_data_en(7), data_out);
cache_byte_9 : cache_byte port map (data_in, write_data_en(8), read_data_en(8), data_out);
cache_byte_10 : cache_byte port map (data_in, write_data_en(9), read_data_en(9), data_out);
cache_byte_11 : cache_byte port map (data_in, write_data_en(10), read_data_en(10), data_out);
cache_byte_12 : cache_byte port map (data_in, write_data_en(11), read_data_en(11), data_out);
cache_byte_13 : cache_byte port map (data_in, write_data_en(12), read_data_en(12), data_out);
cache_byte_14 : cache_byte port map (data_in, write_data_en(13), read_data_en(13), data_out);
cache_byte_15 : cache_byte port map (data_in, write_data_en(14), read_data_en(14), data_out);
cache_byte_16 : cache_byte port map (data_in, write_data_en(15), read_data_en(15), data_out);
cache_byte_17 : cache_byte port map (data_in, write_data_en(16), read_data_en(16), data_out);
cache_byte_18 : cache_byte port map (data_in, write_data_en(17), read_data_en(17), data_out);
cache_byte_19 : cache_byte port map (data_in, write_data_en(18), read_data_en(18), data_out);
cache_byte_20 : cache_byte port map (data_in, write_data_en(19), read_data_en(19), data_out);
cache_byte_21 : cache_byte port map (data_in, write_data_en(20), read_data_en(20), data_out);
cache_byte_22 : cache_byte port map (data_in, write_data_en(21), read_data_en(21), data_out);
cache_byte_23 : cache_byte port map (data_in, write_data_en(22), read_data_en(22), data_out);
cache_byte_24 : cache_byte port map (data_in, write_data_en(23), read_data_en(23), data_out);
cache_byte_25 : cache_byte port map (data_in, write_data_en(24), read_data_en(24), data_out);
cache_byte_26 : cache_byte port map (data_in, write_data_en(25), read_data_en(25), data_out);
cache_byte_27 : cache_byte port map (data_in, write_data_en(26), read_data_en(26), data_out);
cache_byte_28 : cache_byte port map (data_in, write_data_en(27), read_data_en(27), data_out);
cache_byte_29 : cache_byte port map (data_in, write_data_en(28), read_data_en(28), data_out);
cache_byte_30 : cache_byte port map (data_in, write_data_en(29), read_data_en(29), data_out);
cache_byte_31 : cache_byte port map (data_in, write_data_en(30), read_data_en(30), data_out);
cache_byte_32 : cache_byte port map (data_in, write_data_en(31), read_data_en(31), data_out);


end structural;
