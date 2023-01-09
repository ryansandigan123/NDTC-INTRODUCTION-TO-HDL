LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY PART3 IS


PORT (
	
		s0,s1					: IN STD_LOGIC;
		u						: IN STD_LOGIC;
		v						: IN STD_LOGIC;
		w						: IN STD_LOGIC;
		m						: OUT STD_LOGIC;
		r0,r1,r2,r3,r4		: OUT STD_LOGIC
		);
			

END PART3;

ARCHITECTURE Behavior OF PART3 IS

	SIGNAL A:STD_LOGIC;
	SIGNAL B:STD_LOGIC;
	SIGNAL C:STD_LOGIC;
	SIGNAL D:STD_LOGIC;
	
BEGIN

A <= (NOT(s0)AND(s1)AND u);
B <= s0 AND NOT s1 AND v;
C <= (NOT(s0)AND(s1)AND w);
D <= S0 AND s1 AND w;
m <= A OR B OR C OR D;
r0 <= w;
r1 <= v;
r2 <= u;
r3 <= s1;
r4 <= s0;
 
END Behavior;
