LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY HalfAdder IS
port(

 
A : IN STD_LOGIC;
B : IN STD_LOGIC;
S : OUT STD_LOGIC;
C : OUT STD_LOGIC

);
END HalfAdder;


ARCHITECTURE Behavior OF HalfAdder IS

BEGIN


S <= A XOR B;
C <= A AND B;
	

END Behavior;
