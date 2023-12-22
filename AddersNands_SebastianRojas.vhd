Library ieee;
USE ieee.std_Logic_1164.all;
package AddersNands_SebastianRojas is
	Component FullAdder_SebastianRojas
			Port (A, B, Cin : IN   STD_LOGIC;
		  Sum, Cout : OUT  STD_LOGIC );
	END Component FullAdder_SebastianRojas;

	Component HalfAdder_SebastianRojas is
	port
	(
		-- Input ports
		A, B        : in  STD_LOGIC;
		-- Output ports
		Cout, Sum	: out STD_LOGIC
	);
	end COMPONENT HalfAdder_SebastianRojas;
	component ThreeNAND_SebastianRojas
		Port (a, b, c : in  std_logic;
				x	  : Out std_Logic);
	END COMPONENT ThreeNAND_SebastianRojas;

	component NAND4_SebastianRojas
		Port (a, b, c, d : IN STD_LOGIC;
			   x		 : OUT STD_LOGIC);
	END COMPONENT NAND4_SebastianRojas;
END PACKAGE AddersNands_SebastianRojas;