library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NAND4_SebastianRojas is
    Port ( a, b, c, d : in STD_LOGIC;
           x : out STD_LOGIC);
end NAND4_SebastianRojas;

architecture Structure of NAND4_SebastianRojas is
SIGNAL w1, w2, w3, w4 : STD_LOGIC;
begin
  w1 <= a NAND b;
  w2 <= w1 NAND w1;
  w3 <= c NAND d;
  w4 <= w3 NAND w3;
  x <= w2 NAND w4;
end Structure;