LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY FullAdder IS
port(

 
A : IN STD_LOGIC;
B : IN STD_LOGIC;
Cin : IN STD_LOGIC;
S : OUT STD_LOGIC;
Cout : OUT STD_LOGIC

);
END FullAdder ;


ARCHITECTURE Behavior OF FullAdder  IS
SIGNAL X: STD_LOGIC;
SIGNAL Y: STD_LOGIC;
SIGNAL Z: STD_LOGIC;

BEGIN



X <= A XOR B;
Y <= A AND B;
Z <= X AND Cin;

S <= X XOR Cin;
Cout <= Y OR Z;

	

END Behavior;
