Library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
package nands_SebastianRojas is
	component ThreeNAND_SebastianRojas
		Port (a, b, c : in  std_logic;
				x	  : Out std_Logic);
	END COMPONENT ThreeNAND_SebastianRojas;
	
	component NAND4_SebastianRojas
		Port (a, b, c, d : IN STD_LOGIC;
			   x		 : OUT STD_LOGIC);
	END COMPONENT NAND4_SebastianRojas;
END PACKAGE nands_SebastianRojas;