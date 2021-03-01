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

-- DATE "03/01/2021 14:31:37"

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

ENTITY 	task01 IS
    PORT (
	A : OUT std_logic;
	RESET : IN std_logic;
	EN : IN std_logic;
	CLK : IN std_logic;
	COUNT_EN : IN std_logic;
	B : OUT std_logic;
	C : OUT std_logic;
	D : OUT std_logic;
	E : OUT std_logic;
	F : OUT std_logic;
	G : OUT std_logic
	);
END task01;

-- Design Ports Information
-- A	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUNT_EN	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF task01 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_COUNT_EN : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \EN~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \E~output_o\ : std_logic;
SIGNAL \F~output_o\ : std_logic;
SIGNAL \G~output_o\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \EN~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \U2|cnt~0_combout\ : std_logic;
SIGNAL \COUNT_EN~input_o\ : std_logic;
SIGNAL \U2|cnt[3]~1_combout\ : std_logic;
SIGNAL \U2|cnt~2_combout\ : std_logic;
SIGNAL \U2|cnt~3_combout\ : std_logic;
SIGNAL \U2|cnt~4_combout\ : std_logic;
SIGNAL \U2|cnt~5_combout\ : std_logic;
SIGNAL \U1|Mux6~0_combout\ : std_logic;
SIGNAL \U1|Mux5~0_combout\ : std_logic;
SIGNAL \U1|Mux4~0_combout\ : std_logic;
SIGNAL \U1|Mux3~0_combout\ : std_logic;
SIGNAL \U1|Mux2~0_combout\ : std_logic;
SIGNAL \U1|Mux1~0_combout\ : std_logic;
SIGNAL \U1|Mux0~0_combout\ : std_logic;
SIGNAL \U2|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|output\ : std_logic_vector(6 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

A <= ww_A;
ww_RESET <= RESET;
ww_EN <= EN;
ww_CLK <= CLK;
ww_COUNT_EN <= COUNT_EN;
B <= ww_B;
C <= ww_C;
D <= ww_D;
E <= ww_E;
F <= ww_F;
G <= ww_G;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\EN~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \EN~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X38_Y34_N16
\A~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|output\(0),
	devoe => ww_devoe,
	o => \A~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|output\(1),
	devoe => ww_devoe,
	o => \B~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\C~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|output\(2),
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\D~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|output\(3),
	devoe => ww_devoe,
	o => \D~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\E~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|output\(4),
	devoe => ww_devoe,
	o => \E~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\F~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|output\(5),
	devoe => ww_devoe,
	o => \F~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\G~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|output\(6),
	devoe => ww_devoe,
	o => \G~output_o\);

-- Location: IOIBUF_X53_Y17_N8
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: IOIBUF_X0_Y16_N8
\EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: CLKCTRL_G2
\EN~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \EN~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \EN~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y16_N15
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X36_Y29_N4
\U2|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|cnt~0_combout\ = (\RESET~input_o\ & !\U2|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RESET~input_o\,
	datac => \U2|cnt\(0),
	combout => \U2|cnt~0_combout\);

-- Location: IOIBUF_X53_Y17_N1
\COUNT_EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_COUNT_EN,
	o => \COUNT_EN~input_o\);

-- Location: LCCOMB_X37_Y29_N30
\U2|cnt[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|cnt[3]~1_combout\ = (\COUNT_EN~input_o\) # (!\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \COUNT_EN~input_o\,
	combout => \U2|cnt[3]~1_combout\);

-- Location: FF_X36_Y29_N5
\U2|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|cnt~0_combout\,
	ena => \U2|cnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|cnt\(0));

-- Location: LCCOMB_X36_Y29_N10
\U2|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|cnt~2_combout\ = (\RESET~input_o\ & (\U2|cnt\(1) $ (\U2|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RESET~input_o\,
	datac => \U2|cnt\(1),
	datad => \U2|cnt\(0),
	combout => \U2|cnt~2_combout\);

-- Location: FF_X36_Y29_N11
\U2|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|cnt~2_combout\,
	ena => \U2|cnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|cnt\(1));

-- Location: LCCOMB_X36_Y29_N28
\U2|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|cnt~3_combout\ = (\RESET~input_o\ & (\U2|cnt\(2) $ (((\U2|cnt\(1) & \U2|cnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|cnt\(1),
	datab => \RESET~input_o\,
	datac => \U2|cnt\(2),
	datad => \U2|cnt\(0),
	combout => \U2|cnt~3_combout\);

-- Location: FF_X36_Y29_N29
\U2|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|cnt~3_combout\,
	ena => \U2|cnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|cnt\(2));

-- Location: LCCOMB_X36_Y29_N16
\U2|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|cnt~4_combout\ = (!\U2|cnt\(1)) # (!\U2|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|cnt\(0),
	datad => \U2|cnt\(1),
	combout => \U2|cnt~4_combout\);

-- Location: LCCOMB_X36_Y29_N26
\U2|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|cnt~5_combout\ = (\RESET~input_o\ & (\U2|cnt\(3) $ (((\U2|cnt\(2) & !\U2|cnt~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \U2|cnt\(2),
	datac => \U2|cnt\(3),
	datad => \U2|cnt~4_combout\,
	combout => \U2|cnt~5_combout\);

-- Location: FF_X36_Y29_N27
\U2|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|cnt~5_combout\,
	ena => \U2|cnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|cnt\(3));

-- Location: LCCOMB_X37_Y29_N28
\U1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux6~0_combout\ = (\U2|cnt\(0) & ((\U2|cnt\(3)) # (\U2|cnt\(2) $ (\U2|cnt\(1))))) # (!\U2|cnt\(0) & ((\U2|cnt\(1)) # (\U2|cnt\(3) $ (\U2|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|cnt\(3),
	datab => \U2|cnt\(2),
	datac => \U2|cnt\(0),
	datad => \U2|cnt\(1),
	combout => \U1|Mux6~0_combout\);

-- Location: LCCOMB_X37_Y29_N8
\U1|output[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|output\(0) = (!\RESET~input_o\ & ((GLOBAL(\EN~inputclkctrl_outclk\) & ((\U1|Mux6~0_combout\))) # (!GLOBAL(\EN~inputclkctrl_outclk\) & (\U1|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \U1|output\(0),
	datac => \EN~inputclkctrl_outclk\,
	datad => \U1|Mux6~0_combout\,
	combout => \U1|output\(0));

-- Location: LCCOMB_X36_Y29_N20
\U1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux5~0_combout\ = (\U2|cnt\(1) & (!\U2|cnt\(3) & ((\U2|cnt\(0)) # (!\U2|cnt\(2))))) # (!\U2|cnt\(1) & (\U2|cnt\(0) & (\U2|cnt\(3) $ (!\U2|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|cnt\(1),
	datab => \U2|cnt\(0),
	datac => \U2|cnt\(3),
	datad => \U2|cnt\(2),
	combout => \U1|Mux5~0_combout\);

-- Location: LCCOMB_X37_Y29_N14
\U1|output[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|output\(1) = (!\RESET~input_o\ & ((GLOBAL(\EN~inputclkctrl_outclk\) & ((!\U1|Mux5~0_combout\))) # (!GLOBAL(\EN~inputclkctrl_outclk\) & (\U1|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \U1|output\(1),
	datac => \EN~inputclkctrl_outclk\,
	datad => \U1|Mux5~0_combout\,
	combout => \U1|output\(1));

-- Location: LCCOMB_X36_Y29_N30
\U1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux4~0_combout\ = (\U2|cnt\(1) & (!\U2|cnt\(3) & ((\U2|cnt\(0))))) # (!\U2|cnt\(1) & ((\U2|cnt\(2) & (!\U2|cnt\(3))) # (!\U2|cnt\(2) & ((\U2|cnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|cnt\(3),
	datab => \U2|cnt\(2),
	datac => \U2|cnt\(1),
	datad => \U2|cnt\(0),
	combout => \U1|Mux4~0_combout\);

-- Location: LCCOMB_X36_Y29_N18
\U1|output[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|output\(2) = (!\RESET~input_o\ & ((GLOBAL(\EN~inputclkctrl_outclk\) & ((!\U1|Mux4~0_combout\))) # (!GLOBAL(\EN~inputclkctrl_outclk\) & (\U1|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \U1|output\(2),
	datac => \U1|Mux4~0_combout\,
	datad => \EN~inputclkctrl_outclk\,
	combout => \U1|output\(2));

-- Location: LCCOMB_X36_Y29_N24
\U1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux3~0_combout\ = (\U2|cnt\(1) & ((\U2|cnt\(0) & (\U2|cnt\(2))) # (!\U2|cnt\(0) & (!\U2|cnt\(2) & \U2|cnt\(3))))) # (!\U2|cnt\(1) & (!\U2|cnt\(3) & (\U2|cnt\(0) $ (\U2|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|cnt\(1),
	datab => \U2|cnt\(0),
	datac => \U2|cnt\(2),
	datad => \U2|cnt\(3),
	combout => \U1|Mux3~0_combout\);

-- Location: LCCOMB_X36_Y29_N12
\U1|output[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|output\(3) = (!\RESET~input_o\ & ((GLOBAL(\EN~inputclkctrl_outclk\) & ((!\U1|Mux3~0_combout\))) # (!GLOBAL(\EN~inputclkctrl_outclk\) & (\U1|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|output\(3),
	datab => \RESET~input_o\,
	datac => \EN~inputclkctrl_outclk\,
	datad => \U1|Mux3~0_combout\,
	combout => \U1|output\(3));

-- Location: LCCOMB_X36_Y29_N22
\U1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux2~0_combout\ = (\U2|cnt\(3) & (\U2|cnt\(2) & ((\U2|cnt\(1)) # (!\U2|cnt\(0))))) # (!\U2|cnt\(3) & (!\U2|cnt\(2) & (\U2|cnt\(1) & !\U2|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|cnt\(3),
	datab => \U2|cnt\(2),
	datac => \U2|cnt\(1),
	datad => \U2|cnt\(0),
	combout => \U1|Mux2~0_combout\);

-- Location: LCCOMB_X36_Y29_N2
\U1|output[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|output\(4) = (!\RESET~input_o\ & ((GLOBAL(\EN~inputclkctrl_outclk\) & ((!\U1|Mux2~0_combout\))) # (!GLOBAL(\EN~inputclkctrl_outclk\) & (\U1|output\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \U1|output\(4),
	datac => \U1|Mux2~0_combout\,
	datad => \EN~inputclkctrl_outclk\,
	combout => \U1|output\(4));

-- Location: LCCOMB_X36_Y29_N8
\U1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux1~0_combout\ = (\U2|cnt\(3) & ((\U2|cnt\(0) & ((\U2|cnt\(1)))) # (!\U2|cnt\(0) & (\U2|cnt\(2))))) # (!\U2|cnt\(3) & (\U2|cnt\(2) & (\U2|cnt\(1) $ (\U2|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|cnt\(3),
	datab => \U2|cnt\(2),
	datac => \U2|cnt\(1),
	datad => \U2|cnt\(0),
	combout => \U1|Mux1~0_combout\);

-- Location: LCCOMB_X36_Y29_N0
\U1|output[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|output\(5) = (!\RESET~input_o\ & ((GLOBAL(\EN~inputclkctrl_outclk\) & ((!\U1|Mux1~0_combout\))) # (!GLOBAL(\EN~inputclkctrl_outclk\) & (\U1|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \U1|output\(5),
	datac => \U1|Mux1~0_combout\,
	datad => \EN~inputclkctrl_outclk\,
	combout => \U1|output\(5));

-- Location: LCCOMB_X36_Y29_N14
\U1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux0~0_combout\ = (\U2|cnt\(3) & (\U2|cnt\(0) & (\U2|cnt\(1) $ (\U2|cnt\(2))))) # (!\U2|cnt\(3) & (!\U2|cnt\(1) & (\U2|cnt\(0) $ (\U2|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|cnt\(3),
	datab => \U2|cnt\(0),
	datac => \U2|cnt\(1),
	datad => \U2|cnt\(2),
	combout => \U1|Mux0~0_combout\);

-- Location: LCCOMB_X36_Y29_N6
\U1|output[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|output\(6) = (!\RESET~input_o\ & ((GLOBAL(\EN~inputclkctrl_outclk\) & ((!\U1|Mux0~0_combout\))) # (!GLOBAL(\EN~inputclkctrl_outclk\) & (\U1|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \U1|output\(6),
	datac => \U1|Mux0~0_combout\,
	datad => \EN~inputclkctrl_outclk\,
	combout => \U1|output\(6));

ww_A <= \A~output_o\;

ww_B <= \B~output_o\;

ww_C <= \C~output_o\;

ww_D <= \D~output_o\;

ww_E <= \E~output_o\;

ww_F <= \F~output_o\;

ww_G <= \G~output_o\;
END structure;


