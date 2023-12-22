LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.Adders_SebastianRojas.all;
USE work.nands_SebastianRojas.all;

ENTITY Adder_8bit_SebastianRojas IS
    PORT (A, B          : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
          Cin           : IN STD_LOGIC;
          Cout          : OUT STD_LOGIC;
          SUM           : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END Adder_8bit_SebastianRojas;

ARCHITECTURE Structure OF Adder_8bit_SebastianRojas IS
    SIGNAL c            : STD_LOGIC_VECTOR(7 DOWNTO 1);

	Component FullAdder_SebastianRojas
		Port (A, B, Cin : IN   STD_LOGIC;
			  Sum, Cout : OUT  STD_LOGIC );
	END Component FullAdder_SebastianRojas;


BEGIN
    fa0 : FullAdder_SebastianRojas PORT MAP (A(0), B(0), Cin, SUM(0), c(1));
    fa1 : FullAdder_SebastianRojas PORT MAP (A(1), B(1), c(1), SUM(1) , c(2));
    fa2 : FullAdder_SebastianRojas PORT MAP (A(2), B(2), c(2), SUM(2), c(3));
    fa3 : FullAdder_SebastianRojas PORT MAP (A(3), B(3), c(3), SUM(3), c(4));
    fa4 : FullAdder_SebastianRojas PORT MAP (A(4), B(4), c(4), SUM(4), c(5));
    fa5 : FullAdder_SebastianRojas PORT MAP (A(5), B(5), c(5), SUM(5), c(6));
    fa6 : FullAdder_SebastianRojas PORT MAP (A(6), B(6), c(6), SUM(6), c(7));
    fa7 : FullAdder_SebastianRojas PORT MAP (A(7), B(7), c(7), SUM(7), Cout);
END Structure;