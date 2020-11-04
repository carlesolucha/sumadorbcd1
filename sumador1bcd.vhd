library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sumador1bcd is 
	port(
	a : in std_logic_vector(3 downto 0);
	b : in std_logic_vector(3 downto 0);
	s_final : out std_logic_vector(3 downto 0);
	c_out : out std_logic);
end sumador1bcd;

architecture structural of sumador1bcd is
	signal c : std_logic_vector(4 downto 0);
	signal s : std_logic_vector(3 downto 0);
	signal selesuma : std_logic;
	component sumador4bits
		port(
		a : in std_logic_vector(3 downto 0);
		b : in std_logic_vector(3 downto 0);
		s : out std_logic_vector(3 downto 0);
		c_out : out std_logic);
	end component;
	component invalido
		port(
		entrada : in std_logic_vector(3 downto 0);
		i : out std_logic);
	end component;
	
	component invalido2
		port(
		entrada : in std_logic_vector(3 downto 0);
		i : out std_logic_vector(3 downto 0);
		c_out : out std_logic);
	end component;
	
begin
	
	i_sumador4bits : sumador4bits
	port map(
	a=>a,
	b=>b,
	s=>s);
	--NO sé como poner en el codigo un: si la i es 1 (es inválido) sumale 6. Si no lo es déjalo igual.
	--i_invalido : invalido
	--port map(
	--entrada=>s,
	--i=>selesuma);
	
	i_invalido2 : invalido2
		port map(
		entrada=>s,
		i=>s_final,
		c_out => c_out);
	
end structural;
	
	
	
	