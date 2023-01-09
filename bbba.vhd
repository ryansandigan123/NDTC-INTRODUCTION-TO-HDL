LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bbb IS
Port(

Cin : IN std_logic;
A0,A1,A2,A3 : IN std_logic;
B0,B1,B2,B3 : IN std_logic;
S0,S1,S2,S3 : OUT std_logic;
Cout : OUT std_logic

);

END bbb;

Architecture Behavior OF bbb IS

SIGNAL AB0,AB1,AB2,AB3: std_logic;
SIGNAL ABC0,ABC1,ABC2,ABC3: std_logic;
SIGNAL Z0,Z1,Z2,Z3: std_logic;
SIGNAL C1,C2,C3: std_logic;

BEGIN

AB0 <= A0 XOR B0;
ABC0 <= AB0 AND Cin;
Z0 <= NOT AB0 AND B0;
S0 <= Cin XOR AB0;
C1 <= Z0 OR ABC0;

AB1 <= A1 XOR B1;
ABC1 <= AB1 AND C1;
Z1 <= NOT AB1 AND B1;
S1 <= C1 XOR AB1;
C2 <= Z1 OR ABC1;

AB2 <= A2 XOR B2;
ABC2 <= AB2 AND C2;
Z2 <= NOT AB2 AND B2;
S2 <= C2 XOR AB2;
C3 <= Z2 OR ABC2;

AB3 <= A3 XOR B3;
ABC3 <= AB3 AND C3;
Z3 <= NOT AB3 AND B3;
S3 <= C3 XOR AB3;
Cout <= Z3 OR ABC3;


END Behavior;
