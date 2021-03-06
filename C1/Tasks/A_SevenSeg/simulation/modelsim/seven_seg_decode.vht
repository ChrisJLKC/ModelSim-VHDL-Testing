LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY seven_seg_decode_vhd_tst IS
END seven_seg_decode_vhd_tst;

ARCHITECTURE seven_seg_decode_arch OF seven_seg_decode_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL en : STD_LOGIC;
SIGNAL input : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL output : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL reset : STD_LOGIC;

COMPONENT seven_seg_decode
	PORT (
	en : IN STD_LOGIC;
	input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	output : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;

BEGIN
	i1 : seven_seg_decode
	PORT MAP (
	en => en,
	input => input,
	output => output,
	reset => reset
	);


init : PROCESS                                                                                
BEGIN                                                        
        -- Initialisation code here (if needed)                    
	WAIT;                                                       
END PROCESS init; 

                                          
always : PROCESS                                              
	constant period: time := 20 ps;            
BEGIN                                                         
	-- Test code here

	input <= "0000";
	en <= '1';
	reset <= '0';
	wait for period;
	assert (output = "1111110") -- the output
	-- error will be stated if number is not binary number
	report "Test Failed for output of 0" severity error;

	input <= "0001";
	en <= '1';
	reset <= '0';
	wait for period;
	assert (output = "0110000")
	report "Test Failed for output of 1" severity error;

	input <= "0010";
	en <= '1';
	reset <= '0';
	wait for period;
	assert (output = "1101101")
	report "Test Failed for output of 2" severity error;

	input <= "0011";
	en <= '1';
	reset <= '0';
	wait for period;
	assert (output = "1111001")
	report "Test Failed for output of 3" severity error;

	input <= "0100";
	en <= '1';
	reset <= '0';
	wait for period;
	assert (output = "0110011")
	report "Test Failed for output of 4" severity error;

	input <= "0101";
	en <= '1';
	reset <= '0';
	wait for period;
	assert (output = "1011011")
	report "Test Failed for output of 5" severity error;

	input <= "0110";
	en <= '1';
	reset <= '0';
	wait for period;
	assert (output = "1011111")
	report "Test Failed for output of 6" severity error;	

	input <= "0111";
	en <= '1';
	reset <= '0';
	wait for period;
	assert (output = "1110000")
	report "Test Failed for output of 7" severity error;	

	input <= "1000";
	en <= '1';
	reset <= '0';
	wait for period;
	assert (output = "1111111")
	report "Test Failed for output of 8" severity error;	

	input <= "1001";
	en <= '1';
	reset <= '0';
	wait for period;
	assert (output = "1111011")
	report "Test Failed for output of 9" severity error;

	input <= "1010";
	en <= '1';
	reset <= '0';
	wait for period;
	assert (output = "1110111")
	report "Test Failed for output of A" severity error;	

	input <= "1011";
	en <= '1';
	reset <= '0';
	wait for period;
	assert (output = "0011111")
	report "Test Failed for output of B" severity error;	

	input <= "1100";
	en <= '1';
	reset <= '0';
	wait for period;
	assert (output = "1001110")
	report "Test Failed for output of C" severity error;	

	input <= "1101";
	en <= '1';
	reset <= '0';
	wait for period;
	assert (output = "0111101")
	report "Test Failed for output of D" severity error;

	input <= "1110";
	en <= '1';
	reset <= '0';
	wait for period;
	assert (output = "1001111")
	report "Test Failed for output of E" severity error;

	input <= "1111";
	en <= '1';
	reset <= '0';
	wait for period;
	assert (output = "1000111")
	report "Test Failed for output of F" severity error;

	input <= "1111";
	en <= '0';
	reset <= '1';
	wait for period;
	assert (output = "0000000")
	report "Test Failed for output of reset" severity error;
	
	WAIT;                                                        
END PROCESS always;    

                                      
END seven_seg_decode_arch;
