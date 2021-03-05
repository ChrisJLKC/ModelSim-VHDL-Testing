-- write your test bench here
LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY elec241_shift_register_test IS
END elec241_shift_register_test;

ARCHITECTURE v1 OF elec241_shift_register_test IS
	-- Inputs of device
	signal CLK, EN, DATA_IN : std_logic;
	-- Outputs of device
	signal DATA_OUT : std_logic;
BEGIN
	-- Allowing testbech signals to be applied to the componenet elec241_shift_register.vhd
	UUT : entity work.elec241_shift_register port map (clk => CLK, enable => EN, data_in => DATA_IN, data_out => DATA_OUT);
	-- Testbench code
	tb1 : process
		constant period: time := 20 ps;
		begin
			CLK <= '0';
			DATA_IN <= '0';
			EN <= '0';
			wait for period;
			assert (DATA_OUT = 'U')
			report "Test Failed for Startup" severity error;

			CLK <= '1';
			DATA_IN <= '1';
			EN <= '0';
			wait for period;
			assert (DATA_OUT = 'U')
			report "Test failed for Applied Input 1" severity error;		
		end process;
END v1;