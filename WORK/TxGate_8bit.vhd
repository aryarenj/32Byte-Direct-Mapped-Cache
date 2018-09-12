library STD;
library IEEE;
use IEEE.std_logic_1164.all;

entity TxGate_8bit is
  port ( sel   : in std_logic;
         selnot: in std_logic;
         input : in std_logic_vector(7 downto 0);
         output:out std_logic_vector(7 downto 0));
end TxGate_8bit;


architecture structural of TxGate_8bit is

component TxGate
  port ( sel   : in std_logic;
         selnot: in std_logic;
         input : in std_logic;
         output:out std_logic);
end component;

for TxGate1 : TxGate use entity work.TxGate(structural);
for TxGate2 : TxGate use entity work.TxGate(structural);
for TxGate3 : TxGate use entity work.TxGate(structural);
for TxGate4 : TxGate use entity work.TxGate(structural);
for TxGate5 : TxGate use entity work.TxGate(structural);
for TxGate6 : TxGate use entity work.TxGate(structural);
for TxGate7 : TxGate use entity work.TxGate(structural);
for TxGate8 : TxGate use entity work.TxGate(structural);


begin
TxGate1 : TxGate port map ( sel, selnot, input(0),output(0) );
TxGate2 : TxGate port map ( sel, selnot, input(1),output(1) );
TxGate3 : TxGate port map (sel, selnot, input(2),  output(2) );
TxGate4 : TxGate port map (sel, selnot, input(3),  output(3) );
TxGate5 : TxGate port map (sel, selnot, input(4),  output(4) );
TxGate6 : TxGate port map (sel, selnot, input(5),  output(5) );
TxGate7 : TxGate port map (sel, selnot, input(6),  output(6) );
TxGate8 : TxGate port map (sel, selnot, input(7),  output(7) );


end structural;
	   
