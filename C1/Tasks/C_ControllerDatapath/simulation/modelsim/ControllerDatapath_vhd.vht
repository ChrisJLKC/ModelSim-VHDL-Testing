-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "02/25/2021 16:08:31"
                                                            
-- Vhdl Test Bench template for design  :  ControllerDatapath_vhd
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

LIBRARY work;
                            
ENTITY ControllerDatapath_vhd_tst IS
END ControllerDatapath_vhd_tst;
ARCHITECTURE ControllerDatapath_vhd_arch OF ControllerDatapath_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ACC : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL CLK : STD_LOGIC;
SIGNAL DATA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL EN_ACC : STD_LOGIC;
SIGNAL EN_R1 : STD_LOGIC;
SIGNAL EN_R2 : STD_LOGIC;
SIGNAL R1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL R2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL RESET : STD_LOGIC;
SIGNAL SEL_ACC : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL SEL_R1 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL SEL_R2 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL SEL_SUM : STD_LOGIC_VECTOR(1 DOWNTO 0);

-- Variable For RESET 
signal i : integer := 0;
-- Object for time period for Testing
constant period : time := 20 ps;

COMPONENT ControllerDatapath_vhd
	PORT (
	ACC : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	CLK : IN STD_LOGIC;
	DATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	EN_ACC : IN STD_LOGIC;
	EN_R1 : IN STD_LOGIC;
	EN_R2 : IN STD_LOGIC;
	R1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	R2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	RESET : IN STD_LOGIC;
	SEL_ACC : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	SEL_R1 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	SEL_R2 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	SEL_SUM : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ControllerDatapath_vhd
	PORT MAP (
-- list connections between master ports and signals
	ACC => ACC,
	CLK => CLK,
	DATA => DATA,
	EN_ACC => EN_ACC,
	EN_R1 => EN_R1,
	EN_R2 => EN_R2,
	R1 => R1,
	R2 => R2,
	RESET => RESET,
	SEL_ACC => SEL_ACC,
	SEL_R1 => SEL_R1,
	SEL_R2 => SEL_R2,
	SEL_SUM => SEL_SUM
	);
                                    
	-- Here is our process block for our RESET pin for our device. (Only runs once):
	PRO_RES : PROCESS
	BEGIN
		RESET <= '1';
		WAIT FOR period;
		RESET <= '0';
	
		WAIT;
	END PROCESS PRO_RES; 

	-- Here is our process block for our CLK pin for our device. (Runs until i = 1):
	PRO_CLK : PROCESS
	BEGIN
		CLK <= '1';
		WAIT FOR period;
		CLK <= '0';
		WAIT FOR period;

		-- Stops CLK:
		IF (i = 1) THEN
			WAIT;
		END IF;
	END PROCESS PRO_CLK;

	-- Here we detail what we want it to do, for testing:
	PRO_MAIN : PROCESS
	BEGIN
		-- To start, we will start loading R1 pin with a value:
		R1 <= "00000010";
		WAIT FOR period;
	
		-- Now assigning value above to R2:
		R2 <= R1;
		WAIT FOR period;
		ASSERT (R2 = "00000010")
		REPORT "Test failed in assigning R1 with R2" severity error;

		-- Now Loading pin ACC with a binary value:
		ACC <= "00000001";
		WAIT FOR period;

		-- Now assigning value above to R1:
		R1 <= ACC;
		WAIT FOR period;
		ASSERT (R1 = "00000001")
		REPORT "Test failed in assigned ACC with R1" severity error;

		-- Adding R1 to ACC:
		ACC <= unsigned(ACC) + unsigned(R1);
		WAIT FOR period;
		ASSERT (ACC = "00000010")
		REPORT "Test failed in addition with ACC and R1" severity error;
		
		-- Assigning pins again:
		R1 <= "01000000";
		R2 <= "00000000";
		ACC <= "00000001";
		WAIT FOR period;

		-- Assigning ACC to "00100000":
		R1 <= "00100000";
		R2 <= R1;
		ACC <= unsigned(ACC) + unsigned(R2);
		WAIT FOR period;
		ASSERT (ACC = "00100000")
		REPORT "Test failed in assigning ACC with 00100000" severity error;

		-- Calculating multiple added binary inputs:	
		ACC <= unsigned("00000001") + unsigned("00000001") + unsigned("10000000") + unsigned("01000000") + unsigned("00000001") + unsigned("00100000");
		WAIT FOR period;
		ASSERT (ACC = "11100011")
		REPORT "Test failed in calculating ACC" severity error;

		-- Detailing i is equal to 1, to stop CLK:
		i <= 1;
	
		WAIT;
	END PROCESS PRO_MAIN;
	                                                                              
END ControllerDatapath_vhd_arch;
