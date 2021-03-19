-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "03/19/2021 15:46:41"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ControllerDatapath IS
    PORT (
	ACC : OUT std_logic_vector(7 DOWNTO 0);
	CLK : IN std_logic;
	EN_ACC : IN std_logic;
	RESET : IN std_logic;
	SEL_ACC : IN std_logic_vector(1 DOWNTO 0);
	DATA : IN std_logic_vector(7 DOWNTO 0);
	EN_R1 : IN std_logic;
	SEL_R1 : IN std_logic_vector(1 DOWNTO 0);
	EN_R2 : IN std_logic;
	SEL_R2 : IN std_logic_vector(1 DOWNTO 0);
	SEL_SUM : IN std_logic_vector(1 DOWNTO 0);
	R1 : OUT std_logic_vector(7 DOWNTO 0);
	R2 : OUT std_logic_vector(7 DOWNTO 0)
	);
END ControllerDatapath;

-- Design Ports Information
-- ACC[7]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[6]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[5]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[4]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[7]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[5]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[1]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[7]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[5]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[0]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_ACC[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_ACC[0]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[7]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_SUM[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_SUM[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[6]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[4]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[2]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN_ACC	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_R1[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_R1[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN_R1	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_R2[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_R2[1]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN_R2	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ControllerDatapath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ACC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_EN_ACC : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_SEL_ACC : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_EN_R1 : std_logic;
SIGNAL ww_SEL_R1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_EN_R2 : std_logic;
SIGNAL ww_SEL_R2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SEL_SUM : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_R1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R2 : std_logic_vector(7 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ACC[7]~output_o\ : std_logic;
SIGNAL \ACC[6]~output_o\ : std_logic;
SIGNAL \ACC[5]~output_o\ : std_logic;
SIGNAL \ACC[4]~output_o\ : std_logic;
SIGNAL \ACC[3]~output_o\ : std_logic;
SIGNAL \ACC[2]~output_o\ : std_logic;
SIGNAL \ACC[1]~output_o\ : std_logic;
SIGNAL \ACC[0]~output_o\ : std_logic;
SIGNAL \R1[7]~output_o\ : std_logic;
SIGNAL \R1[6]~output_o\ : std_logic;
SIGNAL \R1[5]~output_o\ : std_logic;
SIGNAL \R1[4]~output_o\ : std_logic;
SIGNAL \R1[3]~output_o\ : std_logic;
SIGNAL \R1[2]~output_o\ : std_logic;
SIGNAL \R1[1]~output_o\ : std_logic;
SIGNAL \R1[0]~output_o\ : std_logic;
SIGNAL \R2[7]~output_o\ : std_logic;
SIGNAL \R2[6]~output_o\ : std_logic;
SIGNAL \R2[5]~output_o\ : std_logic;
SIGNAL \R2[4]~output_o\ : std_logic;
SIGNAL \R2[3]~output_o\ : std_logic;
SIGNAL \R2[2]~output_o\ : std_logic;
SIGNAL \R2[1]~output_o\ : std_logic;
SIGNAL \R2[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \DATA[7]~input_o\ : std_logic;
SIGNAL \SEL_R1[0]~input_o\ : std_logic;
SIGNAL \REG_R1|latched[7]~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \SEL_R1[1]~input_o\ : std_logic;
SIGNAL \REG_R1|latched[7]~8_combout\ : std_logic;
SIGNAL \EN_R1~input_o\ : std_logic;
SIGNAL \SEL_R2[0]~input_o\ : std_logic;
SIGNAL \REG_R2|latched[7]~0_combout\ : std_logic;
SIGNAL \SEL_R2[1]~input_o\ : std_logic;
SIGNAL \REG_R2|latched[7]~8_combout\ : std_logic;
SIGNAL \EN_R2~input_o\ : std_logic;
SIGNAL \SEL_ACC[0]~input_o\ : std_logic;
SIGNAL \SEL_ACC[1]~input_o\ : std_logic;
SIGNAL \MUX_ACC|Mux0~0_combout\ : std_logic;
SIGNAL \SEL_SUM[1]~input_o\ : std_logic;
SIGNAL \SEL_SUM[0]~input_o\ : std_logic;
SIGNAL \MUX_SUM|Mux0~0_combout\ : std_logic;
SIGNAL \MUX_SUM|Mux0~1_combout\ : std_logic;
SIGNAL \DATA[6]~input_o\ : std_logic;
SIGNAL \REG_R1|latched[6]~1_combout\ : std_logic;
SIGNAL \REG_R2|latched[6]~1_combout\ : std_logic;
SIGNAL \MUX_ACC|Mux1~0_combout\ : std_logic;
SIGNAL \MUX_SUM|Mux1~0_combout\ : std_logic;
SIGNAL \MUX_SUM|Mux1~1_combout\ : std_logic;
SIGNAL \DATA[5]~input_o\ : std_logic;
SIGNAL \DATA[4]~input_o\ : std_logic;
SIGNAL \REG_R1|latched[4]~3_combout\ : std_logic;
SIGNAL \REG_R2|latched[4]~3_combout\ : std_logic;
SIGNAL \MUX_ACC|Mux3~0_combout\ : std_logic;
SIGNAL \MUX_SUM|Mux3~0_combout\ : std_logic;
SIGNAL \MUX_SUM|Mux3~1_combout\ : std_logic;
SIGNAL \DATA[3]~input_o\ : std_logic;
SIGNAL \MUX_ACC|Mux4~0_combout\ : std_logic;
SIGNAL \REG_R2|latched[3]~4_combout\ : std_logic;
SIGNAL \DATA[2]~input_o\ : std_logic;
SIGNAL \REG_R1|latched[2]~5_combout\ : std_logic;
SIGNAL \REG_R2|latched[2]~5_combout\ : std_logic;
SIGNAL \MUX_ACC|Mux5~0_combout\ : std_logic;
SIGNAL \MUX_SUM|Mux5~0_combout\ : std_logic;
SIGNAL \MUX_SUM|Mux5~1_combout\ : std_logic;
SIGNAL \DATA[1]~input_o\ : std_logic;
SIGNAL \MUX_ACC|Mux6~0_combout\ : std_logic;
SIGNAL \DATA[0]~input_o\ : std_logic;
SIGNAL \MUX_ACC|Mux7~0_combout\ : std_logic;
SIGNAL \inst|result[0]~0_combout\ : std_logic;
SIGNAL \MUX_ACC|Mux7~1_combout\ : std_logic;
SIGNAL \EN_ACC~input_o\ : std_logic;
SIGNAL \REG_R1|latched[0]~7_combout\ : std_logic;
SIGNAL \REG_R2|latched[0]~7_combout\ : std_logic;
SIGNAL \MUX_SUM|Mux7~0_combout\ : std_logic;
SIGNAL \MUX_SUM|Mux7~1_combout\ : std_logic;
SIGNAL \inst|result[0]~1\ : std_logic;
SIGNAL \inst|result[1]~2_combout\ : std_logic;
SIGNAL \MUX_ACC|Mux6~1_combout\ : std_logic;
SIGNAL \REG_R1|latched[1]~6_combout\ : std_logic;
SIGNAL \REG_R2|latched[1]~6_combout\ : std_logic;
SIGNAL \MUX_SUM|Mux6~0_combout\ : std_logic;
SIGNAL \MUX_SUM|Mux6~1_combout\ : std_logic;
SIGNAL \inst|result[1]~3\ : std_logic;
SIGNAL \inst|result[2]~4_combout\ : std_logic;
SIGNAL \MUX_ACC|Mux5~1_combout\ : std_logic;
SIGNAL \inst|result[2]~5\ : std_logic;
SIGNAL \inst|result[3]~6_combout\ : std_logic;
SIGNAL \MUX_ACC|Mux4~1_combout\ : std_logic;
SIGNAL \REG_R1|latched[3]~4_combout\ : std_logic;
SIGNAL \MUX_SUM|Mux4~0_combout\ : std_logic;
SIGNAL \MUX_SUM|Mux4~1_combout\ : std_logic;
SIGNAL \inst|result[3]~7\ : std_logic;
SIGNAL \inst|result[4]~8_combout\ : std_logic;
SIGNAL \MUX_ACC|Mux3~1_combout\ : std_logic;
SIGNAL \inst|result[4]~9\ : std_logic;
SIGNAL \inst|result[5]~10_combout\ : std_logic;
SIGNAL \MUX_ACC|Mux2~0_combout\ : std_logic;
SIGNAL \MUX_ACC|Mux2~1_combout\ : std_logic;
SIGNAL \REG_R1|latched[5]~2_combout\ : std_logic;
SIGNAL \REG_R2|latched[5]~2_combout\ : std_logic;
SIGNAL \REG_R2|latched[5]~feeder_combout\ : std_logic;
SIGNAL \MUX_SUM|Mux2~0_combout\ : std_logic;
SIGNAL \MUX_SUM|Mux2~1_combout\ : std_logic;
SIGNAL \inst|result[5]~11\ : std_logic;
SIGNAL \inst|result[6]~12_combout\ : std_logic;
SIGNAL \MUX_ACC|Mux1~1_combout\ : std_logic;
SIGNAL \inst|result[6]~13\ : std_logic;
SIGNAL \inst|result[7]~14_combout\ : std_logic;
SIGNAL \MUX_ACC|Mux0~1_combout\ : std_logic;
SIGNAL \REG_R1|latched\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG_R2|latched\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG_ACC|latched\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ACC <= ww_ACC;
ww_CLK <= CLK;
ww_EN_ACC <= EN_ACC;
ww_RESET <= RESET;
ww_SEL_ACC <= SEL_ACC;
ww_DATA <= DATA;
ww_EN_R1 <= EN_R1;
ww_SEL_R1 <= SEL_R1;
ww_EN_R2 <= EN_R2;
ww_SEL_R2 <= SEL_R2;
ww_SEL_SUM <= SEL_SUM;
R1 <= ww_R1;
R2 <= ww_R2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X43_Y34_N23
\ACC[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_ACC|latched\(7),
	devoe => ww_devoe,
	o => \ACC[7]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\ACC[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_ACC|latched\(6),
	devoe => ww_devoe,
	o => \ACC[6]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\ACC[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_ACC|latched\(5),
	devoe => ww_devoe,
	o => \ACC[5]~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\ACC[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_ACC|latched\(4),
	devoe => ww_devoe,
	o => \ACC[4]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\ACC[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_ACC|latched\(3),
	devoe => ww_devoe,
	o => \ACC[3]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\ACC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_ACC|latched\(2),
	devoe => ww_devoe,
	o => \ACC[2]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\ACC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_ACC|latched\(1),
	devoe => ww_devoe,
	o => \ACC[1]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\ACC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_ACC|latched\(0),
	devoe => ww_devoe,
	o => \ACC[0]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\R1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_R1|latched\(7),
	devoe => ww_devoe,
	o => \R1[7]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\R1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_R1|latched\(6),
	devoe => ww_devoe,
	o => \R1[6]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\R1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_R1|latched\(5),
	devoe => ww_devoe,
	o => \R1[5]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\R1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_R1|latched\(4),
	devoe => ww_devoe,
	o => \R1[4]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\R1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_R1|latched\(3),
	devoe => ww_devoe,
	o => \R1[3]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\R1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_R1|latched\(2),
	devoe => ww_devoe,
	o => \R1[2]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\R1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_R1|latched\(1),
	devoe => ww_devoe,
	o => \R1[1]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\R1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_R1|latched\(0),
	devoe => ww_devoe,
	o => \R1[0]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\R2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_R2|latched\(7),
	devoe => ww_devoe,
	o => \R2[7]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\R2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_R2|latched\(6),
	devoe => ww_devoe,
	o => \R2[6]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\R2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_R2|latched\(5),
	devoe => ww_devoe,
	o => \R2[5]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\R2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_R2|latched\(4),
	devoe => ww_devoe,
	o => \R2[4]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\R2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_R2|latched\(3),
	devoe => ww_devoe,
	o => \R2[3]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\R2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_R2|latched\(2),
	devoe => ww_devoe,
	o => \R2[2]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\R2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_R2|latched\(1),
	devoe => ww_devoe,
	o => \R2[1]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\R2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_R2|latched\(0),
	devoe => ww_devoe,
	o => \R2[0]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X23_Y34_N15
\DATA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(7),
	o => \DATA[7]~input_o\);

-- Location: IOIBUF_X45_Y34_N8
\SEL_R1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL_R1(0),
	o => \SEL_R1[0]~input_o\);

-- Location: LCCOMB_X38_Y30_N8
\REG_R1|latched[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_R1|latched[7]~0_combout\ = (\SEL_R1[0]~input_o\ & ((\REG_ACC|latched\(7)))) # (!\SEL_R1[0]~input_o\ & (\DATA[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[7]~input_o\,
	datab => \REG_ACC|latched\(7),
	datad => \SEL_R1[0]~input_o\,
	combout => \REG_R1|latched[7]~0_combout\);

-- Location: IOIBUF_X0_Y16_N15
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G4
\RESET~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: IOIBUF_X51_Y34_N8
\SEL_R1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL_R1(1),
	o => \SEL_R1[1]~input_o\);

-- Location: LCCOMB_X38_Y30_N6
\REG_R1|latched[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_R1|latched[7]~8_combout\ = (\SEL_R1[0]~input_o\ & \SEL_R1[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL_R1[0]~input_o\,
	datad => \SEL_R1[1]~input_o\,
	combout => \REG_R1|latched[7]~8_combout\);

-- Location: IOIBUF_X45_Y34_N1
\EN_R1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN_R1,
	o => \EN_R1~input_o\);

-- Location: FF_X38_Y30_N9
\REG_R1|latched[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG_R1|latched[7]~0_combout\,
	asdata => \REG_R2|latched\(7),
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \REG_R1|latched[7]~8_combout\,
	sload => \SEL_R1[1]~input_o\,
	ena => \EN_R1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_R1|latched\(7));

-- Location: IOIBUF_X40_Y34_N8
\SEL_R2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL_R2(0),
	o => \SEL_R2[0]~input_o\);

-- Location: LCCOMB_X39_Y30_N28
\REG_R2|latched[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_R2|latched[7]~0_combout\ = (\SEL_R2[0]~input_o\ & (\REG_R1|latched\(7))) # (!\SEL_R2[0]~input_o\ & ((\DATA[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_R1|latched\(7),
	datab => \DATA[7]~input_o\,
	datad => \SEL_R2[0]~input_o\,
	combout => \REG_R2|latched[7]~0_combout\);

-- Location: IOIBUF_X14_Y34_N22
\SEL_R2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL_R2(1),
	o => \SEL_R2[1]~input_o\);

-- Location: LCCOMB_X35_Y30_N24
\REG_R2|latched[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_R2|latched[7]~8_combout\ = (\SEL_R2[0]~input_o\ & \SEL_R2[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SEL_R2[0]~input_o\,
	datad => \SEL_R2[1]~input_o\,
	combout => \REG_R2|latched[7]~8_combout\);

-- Location: IOIBUF_X14_Y34_N15
\EN_R2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN_R2,
	o => \EN_R2~input_o\);

-- Location: FF_X39_Y30_N29
\REG_R2|latched[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG_R2|latched[7]~0_combout\,
	asdata => \REG_ACC|latched\(7),
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \REG_R2|latched[7]~8_combout\,
	sload => \SEL_R2[1]~input_o\,
	ena => \EN_R2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_R2|latched\(7));

-- Location: IOIBUF_X27_Y0_N1
\SEL_ACC[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL_ACC(0),
	o => \SEL_ACC[0]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\SEL_ACC[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL_ACC(1),
	o => \SEL_ACC[1]~input_o\);

-- Location: LCCOMB_X38_Y30_N28
\MUX_ACC|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ACC|Mux0~0_combout\ = (\SEL_ACC[0]~input_o\ & ((\SEL_ACC[1]~input_o\) # ((\REG_R1|latched\(7))))) # (!\SEL_ACC[0]~input_o\ & (!\SEL_ACC[1]~input_o\ & ((\DATA[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ACC[0]~input_o\,
	datab => \SEL_ACC[1]~input_o\,
	datac => \REG_R1|latched\(7),
	datad => \DATA[7]~input_o\,
	combout => \MUX_ACC|Mux0~0_combout\);

-- Location: IOIBUF_X43_Y34_N15
\SEL_SUM[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL_SUM(1),
	o => \SEL_SUM[1]~input_o\);

-- Location: IOIBUF_X40_Y34_N1
\SEL_SUM[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL_SUM(0),
	o => \SEL_SUM[0]~input_o\);

-- Location: LCCOMB_X38_Y30_N26
\MUX_SUM|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_SUM|Mux0~0_combout\ = (!\SEL_SUM[1]~input_o\ & ((\SEL_SUM[0]~input_o\ & ((\REG_R1|latched\(7)))) # (!\SEL_SUM[0]~input_o\ & (\DATA[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[7]~input_o\,
	datab => \SEL_SUM[0]~input_o\,
	datac => \REG_R1|latched\(7),
	datad => \SEL_SUM[1]~input_o\,
	combout => \MUX_SUM|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y30_N24
\MUX_SUM|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_SUM|Mux0~1_combout\ = (\MUX_SUM|Mux0~0_combout\) # ((\SEL_SUM[1]~input_o\ & (!\SEL_SUM[0]~input_o\ & \REG_R2|latched\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_SUM[1]~input_o\,
	datab => \SEL_SUM[0]~input_o\,
	datac => \MUX_SUM|Mux0~0_combout\,
	datad => \REG_R2|latched\(7),
	combout => \MUX_SUM|Mux0~1_combout\);

-- Location: IOIBUF_X16_Y34_N15
\DATA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(6),
	o => \DATA[6]~input_o\);

-- Location: LCCOMB_X38_Y30_N30
\REG_R1|latched[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_R1|latched[6]~1_combout\ = (\SEL_R1[0]~input_o\ & (\REG_ACC|latched\(6))) # (!\SEL_R1[0]~input_o\ & ((\DATA[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ACC|latched\(6),
	datab => \DATA[6]~input_o\,
	datad => \SEL_R1[0]~input_o\,
	combout => \REG_R1|latched[6]~1_combout\);

-- Location: LCCOMB_X39_Y30_N26
\REG_R2|latched[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_R2|latched[6]~1_combout\ = (\SEL_R2[0]~input_o\ & ((\REG_R1|latched\(6)))) # (!\SEL_R2[0]~input_o\ & (\DATA[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[6]~input_o\,
	datab => \REG_R1|latched\(6),
	datad => \SEL_R2[0]~input_o\,
	combout => \REG_R2|latched[6]~1_combout\);

-- Location: FF_X39_Y30_N27
\REG_R2|latched[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG_R2|latched[6]~1_combout\,
	asdata => \REG_ACC|latched\(6),
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \REG_R2|latched[7]~8_combout\,
	sload => \SEL_R2[1]~input_o\,
	ena => \EN_R2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_R2|latched\(6));

-- Location: FF_X38_Y30_N31
\REG_R1|latched[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG_R1|latched[6]~1_combout\,
	asdata => \REG_R2|latched\(6),
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \REG_R1|latched[7]~8_combout\,
	sload => \SEL_R1[1]~input_o\,
	ena => \EN_R1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_R1|latched\(6));

-- Location: LCCOMB_X38_Y30_N10
\MUX_ACC|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ACC|Mux1~0_combout\ = (\SEL_ACC[0]~input_o\ & (((\SEL_ACC[1]~input_o\)))) # (!\SEL_ACC[0]~input_o\ & ((\SEL_ACC[1]~input_o\ & ((\REG_R2|latched\(6)))) # (!\SEL_ACC[1]~input_o\ & (\DATA[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ACC[0]~input_o\,
	datab => \DATA[6]~input_o\,
	datac => \REG_R2|latched\(6),
	datad => \SEL_ACC[1]~input_o\,
	combout => \MUX_ACC|Mux1~0_combout\);

-- Location: LCCOMB_X38_Y30_N22
\MUX_SUM|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_SUM|Mux1~0_combout\ = (!\SEL_SUM[1]~input_o\ & ((\SEL_SUM[0]~input_o\ & (\REG_R1|latched\(6))) # (!\SEL_SUM[0]~input_o\ & ((\DATA[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_SUM[1]~input_o\,
	datab => \SEL_SUM[0]~input_o\,
	datac => \REG_R1|latched\(6),
	datad => \DATA[6]~input_o\,
	combout => \MUX_SUM|Mux1~0_combout\);

-- Location: LCCOMB_X38_Y30_N0
\MUX_SUM|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_SUM|Mux1~1_combout\ = (\MUX_SUM|Mux1~0_combout\) # ((\SEL_SUM[1]~input_o\ & (!\SEL_SUM[0]~input_o\ & \REG_R2|latched\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_SUM[1]~input_o\,
	datab => \SEL_SUM[0]~input_o\,
	datac => \MUX_SUM|Mux1~0_combout\,
	datad => \REG_R2|latched\(6),
	combout => \MUX_SUM|Mux1~1_combout\);

-- Location: IOIBUF_X49_Y34_N8
\DATA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(5),
	o => \DATA[5]~input_o\);

-- Location: IOIBUF_X23_Y34_N22
\DATA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(4),
	o => \DATA[4]~input_o\);

-- Location: LCCOMB_X36_Y30_N12
\REG_R1|latched[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_R1|latched[4]~3_combout\ = (\SEL_R1[0]~input_o\ & ((\REG_ACC|latched\(4)))) # (!\SEL_R1[0]~input_o\ & (\DATA[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[4]~input_o\,
	datab => \SEL_R1[0]~input_o\,
	datad => \REG_ACC|latched\(4),
	combout => \REG_R1|latched[4]~3_combout\);

-- Location: LCCOMB_X35_Y30_N16
\REG_R2|latched[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_R2|latched[4]~3_combout\ = (\SEL_R2[0]~input_o\ & ((\REG_R1|latched\(4)))) # (!\SEL_R2[0]~input_o\ & (\DATA[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[4]~input_o\,
	datab => \SEL_R2[0]~input_o\,
	datad => \REG_R1|latched\(4),
	combout => \REG_R2|latched[4]~3_combout\);

-- Location: FF_X35_Y30_N17
\REG_R2|latched[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG_R2|latched[4]~3_combout\,
	asdata => \REG_ACC|latched\(4),
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \REG_R2|latched[7]~8_combout\,
	sload => \SEL_R2[1]~input_o\,
	ena => \EN_R2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_R2|latched\(4));

-- Location: FF_X36_Y30_N13
\REG_R1|latched[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG_R1|latched[4]~3_combout\,
	asdata => \REG_R2|latched\(4),
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \REG_R1|latched[7]~8_combout\,
	sload => \SEL_R1[1]~input_o\,
	ena => \EN_R1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_R1|latched\(4));

-- Location: LCCOMB_X35_Y30_N30
\MUX_ACC|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ACC|Mux3~0_combout\ = (\SEL_ACC[1]~input_o\ & (((\SEL_ACC[0]~input_o\) # (\REG_R2|latched\(4))))) # (!\SEL_ACC[1]~input_o\ & (\DATA[4]~input_o\ & (!\SEL_ACC[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[4]~input_o\,
	datab => \SEL_ACC[1]~input_o\,
	datac => \SEL_ACC[0]~input_o\,
	datad => \REG_R2|latched\(4),
	combout => \MUX_ACC|Mux3~0_combout\);

-- Location: LCCOMB_X36_Y30_N28
\MUX_SUM|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_SUM|Mux3~0_combout\ = (!\SEL_SUM[1]~input_o\ & ((\SEL_SUM[0]~input_o\ & ((\REG_R1|latched\(4)))) # (!\SEL_SUM[0]~input_o\ & (\DATA[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_SUM[1]~input_o\,
	datab => \SEL_SUM[0]~input_o\,
	datac => \DATA[4]~input_o\,
	datad => \REG_R1|latched\(4),
	combout => \MUX_SUM|Mux3~0_combout\);

-- Location: LCCOMB_X36_Y30_N22
\MUX_SUM|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_SUM|Mux3~1_combout\ = (\MUX_SUM|Mux3~0_combout\) # ((\SEL_SUM[1]~input_o\ & (!\SEL_SUM[0]~input_o\ & \REG_R2|latched\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_SUM[1]~input_o\,
	datab => \SEL_SUM[0]~input_o\,
	datac => \REG_R2|latched\(4),
	datad => \MUX_SUM|Mux3~0_combout\,
	combout => \MUX_SUM|Mux3~1_combout\);

-- Location: IOIBUF_X36_Y0_N8
\DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(3),
	o => \DATA[3]~input_o\);

-- Location: LCCOMB_X35_Y30_N12
\MUX_ACC|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ACC|Mux4~0_combout\ = (\SEL_ACC[1]~input_o\ & (((\SEL_ACC[0]~input_o\)))) # (!\SEL_ACC[1]~input_o\ & ((\SEL_ACC[0]~input_o\ & (\REG_R1|latched\(3))) # (!\SEL_ACC[0]~input_o\ & ((\DATA[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_R1|latched\(3),
	datab => \SEL_ACC[1]~input_o\,
	datac => \SEL_ACC[0]~input_o\,
	datad => \DATA[3]~input_o\,
	combout => \MUX_ACC|Mux4~0_combout\);

-- Location: LCCOMB_X35_Y30_N2
\REG_R2|latched[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_R2|latched[3]~4_combout\ = (\SEL_R2[0]~input_o\ & (\REG_R1|latched\(3))) # (!\SEL_R2[0]~input_o\ & ((\DATA[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_R1|latched\(3),
	datab => \SEL_R2[0]~input_o\,
	datad => \DATA[3]~input_o\,
	combout => \REG_R2|latched[3]~4_combout\);

-- Location: FF_X35_Y30_N3
\REG_R2|latched[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG_R2|latched[3]~4_combout\,
	asdata => \REG_ACC|latched\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \REG_R2|latched[7]~8_combout\,
	sload => \SEL_R2[1]~input_o\,
	ena => \EN_R2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_R2|latched\(3));

-- Location: IOIBUF_X36_Y0_N22
\DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(2),
	o => \DATA[2]~input_o\);

-- Location: LCCOMB_X36_Y30_N20
\REG_R1|latched[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_R1|latched[2]~5_combout\ = (\SEL_R1[0]~input_o\ & ((\REG_ACC|latched\(2)))) # (!\SEL_R1[0]~input_o\ & (\DATA[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[2]~input_o\,
	datab => \SEL_R1[0]~input_o\,
	datad => \REG_ACC|latched\(2),
	combout => \REG_R1|latched[2]~5_combout\);

-- Location: FF_X36_Y30_N21
\REG_R1|latched[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG_R1|latched[2]~5_combout\,
	asdata => \REG_R2|latched\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \REG_R1|latched[7]~8_combout\,
	sload => \SEL_R1[1]~input_o\,
	ena => \EN_R1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_R1|latched\(2));

-- Location: LCCOMB_X35_Y30_N4
\REG_R2|latched[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_R2|latched[2]~5_combout\ = (\SEL_R2[0]~input_o\ & (\REG_R1|latched\(2))) # (!\SEL_R2[0]~input_o\ & ((\DATA[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_R1|latched\(2),
	datab => \SEL_R2[0]~input_o\,
	datad => \DATA[2]~input_o\,
	combout => \REG_R2|latched[2]~5_combout\);

-- Location: FF_X35_Y30_N5
\REG_R2|latched[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG_R2|latched[2]~5_combout\,
	asdata => \REG_ACC|latched\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \REG_R2|latched[7]~8_combout\,
	sload => \SEL_R2[1]~input_o\,
	ena => \EN_R2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_R2|latched\(2));

-- Location: LCCOMB_X35_Y30_N6
\MUX_ACC|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ACC|Mux5~0_combout\ = (\SEL_ACC[1]~input_o\ & ((\REG_R2|latched\(2)) # ((\SEL_ACC[0]~input_o\)))) # (!\SEL_ACC[1]~input_o\ & (((!\SEL_ACC[0]~input_o\ & \DATA[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ACC[1]~input_o\,
	datab => \REG_R2|latched\(2),
	datac => \SEL_ACC[0]~input_o\,
	datad => \DATA[2]~input_o\,
	combout => \MUX_ACC|Mux5~0_combout\);

-- Location: LCCOMB_X36_Y30_N24
\MUX_SUM|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_SUM|Mux5~0_combout\ = (!\SEL_SUM[1]~input_o\ & ((\SEL_SUM[0]~input_o\ & ((\REG_R1|latched\(2)))) # (!\SEL_SUM[0]~input_o\ & (\DATA[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_SUM[1]~input_o\,
	datab => \SEL_SUM[0]~input_o\,
	datac => \DATA[2]~input_o\,
	datad => \REG_R1|latched\(2),
	combout => \MUX_SUM|Mux5~0_combout\);

-- Location: LCCOMB_X36_Y30_N6
\MUX_SUM|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_SUM|Mux5~1_combout\ = (\MUX_SUM|Mux5~0_combout\) # ((\SEL_SUM[1]~input_o\ & (!\SEL_SUM[0]~input_o\ & \REG_R2|latched\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_SUM[1]~input_o\,
	datab => \SEL_SUM[0]~input_o\,
	datac => \REG_R2|latched\(2),
	datad => \MUX_SUM|Mux5~0_combout\,
	combout => \MUX_SUM|Mux5~1_combout\);

-- Location: IOIBUF_X38_Y34_N1
\DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(1),
	o => \DATA[1]~input_o\);

-- Location: LCCOMB_X35_Y30_N8
\MUX_ACC|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ACC|Mux6~0_combout\ = (\SEL_ACC[1]~input_o\ & (((\SEL_ACC[0]~input_o\)))) # (!\SEL_ACC[1]~input_o\ & ((\SEL_ACC[0]~input_o\ & (\REG_R1|latched\(1))) # (!\SEL_ACC[0]~input_o\ & ((\DATA[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_R1|latched\(1),
	datab => \SEL_ACC[1]~input_o\,
	datac => \SEL_ACC[0]~input_o\,
	datad => \DATA[1]~input_o\,
	combout => \MUX_ACC|Mux6~0_combout\);

-- Location: IOIBUF_X49_Y34_N1
\DATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(0),
	o => \DATA[0]~input_o\);

-- Location: LCCOMB_X35_Y30_N14
\MUX_ACC|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ACC|Mux7~0_combout\ = (\SEL_ACC[1]~input_o\ & (((\SEL_ACC[0]~input_o\) # (\REG_R2|latched\(0))))) # (!\SEL_ACC[1]~input_o\ & (\DATA[0]~input_o\ & (!\SEL_ACC[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[0]~input_o\,
	datab => \SEL_ACC[1]~input_o\,
	datac => \SEL_ACC[0]~input_o\,
	datad => \REG_R2|latched\(0),
	combout => \MUX_ACC|Mux7~0_combout\);

-- Location: LCCOMB_X37_Y30_N4
\inst|result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|result[0]~0_combout\ = (\MUX_SUM|Mux7~1_combout\ & (\REG_ACC|latched\(0) $ (VCC))) # (!\MUX_SUM|Mux7~1_combout\ & (\REG_ACC|latched\(0) & VCC))
-- \inst|result[0]~1\ = CARRY((\MUX_SUM|Mux7~1_combout\ & \REG_ACC|latched\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_SUM|Mux7~1_combout\,
	datab => \REG_ACC|latched\(0),
	datad => VCC,
	combout => \inst|result[0]~0_combout\,
	cout => \inst|result[0]~1\);

-- Location: LCCOMB_X36_Y30_N30
\MUX_ACC|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ACC|Mux7~1_combout\ = (\SEL_ACC[0]~input_o\ & ((\MUX_ACC|Mux7~0_combout\ & ((\inst|result[0]~0_combout\))) # (!\MUX_ACC|Mux7~0_combout\ & (\REG_R1|latched\(0))))) # (!\SEL_ACC[0]~input_o\ & (((\MUX_ACC|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_R1|latched\(0),
	datab => \SEL_ACC[0]~input_o\,
	datac => \MUX_ACC|Mux7~0_combout\,
	datad => \inst|result[0]~0_combout\,
	combout => \MUX_ACC|Mux7~1_combout\);

-- Location: IOIBUF_X51_Y34_N1
\EN_ACC~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN_ACC,
	o => \EN_ACC~input_o\);

-- Location: FF_X36_Y30_N31
\REG_ACC|latched[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MUX_ACC|Mux7~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \EN_ACC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ACC|latched\(0));

-- Location: LCCOMB_X36_Y30_N0
\REG_R1|latched[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_R1|latched[0]~7_combout\ = (\SEL_R1[0]~input_o\ & ((\REG_ACC|latched\(0)))) # (!\SEL_R1[0]~input_o\ & (\DATA[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[0]~input_o\,
	datab => \SEL_R1[0]~input_o\,
	datad => \REG_ACC|latched\(0),
	combout => \REG_R1|latched[0]~7_combout\);

-- Location: FF_X36_Y30_N1
\REG_R1|latched[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG_R1|latched[0]~7_combout\,
	asdata => \REG_R2|latched\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \REG_R1|latched[7]~8_combout\,
	sload => \SEL_R1[1]~input_o\,
	ena => \EN_R1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_R1|latched\(0));

-- Location: LCCOMB_X35_Y30_N0
\REG_R2|latched[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_R2|latched[0]~7_combout\ = (\SEL_R2[0]~input_o\ & (\REG_R1|latched\(0))) # (!\SEL_R2[0]~input_o\ & ((\DATA[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_R1|latched\(0),
	datab => \SEL_R2[0]~input_o\,
	datad => \DATA[0]~input_o\,
	combout => \REG_R2|latched[0]~7_combout\);

-- Location: FF_X35_Y30_N1
\REG_R2|latched[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG_R2|latched[0]~7_combout\,
	asdata => \REG_ACC|latched\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \REG_R2|latched[7]~8_combout\,
	sload => \SEL_R2[1]~input_o\,
	ena => \EN_R2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_R2|latched\(0));

-- Location: LCCOMB_X36_Y30_N18
\MUX_SUM|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_SUM|Mux7~0_combout\ = (!\SEL_SUM[1]~input_o\ & ((\SEL_SUM[0]~input_o\ & ((\REG_R1|latched\(0)))) # (!\SEL_SUM[0]~input_o\ & (\DATA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_SUM[1]~input_o\,
	datab => \SEL_SUM[0]~input_o\,
	datac => \DATA[0]~input_o\,
	datad => \REG_R1|latched\(0),
	combout => \MUX_SUM|Mux7~0_combout\);

-- Location: LCCOMB_X36_Y30_N16
\MUX_SUM|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_SUM|Mux7~1_combout\ = (\MUX_SUM|Mux7~0_combout\) # ((\SEL_SUM[1]~input_o\ & (!\SEL_SUM[0]~input_o\ & \REG_R2|latched\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_SUM[1]~input_o\,
	datab => \SEL_SUM[0]~input_o\,
	datac => \REG_R2|latched\(0),
	datad => \MUX_SUM|Mux7~0_combout\,
	combout => \MUX_SUM|Mux7~1_combout\);

-- Location: LCCOMB_X37_Y30_N6
\inst|result[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|result[1]~2_combout\ = (\MUX_SUM|Mux6~1_combout\ & ((\REG_ACC|latched\(1) & (\inst|result[0]~1\ & VCC)) # (!\REG_ACC|latched\(1) & (!\inst|result[0]~1\)))) # (!\MUX_SUM|Mux6~1_combout\ & ((\REG_ACC|latched\(1) & (!\inst|result[0]~1\)) # 
-- (!\REG_ACC|latched\(1) & ((\inst|result[0]~1\) # (GND)))))
-- \inst|result[1]~3\ = CARRY((\MUX_SUM|Mux6~1_combout\ & (!\REG_ACC|latched\(1) & !\inst|result[0]~1\)) # (!\MUX_SUM|Mux6~1_combout\ & ((!\inst|result[0]~1\) # (!\REG_ACC|latched\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_SUM|Mux6~1_combout\,
	datab => \REG_ACC|latched\(1),
	datad => VCC,
	cin => \inst|result[0]~1\,
	combout => \inst|result[1]~2_combout\,
	cout => \inst|result[1]~3\);

-- Location: LCCOMB_X37_Y30_N20
\MUX_ACC|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ACC|Mux6~1_combout\ = (\SEL_ACC[1]~input_o\ & ((\MUX_ACC|Mux6~0_combout\ & ((\inst|result[1]~2_combout\))) # (!\MUX_ACC|Mux6~0_combout\ & (\REG_R2|latched\(1))))) # (!\SEL_ACC[1]~input_o\ & (\MUX_ACC|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ACC[1]~input_o\,
	datab => \MUX_ACC|Mux6~0_combout\,
	datac => \REG_R2|latched\(1),
	datad => \inst|result[1]~2_combout\,
	combout => \MUX_ACC|Mux6~1_combout\);

-- Location: FF_X37_Y30_N21
\REG_ACC|latched[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MUX_ACC|Mux6~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \EN_ACC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ACC|latched\(1));

-- Location: LCCOMB_X36_Y30_N10
\REG_R1|latched[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_R1|latched[1]~6_combout\ = (\SEL_R1[0]~input_o\ & ((\REG_ACC|latched\(1)))) # (!\SEL_R1[0]~input_o\ & (\DATA[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[1]~input_o\,
	datab => \REG_ACC|latched\(1),
	datad => \SEL_R1[0]~input_o\,
	combout => \REG_R1|latched[1]~6_combout\);

-- Location: FF_X36_Y30_N11
\REG_R1|latched[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG_R1|latched[1]~6_combout\,
	asdata => \REG_R2|latched\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \REG_R1|latched[7]~8_combout\,
	sload => \SEL_R1[1]~input_o\,
	ena => \EN_R1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_R1|latched\(1));

-- Location: LCCOMB_X35_Y30_N22
\REG_R2|latched[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_R2|latched[1]~6_combout\ = (\SEL_R2[0]~input_o\ & (\REG_R1|latched\(1))) # (!\SEL_R2[0]~input_o\ & ((\DATA[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_R1|latched\(1),
	datab => \SEL_R2[0]~input_o\,
	datad => \DATA[1]~input_o\,
	combout => \REG_R2|latched[1]~6_combout\);

-- Location: FF_X35_Y30_N23
\REG_R2|latched[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG_R2|latched[1]~6_combout\,
	asdata => \REG_ACC|latched\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \REG_R2|latched[7]~8_combout\,
	sload => \SEL_R2[1]~input_o\,
	ena => \EN_R2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_R2|latched\(1));

-- Location: LCCOMB_X36_Y30_N8
\MUX_SUM|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_SUM|Mux6~0_combout\ = (!\SEL_SUM[1]~input_o\ & ((\SEL_SUM[0]~input_o\ & ((\REG_R1|latched\(1)))) # (!\SEL_SUM[0]~input_o\ & (\DATA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_SUM[1]~input_o\,
	datab => \SEL_SUM[0]~input_o\,
	datac => \DATA[1]~input_o\,
	datad => \REG_R1|latched\(1),
	combout => \MUX_SUM|Mux6~0_combout\);

-- Location: LCCOMB_X37_Y30_N22
\MUX_SUM|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_SUM|Mux6~1_combout\ = (\MUX_SUM|Mux6~0_combout\) # ((\SEL_SUM[1]~input_o\ & (!\SEL_SUM[0]~input_o\ & \REG_R2|latched\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_SUM[1]~input_o\,
	datab => \SEL_SUM[0]~input_o\,
	datac => \REG_R2|latched\(1),
	datad => \MUX_SUM|Mux6~0_combout\,
	combout => \MUX_SUM|Mux6~1_combout\);

-- Location: LCCOMB_X37_Y30_N8
\inst|result[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|result[2]~4_combout\ = ((\REG_ACC|latched\(2) $ (\MUX_SUM|Mux5~1_combout\ $ (!\inst|result[1]~3\)))) # (GND)
-- \inst|result[2]~5\ = CARRY((\REG_ACC|latched\(2) & ((\MUX_SUM|Mux5~1_combout\) # (!\inst|result[1]~3\))) # (!\REG_ACC|latched\(2) & (\MUX_SUM|Mux5~1_combout\ & !\inst|result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ACC|latched\(2),
	datab => \MUX_SUM|Mux5~1_combout\,
	datad => VCC,
	cin => \inst|result[1]~3\,
	combout => \inst|result[2]~4_combout\,
	cout => \inst|result[2]~5\);

-- Location: LCCOMB_X37_Y30_N2
\MUX_ACC|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ACC|Mux5~1_combout\ = (\MUX_ACC|Mux5~0_combout\ & (((\inst|result[2]~4_combout\) # (!\SEL_ACC[0]~input_o\)))) # (!\MUX_ACC|Mux5~0_combout\ & (\REG_R1|latched\(2) & ((\SEL_ACC[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_ACC|Mux5~0_combout\,
	datab => \REG_R1|latched\(2),
	datac => \inst|result[2]~4_combout\,
	datad => \SEL_ACC[0]~input_o\,
	combout => \MUX_ACC|Mux5~1_combout\);

-- Location: FF_X37_Y30_N3
\REG_ACC|latched[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MUX_ACC|Mux5~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \EN_ACC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ACC|latched\(2));

-- Location: LCCOMB_X37_Y30_N10
\inst|result[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|result[3]~6_combout\ = (\MUX_SUM|Mux4~1_combout\ & ((\REG_ACC|latched\(3) & (\inst|result[2]~5\ & VCC)) # (!\REG_ACC|latched\(3) & (!\inst|result[2]~5\)))) # (!\MUX_SUM|Mux4~1_combout\ & ((\REG_ACC|latched\(3) & (!\inst|result[2]~5\)) # 
-- (!\REG_ACC|latched\(3) & ((\inst|result[2]~5\) # (GND)))))
-- \inst|result[3]~7\ = CARRY((\MUX_SUM|Mux4~1_combout\ & (!\REG_ACC|latched\(3) & !\inst|result[2]~5\)) # (!\MUX_SUM|Mux4~1_combout\ & ((!\inst|result[2]~5\) # (!\REG_ACC|latched\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_SUM|Mux4~1_combout\,
	datab => \REG_ACC|latched\(3),
	datad => VCC,
	cin => \inst|result[2]~5\,
	combout => \inst|result[3]~6_combout\,
	cout => \inst|result[3]~7\);

-- Location: LCCOMB_X37_Y30_N24
\MUX_ACC|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ACC|Mux4~1_combout\ = (\SEL_ACC[1]~input_o\ & ((\MUX_ACC|Mux4~0_combout\ & ((\inst|result[3]~6_combout\))) # (!\MUX_ACC|Mux4~0_combout\ & (\REG_R2|latched\(3))))) # (!\SEL_ACC[1]~input_o\ & (\MUX_ACC|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ACC[1]~input_o\,
	datab => \MUX_ACC|Mux4~0_combout\,
	datac => \REG_R2|latched\(3),
	datad => \inst|result[3]~6_combout\,
	combout => \MUX_ACC|Mux4~1_combout\);

-- Location: FF_X37_Y30_N25
\REG_ACC|latched[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MUX_ACC|Mux4~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \EN_ACC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ACC|latched\(3));

-- Location: LCCOMB_X36_Y30_N2
\REG_R1|latched[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_R1|latched[3]~4_combout\ = (\SEL_R1[0]~input_o\ & ((\REG_ACC|latched\(3)))) # (!\SEL_R1[0]~input_o\ & (\DATA[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[3]~input_o\,
	datab => \SEL_R1[0]~input_o\,
	datad => \REG_ACC|latched\(3),
	combout => \REG_R1|latched[3]~4_combout\);

-- Location: FF_X36_Y30_N3
\REG_R1|latched[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG_R1|latched[3]~4_combout\,
	asdata => \REG_R2|latched\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \REG_R1|latched[7]~8_combout\,
	sload => \SEL_R1[1]~input_o\,
	ena => \EN_R1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_R1|latched\(3));

-- Location: LCCOMB_X36_Y30_N4
\MUX_SUM|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_SUM|Mux4~0_combout\ = (!\SEL_SUM[1]~input_o\ & ((\SEL_SUM[0]~input_o\ & ((\REG_R1|latched\(3)))) # (!\SEL_SUM[0]~input_o\ & (\DATA[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_SUM[1]~input_o\,
	datab => \SEL_SUM[0]~input_o\,
	datac => \DATA[3]~input_o\,
	datad => \REG_R1|latched\(3),
	combout => \MUX_SUM|Mux4~0_combout\);

-- Location: LCCOMB_X36_Y30_N14
\MUX_SUM|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_SUM|Mux4~1_combout\ = (\MUX_SUM|Mux4~0_combout\) # ((\SEL_SUM[1]~input_o\ & (!\SEL_SUM[0]~input_o\ & \REG_R2|latched\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_SUM[1]~input_o\,
	datab => \SEL_SUM[0]~input_o\,
	datac => \MUX_SUM|Mux4~0_combout\,
	datad => \REG_R2|latched\(3),
	combout => \MUX_SUM|Mux4~1_combout\);

-- Location: LCCOMB_X37_Y30_N12
\inst|result[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|result[4]~8_combout\ = ((\REG_ACC|latched\(4) $ (\MUX_SUM|Mux3~1_combout\ $ (!\inst|result[3]~7\)))) # (GND)
-- \inst|result[4]~9\ = CARRY((\REG_ACC|latched\(4) & ((\MUX_SUM|Mux3~1_combout\) # (!\inst|result[3]~7\))) # (!\REG_ACC|latched\(4) & (\MUX_SUM|Mux3~1_combout\ & !\inst|result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ACC|latched\(4),
	datab => \MUX_SUM|Mux3~1_combout\,
	datad => VCC,
	cin => \inst|result[3]~7\,
	combout => \inst|result[4]~8_combout\,
	cout => \inst|result[4]~9\);

-- Location: LCCOMB_X37_Y30_N26
\MUX_ACC|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ACC|Mux3~1_combout\ = (\SEL_ACC[0]~input_o\ & ((\MUX_ACC|Mux3~0_combout\ & ((\inst|result[4]~8_combout\))) # (!\MUX_ACC|Mux3~0_combout\ & (\REG_R1|latched\(4))))) # (!\SEL_ACC[0]~input_o\ & (((\MUX_ACC|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_R1|latched\(4),
	datab => \SEL_ACC[0]~input_o\,
	datac => \MUX_ACC|Mux3~0_combout\,
	datad => \inst|result[4]~8_combout\,
	combout => \MUX_ACC|Mux3~1_combout\);

-- Location: FF_X37_Y30_N27
\REG_ACC|latched[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MUX_ACC|Mux3~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \EN_ACC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ACC|latched\(4));

-- Location: LCCOMB_X37_Y30_N14
\inst|result[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|result[5]~10_combout\ = (\MUX_SUM|Mux2~1_combout\ & ((\REG_ACC|latched\(5) & (\inst|result[4]~9\ & VCC)) # (!\REG_ACC|latched\(5) & (!\inst|result[4]~9\)))) # (!\MUX_SUM|Mux2~1_combout\ & ((\REG_ACC|latched\(5) & (!\inst|result[4]~9\)) # 
-- (!\REG_ACC|latched\(5) & ((\inst|result[4]~9\) # (GND)))))
-- \inst|result[5]~11\ = CARRY((\MUX_SUM|Mux2~1_combout\ & (!\REG_ACC|latched\(5) & !\inst|result[4]~9\)) # (!\MUX_SUM|Mux2~1_combout\ & ((!\inst|result[4]~9\) # (!\REG_ACC|latched\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_SUM|Mux2~1_combout\,
	datab => \REG_ACC|latched\(5),
	datad => VCC,
	cin => \inst|result[4]~9\,
	combout => \inst|result[5]~10_combout\,
	cout => \inst|result[5]~11\);

-- Location: LCCOMB_X38_Y30_N4
\MUX_ACC|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ACC|Mux2~0_combout\ = (\SEL_ACC[0]~input_o\ & ((\REG_R1|latched\(5)) # ((\SEL_ACC[1]~input_o\)))) # (!\SEL_ACC[0]~input_o\ & (((\DATA[5]~input_o\ & !\SEL_ACC[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_R1|latched\(5),
	datab => \DATA[5]~input_o\,
	datac => \SEL_ACC[0]~input_o\,
	datad => \SEL_ACC[1]~input_o\,
	combout => \MUX_ACC|Mux2~0_combout\);

-- Location: LCCOMB_X37_Y30_N28
\MUX_ACC|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ACC|Mux2~1_combout\ = (\SEL_ACC[1]~input_o\ & ((\MUX_ACC|Mux2~0_combout\ & ((\inst|result[5]~10_combout\))) # (!\MUX_ACC|Mux2~0_combout\ & (\REG_R2|latched\(5))))) # (!\SEL_ACC[1]~input_o\ & (((\MUX_ACC|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ACC[1]~input_o\,
	datab => \REG_R2|latched\(5),
	datac => \inst|result[5]~10_combout\,
	datad => \MUX_ACC|Mux2~0_combout\,
	combout => \MUX_ACC|Mux2~1_combout\);

-- Location: FF_X37_Y30_N29
\REG_ACC|latched[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MUX_ACC|Mux2~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \EN_ACC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ACC|latched\(5));

-- Location: LCCOMB_X38_Y30_N12
\REG_R1|latched[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_R1|latched[5]~2_combout\ = (\SEL_R1[0]~input_o\ & (\REG_ACC|latched\(5))) # (!\SEL_R1[0]~input_o\ & ((\DATA[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ACC|latched\(5),
	datab => \DATA[5]~input_o\,
	datad => \SEL_R1[0]~input_o\,
	combout => \REG_R1|latched[5]~2_combout\);

-- Location: FF_X38_Y30_N13
\REG_R1|latched[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG_R1|latched[5]~2_combout\,
	asdata => \REG_R2|latched\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \REG_R1|latched[7]~8_combout\,
	sload => \SEL_R1[1]~input_o\,
	ena => \EN_R1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_R1|latched\(5));

-- Location: LCCOMB_X38_Y30_N14
\REG_R2|latched[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_R2|latched[5]~2_combout\ = (\SEL_R2[0]~input_o\ & ((\REG_R1|latched\(5)))) # (!\SEL_R2[0]~input_o\ & (\DATA[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL_R2[0]~input_o\,
	datac => \DATA[5]~input_o\,
	datad => \REG_R1|latched\(5),
	combout => \REG_R2|latched[5]~2_combout\);

-- Location: LCCOMB_X39_Y30_N20
\REG_R2|latched[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_R2|latched[5]~feeder_combout\ = \REG_R2|latched[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \REG_R2|latched[5]~2_combout\,
	combout => \REG_R2|latched[5]~feeder_combout\);

-- Location: FF_X39_Y30_N21
\REG_R2|latched[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG_R2|latched[5]~feeder_combout\,
	asdata => \REG_ACC|latched\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \REG_R2|latched[7]~8_combout\,
	sload => \SEL_R2[1]~input_o\,
	ena => \EN_R2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_R2|latched\(5));

-- Location: LCCOMB_X38_Y30_N18
\MUX_SUM|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_SUM|Mux2~0_combout\ = (!\SEL_SUM[1]~input_o\ & ((\SEL_SUM[0]~input_o\ & ((\REG_R1|latched\(5)))) # (!\SEL_SUM[0]~input_o\ & (\DATA[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_SUM[1]~input_o\,
	datab => \SEL_SUM[0]~input_o\,
	datac => \DATA[5]~input_o\,
	datad => \REG_R1|latched\(5),
	combout => \MUX_SUM|Mux2~0_combout\);

-- Location: LCCOMB_X38_Y30_N20
\MUX_SUM|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_SUM|Mux2~1_combout\ = (\MUX_SUM|Mux2~0_combout\) # ((\SEL_SUM[1]~input_o\ & (!\SEL_SUM[0]~input_o\ & \REG_R2|latched\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_SUM[1]~input_o\,
	datab => \SEL_SUM[0]~input_o\,
	datac => \REG_R2|latched\(5),
	datad => \MUX_SUM|Mux2~0_combout\,
	combout => \MUX_SUM|Mux2~1_combout\);

-- Location: LCCOMB_X37_Y30_N16
\inst|result[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|result[6]~12_combout\ = ((\REG_ACC|latched\(6) $ (\MUX_SUM|Mux1~1_combout\ $ (!\inst|result[5]~11\)))) # (GND)
-- \inst|result[6]~13\ = CARRY((\REG_ACC|latched\(6) & ((\MUX_SUM|Mux1~1_combout\) # (!\inst|result[5]~11\))) # (!\REG_ACC|latched\(6) & (\MUX_SUM|Mux1~1_combout\ & !\inst|result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ACC|latched\(6),
	datab => \MUX_SUM|Mux1~1_combout\,
	datad => VCC,
	cin => \inst|result[5]~11\,
	combout => \inst|result[6]~12_combout\,
	cout => \inst|result[6]~13\);

-- Location: LCCOMB_X37_Y30_N30
\MUX_ACC|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ACC|Mux1~1_combout\ = (\SEL_ACC[0]~input_o\ & ((\MUX_ACC|Mux1~0_combout\ & ((\inst|result[6]~12_combout\))) # (!\MUX_ACC|Mux1~0_combout\ & (\REG_R1|latched\(6))))) # (!\SEL_ACC[0]~input_o\ & (((\MUX_ACC|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_R1|latched\(6),
	datab => \SEL_ACC[0]~input_o\,
	datac => \MUX_ACC|Mux1~0_combout\,
	datad => \inst|result[6]~12_combout\,
	combout => \MUX_ACC|Mux1~1_combout\);

-- Location: FF_X37_Y30_N31
\REG_ACC|latched[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MUX_ACC|Mux1~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \EN_ACC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ACC|latched\(6));

-- Location: LCCOMB_X37_Y30_N18
\inst|result[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|result[7]~14_combout\ = \REG_ACC|latched\(7) $ (\inst|result[6]~13\ $ (\MUX_SUM|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \REG_ACC|latched\(7),
	datad => \MUX_SUM|Mux0~1_combout\,
	cin => \inst|result[6]~13\,
	combout => \inst|result[7]~14_combout\);

-- Location: LCCOMB_X37_Y30_N0
\MUX_ACC|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ACC|Mux0~1_combout\ = (\MUX_ACC|Mux0~0_combout\ & (((\inst|result[7]~14_combout\) # (!\SEL_ACC[1]~input_o\)))) # (!\MUX_ACC|Mux0~0_combout\ & (\REG_R2|latched\(7) & (\SEL_ACC[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_R2|latched\(7),
	datab => \MUX_ACC|Mux0~0_combout\,
	datac => \SEL_ACC[1]~input_o\,
	datad => \inst|result[7]~14_combout\,
	combout => \MUX_ACC|Mux0~1_combout\);

-- Location: FF_X37_Y30_N1
\REG_ACC|latched[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MUX_ACC|Mux0~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \EN_ACC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ACC|latched\(7));

ww_ACC(7) <= \ACC[7]~output_o\;

ww_ACC(6) <= \ACC[6]~output_o\;

ww_ACC(5) <= \ACC[5]~output_o\;

ww_ACC(4) <= \ACC[4]~output_o\;

ww_ACC(3) <= \ACC[3]~output_o\;

ww_ACC(2) <= \ACC[2]~output_o\;

ww_ACC(1) <= \ACC[1]~output_o\;

ww_ACC(0) <= \ACC[0]~output_o\;

ww_R1(7) <= \R1[7]~output_o\;

ww_R1(6) <= \R1[6]~output_o\;

ww_R1(5) <= \R1[5]~output_o\;

ww_R1(4) <= \R1[4]~output_o\;

ww_R1(3) <= \R1[3]~output_o\;

ww_R1(2) <= \R1[2]~output_o\;

ww_R1(1) <= \R1[1]~output_o\;

ww_R1(0) <= \R1[0]~output_o\;

ww_R2(7) <= \R2[7]~output_o\;

ww_R2(6) <= \R2[6]~output_o\;

ww_R2(5) <= \R2[5]~output_o\;

ww_R2(4) <= \R2[4]~output_o\;

ww_R2(3) <= \R2[3]~output_o\;

ww_R2(2) <= \R2[2]~output_o\;

ww_R2(1) <= \R2[1]~output_o\;

ww_R2(0) <= \R2[0]~output_o\;
END structure;


