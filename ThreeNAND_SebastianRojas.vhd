library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ThreeNAND_SebastianRojas is
    Port ( a, b, c : in STD_LOGIC;
           x : out STD_LOGIC);
end ThreeNAND_SebastianRojas;

architecture Structure of ThreeNAND_SebastianRojas is
SIGNAL w1, w2 : STD_LOGIC;
begin
	w1 <= a NAND b;
	w2 <= w1 NAND w1;
	x  <= w2 NAND c;
end Structure;
