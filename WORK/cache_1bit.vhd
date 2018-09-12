library STD;
library IEEE;
use IEEE.std_logic_1164.all;

entity cache_1bit is
    port ( data_in : in std_logic;
           write_en : in std_logic;
           read_en : in std_logic;
	   data_out : out std_logic);
end cache_1bit;

architecture structural of cache_1bit is

component Dlatch
  port ( d   : in  std_logic;
         clk : in  std_logic;
         q   : out std_logic);
end component;

component TxGate
  port ( sel   : in std_logic;
         selnot: in std_logic;
         input : in std_logic;
         output:out std_logic);
end component;

component inverter
  port (
    input    : in  std_logic;
    output   : out std_logic);
end component; 


for Dlatch_write : Dlatch use entity work.Dlatch(structural);
for TxGate_read : TxGate use entity work.TxGate(structural);
for inv :inverter use entity work.inverter(structural);

signal latch_out, read_en_bar : std_logic;

begin
inv :inverter port map (read_en , read_en_bar);
Dlatch_write : Dlatch port map (data_in, write_en, latch_out);
TxGate_read : TxGate port map (read_en , read_en_bar , latch_out ,data_out);

end structural;
