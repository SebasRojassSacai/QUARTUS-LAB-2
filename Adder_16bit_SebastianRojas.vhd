LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.Adders_SebastianRojas.all;
USE work.nands_SebastianRojas.all;

ENTITY Adder_16bit_SebastianRojas IS
	PORT (A, B       : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		  Cin        : IN STD_LOGIC;
		  Cout       : OUT STD_LOGIC;
		  SUM        : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END Adder_16bit_SebastianRojas;

Architecture Structure Of Adder_16bit_SebastianRojas IS
		  SIGNAL c   : STD_LOGIC_VECTOR(15 DOWNTO 1);
		  
		  COMPONENT FullAdder_SebastianRojas
			PORT(A, B, Cin : IN STD_LOGIC;
				 Sum, Cout : Out STD_LOGIC );
		End Component FullAdder_SebastianRojas;
BEGIN
	fa0 : FullAdder_SebastianRojas PORT MAP (A(0), B(0), Cin, SUM(0), c(1));
    fa1 : FullAdder_SebastianRojas PORT MAP (A(1), B(1), c(1), SUM(1) , c(2));
    fa2 : FullAdder_SebastianRojas PORT MAP (A(2), B(2), c(2), SUM(2), c(3));
    fa3 : FullAdder_SebastianRojas PORT MAP (A(3), B(3), c(3), SUM(3), c(4));
    fa4 : FullAdder_SebastianRojas PORT MAP (A(4), B(4), c(4), SUM(4), c(5));
    fa5 : FullAdder_SebastianRojas PORT MAP (A(5), B(5), c(5), SUM(5), c(6));
    fa6 : FullAdder_SebastianRojas PORT MAP (A(6), B(6), c(6), SUM(6), c(7));
    fa7 : FullAdder_SebastianRojas PORT MAP (A(7), B(7), c(7), SUM(7), c(8));
    fa8 : FullAdder_SebastianRojas PORT MAP (A(8), B(8), c(8), SUM(8) , c(9));
    fa9 : FullAdder_SebastianRojas PORT MAP (A(9), B(9), c(9), SUM(9), c(10));
    fa10 : FullAdder_SebastianRojas PORT MAP (A(10), B(10), c(10), SUM(10), c(11));
    fa11 : FullAdder_SebastianRojas PORT MAP (A(11), B(11), c(11), SUM(11), c(12));
    fa12 : FullAdder_SebastianRojas PORT MAP (A(12), B(12), c(12), SUM(12), c(13));
    fa13 : FullAdder_SebastianRojas PORT MAP (A(13), B(13), c(13), SUM(13), c(14));
    fa14 : FullAdder_SebastianRojas PORT MAP (A(14), B(14), c(14), SUM(14), c(15));
    fa15 : FullAdder_SebastianRojas PORT MAP (A(15), B(15), c(15), SUM(15), Cout);
    
END STRUCTURE;