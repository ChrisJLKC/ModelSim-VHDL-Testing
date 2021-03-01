library ieee;
use ieee.std_logic_1164.all;

entity seven_seg_decode_logic is

	port(
		input	 : in	 std_logic_vector(3 downto 0);		-- Binary input (0..15)
		reset	 : in	 std_logic;								-- Asynchronous reset (sets output to blank)
		en     : in  std_logic;								-- Input enable. Output is latched when 0
		output : out std_logic_vector(6 downto 0)  -- Decoded output for each of the 7 LEDs
	);

end entity;

architecture v1 of seven_seg_decode_logic is
-- MODIFY THE CODE BELOW THIS LINE --
begin
	output(0) <= (not input(2) and input(1)) or (input(1) and not input(0)) or (input(3) and not input(1)) or (input(3) and input(0)) or (not input(3) and input(2) and not input(1));
	output(1) <= (not input(1) and not input(0)) or (input(2) and not input(0)) or (not input(2) and input(3)) or (input(3) and input(1)) or (not input(3) and input(2) and not input(1));
	output(2) <= (not input(0) and not input(0)) or (input(1) and not input(0)) or (input(3) and input(1)) or (input(3) and input(2));
	output(3) <= (not input(1) and input(3)) or (not input(3) and not input(2) and not input(0)) or (not input(2) and input(1) and input(0)) or (input(2) and not input(1) and input(0)) or (input(2) and input(1) and not input(0));
	output(4) <= (not input(3) and not input(1)) or (not input(3) and input(0)) or (not input(1) and input(0)) or (not input(3) and input(2)) or (input(3) and not input(2));
	output(5) <= (not input(3) and not input(2)) or (not input(3) and not input(0)) or (not input(3) and not input(1) and not input(0)) or (not input(3) and input(1) and input(0));
	output(6) <= (not input(2) and not input(0)) or (not input(3) and input(1)) or (input(2) and input(1)) or (input(3) and not input(0)) or (not input(3) and input(2) and input(0)) or (input(3) and not input(2) and not input(0));
end v1;