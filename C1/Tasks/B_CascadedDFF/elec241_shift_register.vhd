-- Quartus Prime VHDL Template
-- Basic Shift Register

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity elec241_shift_register is

	port ( clk,enable,data_in : in std_logic; data_out : out std_logic);

end entity;

architecture rtl of elec241_shift_register is

	component d_flip_flop
		port( CLK, EN, D : in std_logic; Y : out std_logic);
	end component;

	signal S1, S2 : std_logic;
begin

	U1: d_flip_flop port map (clk, enable, data_in, S1);
	U2: d_flip_flop port map (clk, enable, S1, S2);
	U3: d_flip_flop port map (clk, enable, S2, data_out);

end rtl;