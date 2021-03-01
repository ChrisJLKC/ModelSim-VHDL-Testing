library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity D_flip_flop is

	port 
	(
		CLK	: in std_logic;
		EN	: in std_logic;
		D	: in std_logic;
		Y	: out std_logic
	);

end entity;

architecture v1 of D_flip_flop is
begin

process(CLK)
begin
	if (rising_edge(CLK)) then
		if (EN = '1') then
			Y <= D;
		end if;
	end if;
end process;

end v1;