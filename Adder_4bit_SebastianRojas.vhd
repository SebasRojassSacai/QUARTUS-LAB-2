Library ieee;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.Adders_SebastianRojas.all;
USE work.nands_SebastianRojas.all;
ENTITY Adder_4bit_SebastianRojas IS
	PORT (A,B            : IN STD_LOGIC_VECTOR (3 downto 0);
		  Cin            : IN STD_LOGIC;
	  
		  Cout           : OUT STD_LOGIC;
		SUM              : OUT STD_LOGIC_VECTOR (3 downto 0));
END Adder_4bit_SebastianRojas;

Architecture Structure OF Adder_4bit_SebastianRojas IS
	SIGNAL c             : STD_LOGIC_VECTOR (2 downto 0);

	Component FullAdder_SebastianRojas IS
		Port(A, B, Cin   : IN  STD_LOGIC;
			 Sum, Cout   : OUT STD_LOGIC );
	End Component FullAdder_SebastianRojas;

BEGIN
	fa0 : FullAdder_SebastianRojas PORT MAP (A(0), B(0), Cin, c(0), SUM(0) );
	fa1 : FullAdder_SebastianRojas PORT MAP (A(1), B(1), c(0), c(1), SUM(1)  );
	fa2 : FullAdder_SebastianRojas PORT MAP (A(2), B(2), c(1), c(2), SUM(2)  );
	fa3 : FullAdder_SebastianRojas PORT MAP (A(3), B(3), c(2), Cout, SUM(3) );
END Structure;