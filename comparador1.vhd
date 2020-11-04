library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparador1 is
port(
	a : in std_logic;
	b : in std_logic;
	a_mayor_b_i : in std_logic;
	a_menor_b_i : in std_logic;
	a_igual_b_i : in std_logic;
	a_may_b : out std_logic;
	a_men_b : out std_logic;
	a_ig_b  : out std_logic);
end comparador1;

architecture behavioral of comparador1 is
begin	
	a_may_b<= (a and not b) or (not (a xor b) and a_mayor_b_i);
	a_ig_b<= not (a xor b) and a_igual_b_i;
	a_men_b<= (not a and b) or (not (a xor b) and a_menor_b_i);
end behavioral;