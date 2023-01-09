LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY aaa IS
Port(

S : OUT std_logic;
C0 : OUT std_logic;
CI : IN std_logic;
A : IN std_logic;
B : IN std_logic

);

END aaa;

Architecture Behavior OF aaa IS

SIGNAL z: std_logic;
SIGNAL y: std_logic;
SIGNAL x: std_logic;

BEGIN
z <= A XOR B;
y <= z AND CI;
x <= NOT z AND B;
S <= CI XOR z;
C0 <= x OR y;

END Behavior;
