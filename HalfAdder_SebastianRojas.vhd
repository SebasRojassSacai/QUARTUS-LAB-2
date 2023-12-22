-- Lab 2 - Half Adder by Sebastian Rojas
library IEEE;
use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;

entity HalfAdder_SebastianRojas is
	port
	(
		-- Input ports
		A, B        : in  STD_LOGIC;
		-- Output ports
		Cout, Sum	: out STD_LOGIC
	);
end HalfAdder_SebastianRojas;

architecture Structure of HalfAdder_SebastianRojas is

	SIGNAL w1, w2, w3, w4, w5 : STD_LOGIC;

begin
	w1 <= A NAND A; -- A'
	w2 <= B NAND B; -- B'
	w3 <= w1 NAND B; -- (W1 B)'
	w4 <= A NAND w2; -- (W2 A)'
	w5 <= a NAND B; -- (A B)'
  Sum  <= w3 NAND w4; -- ((w1 B)' (W2 A)')'
  Cout <= w5 NAND w5; -- ((A B)' (A B)')' = AB + AB DeMorgan's Law
	-- Selected Signal Assignment
	

end Structure;
