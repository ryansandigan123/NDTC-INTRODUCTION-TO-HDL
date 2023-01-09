LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY part1 IS

	PORT (
			SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
			LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
		
		  );
		  
END part1;


ARCHITECTURE behavior OF part1 IS
BEGIN
	LEDR <= SW;
	
END behavior;
