LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY LabActivity_9 IS
port(

 
S0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
S1 :  IN STD_LOGIC_VECTOR(7 DOWNTO 4);
HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)

);
END LabActivity_9;


ARCHITECTURE Behavior OF LabActivity_9 IS

BEGIN


HEX0 <= "1000000" when S0 = "0000" 
	else "1111001" when S0 = "0001"
	else "0100100" when S0 = "0010"
	else "0110000" when S0 = "0011"
	else "0011001" when S0 = "0100"
	else "0010010" when S0 = "0101"
	else "0000010" when S0 = "0110"
	else "1111000" when S0 = "0111"
	else "0000000" when S0 = "1000"
	else "0010000" when S0 = "1001"
	else "1111111";
			

HEX1 <= "1000000" when S1 = "0000" 
	else "1111001" when S1 = "0001"
	else "0100100" when S1 = "0010"
	else "0110000" when S1 = "0011"
	else "0011001" when S1 = "0100"
	else "0010010" when S1 = "0101"
	else "0000010" when S1 = "0110"
	else "1111000" when S1 = "0111"
	else "0000000" when S1 = "1000"
	else "0010000" when S1 = "1001"
	else "1111111";
	

END Behavior;
