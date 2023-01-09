LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY LAB1_PART6 IS
port(

 
SW : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)

);
END LAB1_PART6;


ARCHITECTURE Behavior OF LAB1_PART6 IS

BEGIN


HEX3 <= "1111111" when SW = "00" else
    	"0100001" when SW = "01" else
		"0000110" when SW = "10" else 
		"1111001";  	

		
HEX2 <= "0100001" when SW = "00" else
    	"0000110" when SW = "01" else
		"1111001" when SW = "10" else 
		"1111111";  

HEX1 <= "0000110" when SW = "00" else
    	"1111001" when SW = "01" else
		"1111111" when SW = "10" else 
		"0100001"; 
	
HEX0 <= "1111001" when SW = "00" else
    	"1111111" when SW = "01" else
		"0100001" when SW = "10" else 
		"0000110";  	

END Behavior;
