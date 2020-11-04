library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity invalido is
	port(
	entrada : in std_logic_vector(3 downto 0);
	i : out std_logic);
end invalido;

architecture behavioral of invalido is
begin	
	with entrada select	
		i <= 	'0' when "0000",
				'0' when "0001",
				'0' when "0010",
				'0' when "0011",
				'0' when "0100",
				'0' when "0101",
				'0' when "0110",
				'0' when "0111",
				'0' when "1000",
				'0' when "1001",
				'1' when "1010",
				'1' when "1011",
				'1' when "1100",
				'1' when "1101",
				'1' when "1110",
				'1' when "1111",
				'-' when others;
end behavioral;