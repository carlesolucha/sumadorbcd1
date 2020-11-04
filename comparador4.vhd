library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparador4 is
	port(
	a, b : in std_logic_vector(3 downto 0);
	a_ma_b : out std_logic;
	a_me_b : out std_logic;
	a_ig_b : out std_logic);
end comparador4;

architecture structural of comparador4 is
	signal a_ma_b_int : std_logic_vector(4 downto 0);
	signal a_ig_b_int : std_logic_vector(4 downto 0);
	signal a_me_b_int : std_logic_vector(4 downto 0);
	
	component comparador1
		port(
		a : in std_logic;
		b : in std_logic;
		a_mayor_b_i : in std_logic;
		a_menor_b_i : in std_logic;
		a_igual_b_i : in std_logic;
		a_may_b : out std_logic;
		a_men_b : out std_logic;
		a_ig_b  : out std_logic);
	end component;
begin
	a_ma_b_int(0)<='0';
	a_ig_b_int(0)<='1';
	a_me_b_int(0)<='0';
	
	Comps : for i in 0 to 3 generate
	comparador1_i : comparador1
	port map(
		a => a(i),
		b => b(i),
		a_mayor_b_i => a_ma_b_int(i),
		a_menor_b_i =>a_me_b_int(i),
		a_igual_b_i =>a_ig_b_int(i),
		a_may_b => a_ma_b_int(i+1),
		a_men_b => a_ig_b_int(i+1),
		a_ig_b => a_me_b_int(i+1));
	end generate Comps;

	a_ma_b <=a_ma_b_int(4);
	a_ig_b <= a_ig_b_int(4);
	a_me_b <= a_me_b_int(4);
	
end structural;
	
	
	
	