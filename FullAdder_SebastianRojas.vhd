Library ieee;
USE ieee.std_Logic_1164.all;
USE work.Adders_SebastianRojas.all;
USE work.nands_SebastianRojas.all;

ENTITY FullAdder_SebastianRojas IS
	Port (A, B, Cin : IN   STD_LOGIC;
		  Sum, Cout : OUT  STD_LOGIC );
END FullAdder_SebastianRojas;

Architecture Structure OF FullAdder_SebastianRojas IS

--Using 3-Input and 4-Input NAND Components
SIGNAL temp1, temp2, temp3, temp4 : STD_LOGIC;
COMPONENT ThreeNAND_SebastianRojas IS
	PORT (A, B, C : IN  STD_LOGIC;
			x     : OUT STD_LOGIC );
END COMPONENT ThreeNAND_SebastianRojas;

	COMPONENT NAND4_SebastianRojas IS
		Port (a, b, c, d : IN STD_LOGIC;
			   x		 : OUT STD_LOGIC);
	END COMPONENT NAND4_SebastianRojas;
BEGIN

f3: ThreeNAND_SebastianRojas Port Map(A NAND B, A NAND Cin, B NAND Cin, Cout);


f4: ThreeNAND_SebastianRojas PORT MAP (A NAND A, B NAND B, Cin, temp1);
f5: ThreeNAND_SebastianRojas PORT MAP (A NAND A, B, Cin NAND Cin, temp2);
f6: ThreeNAND_SebastianRojas PORT MAP ( A, B, Cin, temp3);
f7: ThreeNand_SebastianRojas PORT MAP(A, B NAND B, Cin NAND Cin, temp4);

SumTemp: NAND4_SebastianRojas Port MAP (temp1, temp2, temp3, temp4, Sum);
END STRUCTURE;