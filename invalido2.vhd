library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity invalido2 is
	port(
	entrada : in std_logic_vector(3 downto 0);
	i : out std_logic_vector(3 downto 0);
	c_out : out std_logic);
end invalido2;

architecture behavioral of invalido2 is
begin	
	with entrada select	
		i <= 	"0000" when "0000",
				"0001" when "0001",
				"0010" when "0010",
				"0011" when "0011",
				"0100" when "0100",
				"0101" when "0101",
				"0110" when "0110",
				"0111" when "0111",
				"1000" when "1000",
				"1001" when "1001",
				"0000" when "1010",
				"0001" when "1011",
				"0010" when "1100",
				"0011" when "1101",
				"0100" when "1110",
				"0101" when "1111",
				"----" when others;
	with entrada select
		c_out <= '0' when "0000",
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