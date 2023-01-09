LIBRARY ieee;
Use ieee.std_logic_1164.all;

ENTITY MidTermExam IS

port(
S :IN STD_LOGIC_VECTOR(1 DOWNTO 0);
HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
);
END MidTermExam;

ARCHITECTURE Behavior OF MidTermExam IS
BEGIN

HEX0 <= "0001001" WHEN S = "00"else
        "0000110" WHEN S = "01"else
		  "0001110" WHEN S = "10"else
		  "0000010";
		  
HEX1 <= "0000010" WHEN S = "00"else
        "0001001" WHEN S = "01"else
		  "0000110" WHEN S = "10"else
		  "0001110";
		  
HEX2 <= "0001110" WHEN S = "00"else
        "0000010" WHEN S = "01"else
		  "0001001" WHEN S = "10"else
		  "0000110";
		  
HEX3 <= "0000110" WHEN S = "00"else
        "0001110" WHEN S = "01"else
		  "0000010" WHEN S = "10"else
		  "0001001";
		  

END behavior;
