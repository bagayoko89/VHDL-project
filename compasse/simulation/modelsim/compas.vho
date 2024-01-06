-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition"

-- DATE "11/13/2023 21:52:59"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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

ENTITY 	compas IS
    PORT (
	clk : IN std_logic;
	raz_n : IN std_logic;
	start_stop : IN std_logic;
	data_out : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END compas;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- raz_n	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_stop	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF compas IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_raz_n : std_logic;
SIGNAL ww_start_stop : std_logic;
SIGNAL ww_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \div10k|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \data_out[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \div10k|Add0~0_combout\ : std_logic;
SIGNAL \raz_n~input_o\ : std_logic;
SIGNAL \div10k|Add0~1\ : std_logic;
SIGNAL \div10k|Add0~2_combout\ : std_logic;
SIGNAL \div10k|Add0~3\ : std_logic;
SIGNAL \div10k|Add0~4_combout\ : std_logic;
SIGNAL \div10k|Add0~5\ : std_logic;
SIGNAL \div10k|Add0~6_combout\ : std_logic;
SIGNAL \div10k|count~4_combout\ : std_logic;
SIGNAL \div10k|Add0~7\ : std_logic;
SIGNAL \div10k|Add0~8_combout\ : std_logic;
SIGNAL \div10k|Add0~9\ : std_logic;
SIGNAL \div10k|Add0~10_combout\ : std_logic;
SIGNAL \div10k|Add0~11\ : std_logic;
SIGNAL \div10k|Add0~12_combout\ : std_logic;
SIGNAL \div10k|Add0~13\ : std_logic;
SIGNAL \div10k|Add0~14_combout\ : std_logic;
SIGNAL \div10k|count~3_combout\ : std_logic;
SIGNAL \div10k|Add0~15\ : std_logic;
SIGNAL \div10k|Add0~16_combout\ : std_logic;
SIGNAL \div10k|count~2_combout\ : std_logic;
SIGNAL \div10k|Add0~17\ : std_logic;
SIGNAL \div10k|Add0~18_combout\ : std_logic;
SIGNAL \div10k|count~1_combout\ : std_logic;
SIGNAL \div10k|Add0~19\ : std_logic;
SIGNAL \div10k|Add0~20_combout\ : std_logic;
SIGNAL \div10k|Add0~21\ : std_logic;
SIGNAL \div10k|Add0~22_combout\ : std_logic;
SIGNAL \div10k|Add0~23\ : std_logic;
SIGNAL \div10k|Add0~24_combout\ : std_logic;
SIGNAL \div10k|count~0_combout\ : std_logic;
SIGNAL \div10k|Equal0~0_combout\ : std_logic;
SIGNAL \div10k|Equal0~1_combout\ : std_logic;
SIGNAL \div10k|Equal0~2_combout\ : std_logic;
SIGNAL \div10k|Equal0~3_combout\ : std_logic;
SIGNAL \div10k|tmp~0_combout\ : std_logic;
SIGNAL \div10k|tmp~feeder_combout\ : std_logic;
SIGNAL \div10k|tmp~q\ : std_logic;
SIGNAL \div10k|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \start_stop~input_o\ : std_logic;
SIGNAL \pmw|count[0]~32_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \pmw|LessThan0~6_combout\ : std_logic;
SIGNAL \pmw|LessThan0~3_combout\ : std_logic;
SIGNAL \pmw|LessThan0~2_combout\ : std_logic;
SIGNAL \pmw|LessThan0~1_combout\ : std_logic;
SIGNAL \pmw|LessThan0~0_combout\ : std_logic;
SIGNAL \pmw|LessThan0~4_combout\ : std_logic;
SIGNAL \pmw|LessThan0~5_combout\ : std_logic;
SIGNAL \pmw|LessThan0~7_combout\ : std_logic;
SIGNAL \pmw|count[0]~33\ : std_logic;
SIGNAL \pmw|count[1]~34_combout\ : std_logic;
SIGNAL \pmw|count[1]~35\ : std_logic;
SIGNAL \pmw|count[2]~36_combout\ : std_logic;
SIGNAL \pmw|count[2]~37\ : std_logic;
SIGNAL \pmw|count[3]~38_combout\ : std_logic;
SIGNAL \pmw|count[3]~39\ : std_logic;
SIGNAL \pmw|count[4]~40_combout\ : std_logic;
SIGNAL \pmw|count[4]~41\ : std_logic;
SIGNAL \pmw|count[5]~42_combout\ : std_logic;
SIGNAL \pmw|count[5]~43\ : std_logic;
SIGNAL \pmw|count[6]~44_combout\ : std_logic;
SIGNAL \pmw|count[6]~45\ : std_logic;
SIGNAL \pmw|count[7]~46_combout\ : std_logic;
SIGNAL \pmw|count[7]~47\ : std_logic;
SIGNAL \pmw|count[8]~48_combout\ : std_logic;
SIGNAL \pmw|count[8]~49\ : std_logic;
SIGNAL \pmw|count[9]~50_combout\ : std_logic;
SIGNAL \pmw|count[9]~51\ : std_logic;
SIGNAL \pmw|count[10]~52_combout\ : std_logic;
SIGNAL \pmw|count[10]~53\ : std_logic;
SIGNAL \pmw|count[11]~54_combout\ : std_logic;
SIGNAL \pmw|count[11]~55\ : std_logic;
SIGNAL \pmw|count[12]~56_combout\ : std_logic;
SIGNAL \pmw|count[12]~57\ : std_logic;
SIGNAL \pmw|count[13]~58_combout\ : std_logic;
SIGNAL \pmw|count[13]~feeder_combout\ : std_logic;
SIGNAL \pmw|count[13]~59\ : std_logic;
SIGNAL \pmw|count[14]~60_combout\ : std_logic;
SIGNAL \pmw|count[14]~feeder_combout\ : std_logic;
SIGNAL \pmw|count[14]~61\ : std_logic;
SIGNAL \pmw|count[15]~62_combout\ : std_logic;
SIGNAL \pmw|count[15]~feeder_combout\ : std_logic;
SIGNAL \pmw|count[15]~63\ : std_logic;
SIGNAL \pmw|count[16]~64_combout\ : std_logic;
SIGNAL \pmw|count[16]~65\ : std_logic;
SIGNAL \pmw|count[17]~66_combout\ : std_logic;
SIGNAL \pmw|count[17]~67\ : std_logic;
SIGNAL \pmw|count[18]~68_combout\ : std_logic;
SIGNAL \pmw|count[18]~69\ : std_logic;
SIGNAL \pmw|count[19]~70_combout\ : std_logic;
SIGNAL \pmw|count[19]~71\ : std_logic;
SIGNAL \pmw|count[20]~72_combout\ : std_logic;
SIGNAL \pmw|count[20]~73\ : std_logic;
SIGNAL \pmw|count[21]~74_combout\ : std_logic;
SIGNAL \pmw|count[21]~75\ : std_logic;
SIGNAL \pmw|count[22]~76_combout\ : std_logic;
SIGNAL \pmw|count[22]~77\ : std_logic;
SIGNAL \pmw|count[23]~78_combout\ : std_logic;
SIGNAL \pmw|count[23]~79\ : std_logic;
SIGNAL \pmw|count[24]~80_combout\ : std_logic;
SIGNAL \pmw|count[24]~81\ : std_logic;
SIGNAL \pmw|count[25]~82_combout\ : std_logic;
SIGNAL \pmw|count[25]~83\ : std_logic;
SIGNAL \pmw|count[26]~84_combout\ : std_logic;
SIGNAL \pmw|count[26]~85\ : std_logic;
SIGNAL \pmw|count[27]~86_combout\ : std_logic;
SIGNAL \pmw|count[27]~87\ : std_logic;
SIGNAL \pmw|count[28]~88_combout\ : std_logic;
SIGNAL \pmw|count[28]~89\ : std_logic;
SIGNAL \pmw|count[29]~90_combout\ : std_logic;
SIGNAL \pmw|count[29]~91\ : std_logic;
SIGNAL \pmw|count[30]~92_combout\ : std_logic;
SIGNAL \pmw|count[30]~93\ : std_logic;
SIGNAL \pmw|count[31]~94_combout\ : std_logic;
SIGNAL \pmw|tmp~0_combout\ : std_logic;
SIGNAL \pmw|tmp~1_combout\ : std_logic;
SIGNAL \pmw|tmp~2_combout\ : std_logic;
SIGNAL \pmw|tmp~q\ : std_logic;
SIGNAL \machine|Selector3~0_combout\ : std_logic;
SIGNAL \machine|current_state.etat3~q\ : std_logic;
SIGNAL \machine|current_state.idle~0_combout\ : std_logic;
SIGNAL \machine|current_state.idle~q\ : std_logic;
SIGNAL \machine|Selector1~0_combout\ : std_logic;
SIGNAL \machine|current_state.wait_pwm~q\ : std_logic;
SIGNAL \machine|Selector2~0_combout\ : std_logic;
SIGNAL \machine|current_state.etat0~q\ : std_logic;
SIGNAL \machine|next_state.etat2~0_combout\ : std_logic;
SIGNAL \machine|current_state.etat2~feeder_combout\ : std_logic;
SIGNAL \machine|current_state.etat2~q\ : std_logic;
SIGNAL \compt|count[0]~7_combout\ : std_logic;
SIGNAL \compt|count[0]~feeder_combout\ : std_logic;
SIGNAL \regis|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \compt|count[1]~8_combout\ : std_logic;
SIGNAL \regis|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \compt|count[1]~9\ : std_logic;
SIGNAL \compt|count[2]~10_combout\ : std_logic;
SIGNAL \regis|data_out[2]~feeder_combout\ : std_logic;
SIGNAL \compt|count[2]~11\ : std_logic;
SIGNAL \compt|count[3]~12_combout\ : std_logic;
SIGNAL \regis|data_out[3]~feeder_combout\ : std_logic;
SIGNAL \compt|count[3]~13\ : std_logic;
SIGNAL \compt|count[4]~14_combout\ : std_logic;
SIGNAL \regis|data_out[4]~feeder_combout\ : std_logic;
SIGNAL \compt|count[4]~15\ : std_logic;
SIGNAL \compt|count[5]~16_combout\ : std_logic;
SIGNAL \regis|data_out[5]~feeder_combout\ : std_logic;
SIGNAL \compt|count[5]~17\ : std_logic;
SIGNAL \compt|count[6]~18_combout\ : std_logic;
SIGNAL \regis|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \compt|count[6]~19\ : std_logic;
SIGNAL \compt|count[7]~20_combout\ : std_logic;
SIGNAL \regis|data_out[7]~feeder_combout\ : std_logic;
SIGNAL \compt|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pmw|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \regis|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \div10k|count\ : std_logic_vector(12 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_raz_n <= raz_n;
ww_start_stop <= start_stop;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\div10k|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \div10k|tmp~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X38_Y34_N16
\data_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regis|data_out\(0),
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\data_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regis|data_out\(1),
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\data_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regis|data_out\(2),
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\data_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regis|data_out\(3),
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\data_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regis|data_out\(4),
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\data_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regis|data_out\(5),
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\data_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regis|data_out\(6),
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\data_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regis|data_out\(7),
	devoe => ww_devoe,
	o => \data_out[7]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G18
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X51_Y11_N2
\div10k|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div10k|Add0~0_combout\ = \div10k|count\(0) $ (VCC)
-- \div10k|Add0~1\ = CARRY(\div10k|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div10k|count\(0),
	datad => VCC,
	combout => \div10k|Add0~0_combout\,
	cout => \div10k|Add0~1\);

-- Location: IOIBUF_X53_Y14_N1
\raz_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_raz_n,
	o => \raz_n~input_o\);

-- Location: FF_X51_Y11_N3
\div10k|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div10k|Add0~0_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div10k|count\(0));

-- Location: LCCOMB_X51_Y11_N4
\div10k|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div10k|Add0~2_combout\ = (\div10k|count\(1) & (!\div10k|Add0~1\)) # (!\div10k|count\(1) & ((\div10k|Add0~1\) # (GND)))
-- \div10k|Add0~3\ = CARRY((!\div10k|Add0~1\) # (!\div10k|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div10k|count\(1),
	datad => VCC,
	cin => \div10k|Add0~1\,
	combout => \div10k|Add0~2_combout\,
	cout => \div10k|Add0~3\);

-- Location: FF_X51_Y11_N5
\div10k|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div10k|Add0~2_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div10k|count\(1));

-- Location: LCCOMB_X51_Y11_N6
\div10k|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div10k|Add0~4_combout\ = (\div10k|count\(2) & (\div10k|Add0~3\ $ (GND))) # (!\div10k|count\(2) & (!\div10k|Add0~3\ & VCC))
-- \div10k|Add0~5\ = CARRY((\div10k|count\(2) & !\div10k|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div10k|count\(2),
	datad => VCC,
	cin => \div10k|Add0~3\,
	combout => \div10k|Add0~4_combout\,
	cout => \div10k|Add0~5\);

-- Location: FF_X51_Y11_N7
\div10k|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div10k|Add0~4_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div10k|count\(2));

-- Location: LCCOMB_X51_Y11_N8
\div10k|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div10k|Add0~6_combout\ = (\div10k|count\(3) & (!\div10k|Add0~5\)) # (!\div10k|count\(3) & ((\div10k|Add0~5\) # (GND)))
-- \div10k|Add0~7\ = CARRY((!\div10k|Add0~5\) # (!\div10k|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div10k|count\(3),
	datad => VCC,
	cin => \div10k|Add0~5\,
	combout => \div10k|Add0~6_combout\,
	cout => \div10k|Add0~7\);

-- Location: LCCOMB_X51_Y11_N30
\div10k|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div10k|count~4_combout\ = (\div10k|Add0~6_combout\ & !\div10k|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div10k|Add0~6_combout\,
	datad => \div10k|Equal0~3_combout\,
	combout => \div10k|count~4_combout\);

-- Location: FF_X51_Y11_N31
\div10k|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div10k|count~4_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div10k|count\(3));

-- Location: LCCOMB_X51_Y11_N10
\div10k|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div10k|Add0~8_combout\ = (\div10k|count\(4) & (\div10k|Add0~7\ $ (GND))) # (!\div10k|count\(4) & (!\div10k|Add0~7\ & VCC))
-- \div10k|Add0~9\ = CARRY((\div10k|count\(4) & !\div10k|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div10k|count\(4),
	datad => VCC,
	cin => \div10k|Add0~7\,
	combout => \div10k|Add0~8_combout\,
	cout => \div10k|Add0~9\);

-- Location: FF_X51_Y11_N11
\div10k|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div10k|Add0~8_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div10k|count\(4));

-- Location: LCCOMB_X51_Y11_N12
\div10k|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \div10k|Add0~10_combout\ = (\div10k|count\(5) & (!\div10k|Add0~9\)) # (!\div10k|count\(5) & ((\div10k|Add0~9\) # (GND)))
-- \div10k|Add0~11\ = CARRY((!\div10k|Add0~9\) # (!\div10k|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div10k|count\(5),
	datad => VCC,
	cin => \div10k|Add0~9\,
	combout => \div10k|Add0~10_combout\,
	cout => \div10k|Add0~11\);

-- Location: FF_X51_Y11_N13
\div10k|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div10k|Add0~10_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div10k|count\(5));

-- Location: LCCOMB_X51_Y11_N14
\div10k|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \div10k|Add0~12_combout\ = (\div10k|count\(6) & (\div10k|Add0~11\ $ (GND))) # (!\div10k|count\(6) & (!\div10k|Add0~11\ & VCC))
-- \div10k|Add0~13\ = CARRY((\div10k|count\(6) & !\div10k|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div10k|count\(6),
	datad => VCC,
	cin => \div10k|Add0~11\,
	combout => \div10k|Add0~12_combout\,
	cout => \div10k|Add0~13\);

-- Location: FF_X51_Y11_N15
\div10k|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div10k|Add0~12_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div10k|count\(6));

-- Location: LCCOMB_X51_Y11_N16
\div10k|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \div10k|Add0~14_combout\ = (\div10k|count\(7) & (!\div10k|Add0~13\)) # (!\div10k|count\(7) & ((\div10k|Add0~13\) # (GND)))
-- \div10k|Add0~15\ = CARRY((!\div10k|Add0~13\) # (!\div10k|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div10k|count\(7),
	datad => VCC,
	cin => \div10k|Add0~13\,
	combout => \div10k|Add0~14_combout\,
	cout => \div10k|Add0~15\);

-- Location: LCCOMB_X52_Y11_N4
\div10k|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div10k|count~3_combout\ = (\div10k|Add0~14_combout\ & !\div10k|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div10k|Add0~14_combout\,
	datad => \div10k|Equal0~3_combout\,
	combout => \div10k|count~3_combout\);

-- Location: FF_X52_Y11_N5
\div10k|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div10k|count~3_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div10k|count\(7));

-- Location: LCCOMB_X51_Y11_N18
\div10k|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \div10k|Add0~16_combout\ = (\div10k|count\(8) & (\div10k|Add0~15\ $ (GND))) # (!\div10k|count\(8) & (!\div10k|Add0~15\ & VCC))
-- \div10k|Add0~17\ = CARRY((\div10k|count\(8) & !\div10k|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div10k|count\(8),
	datad => VCC,
	cin => \div10k|Add0~15\,
	combout => \div10k|Add0~16_combout\,
	cout => \div10k|Add0~17\);

-- Location: LCCOMB_X51_Y11_N0
\div10k|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div10k|count~2_combout\ = (!\div10k|Equal0~3_combout\ & \div10k|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div10k|Equal0~3_combout\,
	datad => \div10k|Add0~16_combout\,
	combout => \div10k|count~2_combout\);

-- Location: FF_X51_Y11_N1
\div10k|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div10k|count~2_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div10k|count\(8));

-- Location: LCCOMB_X51_Y11_N20
\div10k|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \div10k|Add0~18_combout\ = (\div10k|count\(9) & (!\div10k|Add0~17\)) # (!\div10k|count\(9) & ((\div10k|Add0~17\) # (GND)))
-- \div10k|Add0~19\ = CARRY((!\div10k|Add0~17\) # (!\div10k|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div10k|count\(9),
	datad => VCC,
	cin => \div10k|Add0~17\,
	combout => \div10k|Add0~18_combout\,
	cout => \div10k|Add0~19\);

-- Location: LCCOMB_X52_Y11_N2
\div10k|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div10k|count~1_combout\ = (!\div10k|Equal0~3_combout\ & \div10k|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div10k|Equal0~3_combout\,
	datad => \div10k|Add0~18_combout\,
	combout => \div10k|count~1_combout\);

-- Location: FF_X52_Y11_N3
\div10k|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div10k|count~1_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div10k|count\(9));

-- Location: LCCOMB_X51_Y11_N22
\div10k|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \div10k|Add0~20_combout\ = (\div10k|count\(10) & (\div10k|Add0~19\ $ (GND))) # (!\div10k|count\(10) & (!\div10k|Add0~19\ & VCC))
-- \div10k|Add0~21\ = CARRY((\div10k|count\(10) & !\div10k|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div10k|count\(10),
	datad => VCC,
	cin => \div10k|Add0~19\,
	combout => \div10k|Add0~20_combout\,
	cout => \div10k|Add0~21\);

-- Location: FF_X51_Y11_N23
\div10k|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div10k|Add0~20_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div10k|count\(10));

-- Location: LCCOMB_X51_Y11_N24
\div10k|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \div10k|Add0~22_combout\ = (\div10k|count\(11) & (!\div10k|Add0~21\)) # (!\div10k|count\(11) & ((\div10k|Add0~21\) # (GND)))
-- \div10k|Add0~23\ = CARRY((!\div10k|Add0~21\) # (!\div10k|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div10k|count\(11),
	datad => VCC,
	cin => \div10k|Add0~21\,
	combout => \div10k|Add0~22_combout\,
	cout => \div10k|Add0~23\);

-- Location: FF_X51_Y11_N25
\div10k|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div10k|Add0~22_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div10k|count\(11));

-- Location: LCCOMB_X51_Y11_N26
\div10k|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \div10k|Add0~24_combout\ = \div10k|Add0~23\ $ (!\div10k|count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \div10k|count\(12),
	cin => \div10k|Add0~23\,
	combout => \div10k|Add0~24_combout\);

-- Location: LCCOMB_X51_Y11_N28
\div10k|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div10k|count~0_combout\ = (\div10k|Add0~24_combout\ & !\div10k|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div10k|Add0~24_combout\,
	datad => \div10k|Equal0~3_combout\,
	combout => \div10k|count~0_combout\);

-- Location: FF_X51_Y11_N29
\div10k|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div10k|count~0_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div10k|count\(12));

-- Location: LCCOMB_X52_Y11_N18
\div10k|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div10k|Equal0~0_combout\ = (\div10k|count\(9) & (!\div10k|count\(11) & (\div10k|count\(12) & !\div10k|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div10k|count\(9),
	datab => \div10k|count\(11),
	datac => \div10k|count\(12),
	datad => \div10k|count\(10),
	combout => \div10k|Equal0~0_combout\);

-- Location: LCCOMB_X52_Y11_N26
\div10k|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div10k|Equal0~1_combout\ = (!\div10k|count\(5) & (\div10k|count\(7) & (\div10k|count\(8) & !\div10k|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div10k|count\(5),
	datab => \div10k|count\(7),
	datac => \div10k|count\(8),
	datad => \div10k|count\(6),
	combout => \div10k|Equal0~1_combout\);

-- Location: LCCOMB_X52_Y11_N12
\div10k|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div10k|Equal0~2_combout\ = (!\div10k|count\(4) & (\div10k|count\(1) & (\div10k|count\(2) & !\div10k|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div10k|count\(4),
	datab => \div10k|count\(1),
	datac => \div10k|count\(2),
	datad => \div10k|count\(3),
	combout => \div10k|Equal0~2_combout\);

-- Location: LCCOMB_X52_Y11_N28
\div10k|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div10k|Equal0~3_combout\ = (\div10k|count\(0) & (\div10k|Equal0~0_combout\ & (\div10k|Equal0~1_combout\ & \div10k|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div10k|count\(0),
	datab => \div10k|Equal0~0_combout\,
	datac => \div10k|Equal0~1_combout\,
	datad => \div10k|Equal0~2_combout\,
	combout => \div10k|Equal0~3_combout\);

-- Location: LCCOMB_X52_Y11_N24
\div10k|tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div10k|tmp~0_combout\ = \div10k|tmp~q\ $ (\div10k|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div10k|tmp~q\,
	datad => \div10k|Equal0~3_combout\,
	combout => \div10k|tmp~0_combout\);

-- Location: LCCOMB_X52_Y11_N10
\div10k|tmp~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \div10k|tmp~feeder_combout\ = \div10k|tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div10k|tmp~0_combout\,
	combout => \div10k|tmp~feeder_combout\);

-- Location: FF_X52_Y11_N11
\div10k|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div10k|tmp~feeder_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div10k|tmp~q\);

-- Location: CLKCTRL_G8
\div10k|tmp~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \div10k|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \div10k|tmp~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y16_N8
\start_stop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_stop,
	o => \start_stop~input_o\);

-- Location: LCCOMB_X35_Y20_N0
\pmw|count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[0]~32_combout\ = !\pmw|count\(0)
-- \pmw|count[0]~33\ = CARRY(!\pmw|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pmw|count\(0),
	combout => \pmw|count[0]~32_combout\,
	cout => \pmw|count[0]~33\);

-- Location: LCCOMB_X36_Y19_N26
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X36_Y19_N14
\pmw|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|LessThan0~6_combout\ = (((!\pmw|count\(8) & !\pmw|count\(9))) # (!\pmw|count\(10))) # (!\pmw|count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pmw|count\(8),
	datab => \pmw|count\(11),
	datac => \pmw|count\(10),
	datad => \pmw|count\(9),
	combout => \pmw|LessThan0~6_combout\);

-- Location: LCCOMB_X36_Y19_N10
\pmw|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|LessThan0~3_combout\ = (!\pmw|count\(24) & (!\pmw|count\(26) & (!\pmw|count\(25) & !\pmw|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pmw|count\(24),
	datab => \pmw|count\(26),
	datac => \pmw|count\(25),
	datad => \pmw|count\(27),
	combout => \pmw|LessThan0~3_combout\);

-- Location: LCCOMB_X36_Y19_N8
\pmw|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|LessThan0~2_combout\ = (!\pmw|count\(23) & (!\pmw|count\(22) & (!\pmw|count\(20) & !\pmw|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pmw|count\(23),
	datab => \pmw|count\(22),
	datac => \pmw|count\(20),
	datad => \pmw|count\(21),
	combout => \pmw|LessThan0~2_combout\);

-- Location: LCCOMB_X36_Y19_N22
\pmw|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|LessThan0~1_combout\ = (!\pmw|count\(17) & (!\pmw|count\(19) & (!\pmw|count\(16) & !\pmw|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pmw|count\(17),
	datab => \pmw|count\(19),
	datac => \pmw|count\(16),
	datad => \pmw|count\(18),
	combout => \pmw|LessThan0~1_combout\);

-- Location: LCCOMB_X36_Y19_N20
\pmw|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|LessThan0~0_combout\ = (!\pmw|count\(14) & (!\pmw|count\(15) & (!\pmw|count\(12) & !\pmw|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pmw|count\(14),
	datab => \pmw|count\(15),
	datac => \pmw|count\(12),
	datad => \pmw|count\(13),
	combout => \pmw|LessThan0~0_combout\);

-- Location: LCCOMB_X36_Y19_N28
\pmw|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|LessThan0~4_combout\ = (\pmw|LessThan0~3_combout\ & (\pmw|LessThan0~2_combout\ & (\pmw|LessThan0~1_combout\ & \pmw|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pmw|LessThan0~3_combout\,
	datab => \pmw|LessThan0~2_combout\,
	datac => \pmw|LessThan0~1_combout\,
	datad => \pmw|LessThan0~0_combout\,
	combout => \pmw|LessThan0~4_combout\);

-- Location: LCCOMB_X36_Y19_N6
\pmw|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|LessThan0~5_combout\ = (!\pmw|count\(29) & (!\pmw|count\(30) & (!\pmw|count\(28) & \pmw|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pmw|count\(29),
	datab => \pmw|count\(30),
	datac => \pmw|count\(28),
	datad => \pmw|LessThan0~4_combout\,
	combout => \pmw|LessThan0~5_combout\);

-- Location: LCCOMB_X36_Y19_N0
\pmw|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|LessThan0~7_combout\ = (!\pmw|count\(31) & ((!\pmw|LessThan0~5_combout\) # (!\pmw|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pmw|count\(31),
	datac => \pmw|LessThan0~6_combout\,
	datad => \pmw|LessThan0~5_combout\,
	combout => \pmw|LessThan0~7_combout\);

-- Location: FF_X35_Y20_N1
\pmw|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[0]~32_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(0));

-- Location: LCCOMB_X35_Y20_N2
\pmw|count[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[1]~34_combout\ = (\pmw|count\(1) & (!\pmw|count[0]~33\)) # (!\pmw|count\(1) & ((\pmw|count[0]~33\) # (GND)))
-- \pmw|count[1]~35\ = CARRY((!\pmw|count[0]~33\) # (!\pmw|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pmw|count\(1),
	datad => VCC,
	cin => \pmw|count[0]~33\,
	combout => \pmw|count[1]~34_combout\,
	cout => \pmw|count[1]~35\);

-- Location: FF_X35_Y20_N3
\pmw|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[1]~34_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(1));

-- Location: LCCOMB_X35_Y20_N4
\pmw|count[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[2]~36_combout\ = (\pmw|count\(2) & (\pmw|count[1]~35\ $ (GND))) # (!\pmw|count\(2) & (!\pmw|count[1]~35\ & VCC))
-- \pmw|count[2]~37\ = CARRY((\pmw|count\(2) & !\pmw|count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pmw|count\(2),
	datad => VCC,
	cin => \pmw|count[1]~35\,
	combout => \pmw|count[2]~36_combout\,
	cout => \pmw|count[2]~37\);

-- Location: FF_X35_Y20_N5
\pmw|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[2]~36_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(2));

-- Location: LCCOMB_X35_Y20_N6
\pmw|count[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[3]~38_combout\ = (\pmw|count\(3) & (!\pmw|count[2]~37\)) # (!\pmw|count\(3) & ((\pmw|count[2]~37\) # (GND)))
-- \pmw|count[3]~39\ = CARRY((!\pmw|count[2]~37\) # (!\pmw|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pmw|count\(3),
	datad => VCC,
	cin => \pmw|count[2]~37\,
	combout => \pmw|count[3]~38_combout\,
	cout => \pmw|count[3]~39\);

-- Location: FF_X35_Y20_N7
\pmw|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[3]~38_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(3));

-- Location: LCCOMB_X35_Y20_N8
\pmw|count[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[4]~40_combout\ = (\pmw|count\(4) & (\pmw|count[3]~39\ $ (GND))) # (!\pmw|count\(4) & (!\pmw|count[3]~39\ & VCC))
-- \pmw|count[4]~41\ = CARRY((\pmw|count\(4) & !\pmw|count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pmw|count\(4),
	datad => VCC,
	cin => \pmw|count[3]~39\,
	combout => \pmw|count[4]~40_combout\,
	cout => \pmw|count[4]~41\);

-- Location: FF_X35_Y20_N9
\pmw|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[4]~40_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(4));

-- Location: LCCOMB_X35_Y20_N10
\pmw|count[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[5]~42_combout\ = (\pmw|count\(5) & (!\pmw|count[4]~41\)) # (!\pmw|count\(5) & ((\pmw|count[4]~41\) # (GND)))
-- \pmw|count[5]~43\ = CARRY((!\pmw|count[4]~41\) # (!\pmw|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pmw|count\(5),
	datad => VCC,
	cin => \pmw|count[4]~41\,
	combout => \pmw|count[5]~42_combout\,
	cout => \pmw|count[5]~43\);

-- Location: FF_X35_Y20_N11
\pmw|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[5]~42_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(5));

-- Location: LCCOMB_X35_Y20_N12
\pmw|count[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[6]~44_combout\ = (\pmw|count\(6) & (\pmw|count[5]~43\ $ (GND))) # (!\pmw|count\(6) & (!\pmw|count[5]~43\ & VCC))
-- \pmw|count[6]~45\ = CARRY((\pmw|count\(6) & !\pmw|count[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pmw|count\(6),
	datad => VCC,
	cin => \pmw|count[5]~43\,
	combout => \pmw|count[6]~44_combout\,
	cout => \pmw|count[6]~45\);

-- Location: FF_X35_Y20_N13
\pmw|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[6]~44_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(6));

-- Location: LCCOMB_X35_Y20_N14
\pmw|count[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[7]~46_combout\ = (\pmw|count\(7) & (!\pmw|count[6]~45\)) # (!\pmw|count\(7) & ((\pmw|count[6]~45\) # (GND)))
-- \pmw|count[7]~47\ = CARRY((!\pmw|count[6]~45\) # (!\pmw|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pmw|count\(7),
	datad => VCC,
	cin => \pmw|count[6]~45\,
	combout => \pmw|count[7]~46_combout\,
	cout => \pmw|count[7]~47\);

-- Location: FF_X35_Y20_N15
\pmw|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[7]~46_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(7));

-- Location: LCCOMB_X35_Y20_N16
\pmw|count[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[8]~48_combout\ = (\pmw|count\(8) & (\pmw|count[7]~47\ $ (GND))) # (!\pmw|count\(8) & (!\pmw|count[7]~47\ & VCC))
-- \pmw|count[8]~49\ = CARRY((\pmw|count\(8) & !\pmw|count[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pmw|count\(8),
	datad => VCC,
	cin => \pmw|count[7]~47\,
	combout => \pmw|count[8]~48_combout\,
	cout => \pmw|count[8]~49\);

-- Location: FF_X35_Y20_N17
\pmw|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[8]~48_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(8));

-- Location: LCCOMB_X35_Y20_N18
\pmw|count[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[9]~50_combout\ = (\pmw|count\(9) & (!\pmw|count[8]~49\)) # (!\pmw|count\(9) & ((\pmw|count[8]~49\) # (GND)))
-- \pmw|count[9]~51\ = CARRY((!\pmw|count[8]~49\) # (!\pmw|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pmw|count\(9),
	datad => VCC,
	cin => \pmw|count[8]~49\,
	combout => \pmw|count[9]~50_combout\,
	cout => \pmw|count[9]~51\);

-- Location: FF_X35_Y20_N19
\pmw|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[9]~50_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(9));

-- Location: LCCOMB_X35_Y20_N20
\pmw|count[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[10]~52_combout\ = (\pmw|count\(10) & (\pmw|count[9]~51\ $ (GND))) # (!\pmw|count\(10) & (!\pmw|count[9]~51\ & VCC))
-- \pmw|count[10]~53\ = CARRY((\pmw|count\(10) & !\pmw|count[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pmw|count\(10),
	datad => VCC,
	cin => \pmw|count[9]~51\,
	combout => \pmw|count[10]~52_combout\,
	cout => \pmw|count[10]~53\);

-- Location: FF_X35_Y20_N21
\pmw|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[10]~52_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(10));

-- Location: LCCOMB_X35_Y20_N22
\pmw|count[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[11]~54_combout\ = (\pmw|count\(11) & (!\pmw|count[10]~53\)) # (!\pmw|count\(11) & ((\pmw|count[10]~53\) # (GND)))
-- \pmw|count[11]~55\ = CARRY((!\pmw|count[10]~53\) # (!\pmw|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pmw|count\(11),
	datad => VCC,
	cin => \pmw|count[10]~53\,
	combout => \pmw|count[11]~54_combout\,
	cout => \pmw|count[11]~55\);

-- Location: FF_X35_Y20_N23
\pmw|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[11]~54_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(11));

-- Location: LCCOMB_X35_Y20_N24
\pmw|count[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[12]~56_combout\ = (\pmw|count\(12) & (\pmw|count[11]~55\ $ (GND))) # (!\pmw|count\(12) & (!\pmw|count[11]~55\ & VCC))
-- \pmw|count[12]~57\ = CARRY((\pmw|count\(12) & !\pmw|count[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pmw|count\(12),
	datad => VCC,
	cin => \pmw|count[11]~55\,
	combout => \pmw|count[12]~56_combout\,
	cout => \pmw|count[12]~57\);

-- Location: FF_X35_Y20_N25
\pmw|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[12]~56_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(12));

-- Location: LCCOMB_X35_Y20_N26
\pmw|count[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[13]~58_combout\ = (\pmw|count\(13) & (!\pmw|count[12]~57\)) # (!\pmw|count\(13) & ((\pmw|count[12]~57\) # (GND)))
-- \pmw|count[13]~59\ = CARRY((!\pmw|count[12]~57\) # (!\pmw|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pmw|count\(13),
	datad => VCC,
	cin => \pmw|count[12]~57\,
	combout => \pmw|count[13]~58_combout\,
	cout => \pmw|count[13]~59\);

-- Location: LCCOMB_X36_Y19_N12
\pmw|count[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[13]~feeder_combout\ = \pmw|count[13]~58_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pmw|count[13]~58_combout\,
	combout => \pmw|count[13]~feeder_combout\);

-- Location: FF_X36_Y19_N13
\pmw|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[13]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(13));

-- Location: LCCOMB_X35_Y20_N28
\pmw|count[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[14]~60_combout\ = (\pmw|count\(14) & (\pmw|count[13]~59\ $ (GND))) # (!\pmw|count\(14) & (!\pmw|count[13]~59\ & VCC))
-- \pmw|count[14]~61\ = CARRY((\pmw|count\(14) & !\pmw|count[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pmw|count\(14),
	datad => VCC,
	cin => \pmw|count[13]~59\,
	combout => \pmw|count[14]~60_combout\,
	cout => \pmw|count[14]~61\);

-- Location: LCCOMB_X36_Y19_N30
\pmw|count[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[14]~feeder_combout\ = \pmw|count[14]~60_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pmw|count[14]~60_combout\,
	combout => \pmw|count[14]~feeder_combout\);

-- Location: FF_X36_Y19_N31
\pmw|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[14]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(14));

-- Location: LCCOMB_X35_Y20_N30
\pmw|count[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[15]~62_combout\ = (\pmw|count\(15) & (!\pmw|count[14]~61\)) # (!\pmw|count\(15) & ((\pmw|count[14]~61\) # (GND)))
-- \pmw|count[15]~63\ = CARRY((!\pmw|count[14]~61\) # (!\pmw|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pmw|count\(15),
	datad => VCC,
	cin => \pmw|count[14]~61\,
	combout => \pmw|count[15]~62_combout\,
	cout => \pmw|count[15]~63\);

-- Location: LCCOMB_X36_Y19_N4
\pmw|count[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[15]~feeder_combout\ = \pmw|count[15]~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pmw|count[15]~62_combout\,
	combout => \pmw|count[15]~feeder_combout\);

-- Location: FF_X36_Y19_N5
\pmw|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[15]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(15));

-- Location: LCCOMB_X35_Y19_N0
\pmw|count[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[16]~64_combout\ = (\pmw|count\(16) & (\pmw|count[15]~63\ $ (GND))) # (!\pmw|count\(16) & (!\pmw|count[15]~63\ & VCC))
-- \pmw|count[16]~65\ = CARRY((\pmw|count\(16) & !\pmw|count[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pmw|count\(16),
	datad => VCC,
	cin => \pmw|count[15]~63\,
	combout => \pmw|count[16]~64_combout\,
	cout => \pmw|count[16]~65\);

-- Location: FF_X35_Y19_N1
\pmw|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[16]~64_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(16));

-- Location: LCCOMB_X35_Y19_N2
\pmw|count[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[17]~66_combout\ = (\pmw|count\(17) & (!\pmw|count[16]~65\)) # (!\pmw|count\(17) & ((\pmw|count[16]~65\) # (GND)))
-- \pmw|count[17]~67\ = CARRY((!\pmw|count[16]~65\) # (!\pmw|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pmw|count\(17),
	datad => VCC,
	cin => \pmw|count[16]~65\,
	combout => \pmw|count[17]~66_combout\,
	cout => \pmw|count[17]~67\);

-- Location: FF_X35_Y19_N3
\pmw|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[17]~66_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(17));

-- Location: LCCOMB_X35_Y19_N4
\pmw|count[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[18]~68_combout\ = (\pmw|count\(18) & (\pmw|count[17]~67\ $ (GND))) # (!\pmw|count\(18) & (!\pmw|count[17]~67\ & VCC))
-- \pmw|count[18]~69\ = CARRY((\pmw|count\(18) & !\pmw|count[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pmw|count\(18),
	datad => VCC,
	cin => \pmw|count[17]~67\,
	combout => \pmw|count[18]~68_combout\,
	cout => \pmw|count[18]~69\);

-- Location: FF_X35_Y19_N5
\pmw|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[18]~68_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(18));

-- Location: LCCOMB_X35_Y19_N6
\pmw|count[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[19]~70_combout\ = (\pmw|count\(19) & (!\pmw|count[18]~69\)) # (!\pmw|count\(19) & ((\pmw|count[18]~69\) # (GND)))
-- \pmw|count[19]~71\ = CARRY((!\pmw|count[18]~69\) # (!\pmw|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pmw|count\(19),
	datad => VCC,
	cin => \pmw|count[18]~69\,
	combout => \pmw|count[19]~70_combout\,
	cout => \pmw|count[19]~71\);

-- Location: FF_X35_Y19_N7
\pmw|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[19]~70_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(19));

-- Location: LCCOMB_X35_Y19_N8
\pmw|count[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[20]~72_combout\ = (\pmw|count\(20) & (\pmw|count[19]~71\ $ (GND))) # (!\pmw|count\(20) & (!\pmw|count[19]~71\ & VCC))
-- \pmw|count[20]~73\ = CARRY((\pmw|count\(20) & !\pmw|count[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pmw|count\(20),
	datad => VCC,
	cin => \pmw|count[19]~71\,
	combout => \pmw|count[20]~72_combout\,
	cout => \pmw|count[20]~73\);

-- Location: FF_X35_Y19_N9
\pmw|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[20]~72_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(20));

-- Location: LCCOMB_X35_Y19_N10
\pmw|count[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[21]~74_combout\ = (\pmw|count\(21) & (!\pmw|count[20]~73\)) # (!\pmw|count\(21) & ((\pmw|count[20]~73\) # (GND)))
-- \pmw|count[21]~75\ = CARRY((!\pmw|count[20]~73\) # (!\pmw|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pmw|count\(21),
	datad => VCC,
	cin => \pmw|count[20]~73\,
	combout => \pmw|count[21]~74_combout\,
	cout => \pmw|count[21]~75\);

-- Location: FF_X35_Y19_N11
\pmw|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[21]~74_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(21));

-- Location: LCCOMB_X35_Y19_N12
\pmw|count[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[22]~76_combout\ = (\pmw|count\(22) & (\pmw|count[21]~75\ $ (GND))) # (!\pmw|count\(22) & (!\pmw|count[21]~75\ & VCC))
-- \pmw|count[22]~77\ = CARRY((\pmw|count\(22) & !\pmw|count[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pmw|count\(22),
	datad => VCC,
	cin => \pmw|count[21]~75\,
	combout => \pmw|count[22]~76_combout\,
	cout => \pmw|count[22]~77\);

-- Location: FF_X35_Y19_N13
\pmw|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[22]~76_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(22));

-- Location: LCCOMB_X35_Y19_N14
\pmw|count[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[23]~78_combout\ = (\pmw|count\(23) & (!\pmw|count[22]~77\)) # (!\pmw|count\(23) & ((\pmw|count[22]~77\) # (GND)))
-- \pmw|count[23]~79\ = CARRY((!\pmw|count[22]~77\) # (!\pmw|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pmw|count\(23),
	datad => VCC,
	cin => \pmw|count[22]~77\,
	combout => \pmw|count[23]~78_combout\,
	cout => \pmw|count[23]~79\);

-- Location: FF_X35_Y19_N15
\pmw|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[23]~78_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(23));

-- Location: LCCOMB_X35_Y19_N16
\pmw|count[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[24]~80_combout\ = (\pmw|count\(24) & (\pmw|count[23]~79\ $ (GND))) # (!\pmw|count\(24) & (!\pmw|count[23]~79\ & VCC))
-- \pmw|count[24]~81\ = CARRY((\pmw|count\(24) & !\pmw|count[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pmw|count\(24),
	datad => VCC,
	cin => \pmw|count[23]~79\,
	combout => \pmw|count[24]~80_combout\,
	cout => \pmw|count[24]~81\);

-- Location: FF_X35_Y19_N17
\pmw|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[24]~80_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(24));

-- Location: LCCOMB_X35_Y19_N18
\pmw|count[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[25]~82_combout\ = (\pmw|count\(25) & (!\pmw|count[24]~81\)) # (!\pmw|count\(25) & ((\pmw|count[24]~81\) # (GND)))
-- \pmw|count[25]~83\ = CARRY((!\pmw|count[24]~81\) # (!\pmw|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pmw|count\(25),
	datad => VCC,
	cin => \pmw|count[24]~81\,
	combout => \pmw|count[25]~82_combout\,
	cout => \pmw|count[25]~83\);

-- Location: FF_X35_Y19_N19
\pmw|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[25]~82_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(25));

-- Location: LCCOMB_X35_Y19_N20
\pmw|count[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[26]~84_combout\ = (\pmw|count\(26) & (\pmw|count[25]~83\ $ (GND))) # (!\pmw|count\(26) & (!\pmw|count[25]~83\ & VCC))
-- \pmw|count[26]~85\ = CARRY((\pmw|count\(26) & !\pmw|count[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pmw|count\(26),
	datad => VCC,
	cin => \pmw|count[25]~83\,
	combout => \pmw|count[26]~84_combout\,
	cout => \pmw|count[26]~85\);

-- Location: FF_X35_Y19_N21
\pmw|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[26]~84_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(26));

-- Location: LCCOMB_X35_Y19_N22
\pmw|count[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[27]~86_combout\ = (\pmw|count\(27) & (!\pmw|count[26]~85\)) # (!\pmw|count\(27) & ((\pmw|count[26]~85\) # (GND)))
-- \pmw|count[27]~87\ = CARRY((!\pmw|count[26]~85\) # (!\pmw|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pmw|count\(27),
	datad => VCC,
	cin => \pmw|count[26]~85\,
	combout => \pmw|count[27]~86_combout\,
	cout => \pmw|count[27]~87\);

-- Location: FF_X35_Y19_N23
\pmw|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[27]~86_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(27));

-- Location: LCCOMB_X35_Y19_N24
\pmw|count[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[28]~88_combout\ = (\pmw|count\(28) & (\pmw|count[27]~87\ $ (GND))) # (!\pmw|count\(28) & (!\pmw|count[27]~87\ & VCC))
-- \pmw|count[28]~89\ = CARRY((\pmw|count\(28) & !\pmw|count[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pmw|count\(28),
	datad => VCC,
	cin => \pmw|count[27]~87\,
	combout => \pmw|count[28]~88_combout\,
	cout => \pmw|count[28]~89\);

-- Location: FF_X35_Y19_N25
\pmw|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[28]~88_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(28));

-- Location: LCCOMB_X35_Y19_N26
\pmw|count[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[29]~90_combout\ = (\pmw|count\(29) & (!\pmw|count[28]~89\)) # (!\pmw|count\(29) & ((\pmw|count[28]~89\) # (GND)))
-- \pmw|count[29]~91\ = CARRY((!\pmw|count[28]~89\) # (!\pmw|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pmw|count\(29),
	datad => VCC,
	cin => \pmw|count[28]~89\,
	combout => \pmw|count[29]~90_combout\,
	cout => \pmw|count[29]~91\);

-- Location: FF_X35_Y19_N27
\pmw|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[29]~90_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(29));

-- Location: LCCOMB_X35_Y19_N28
\pmw|count[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[30]~92_combout\ = (\pmw|count\(30) & (\pmw|count[29]~91\ $ (GND))) # (!\pmw|count\(30) & (!\pmw|count[29]~91\ & VCC))
-- \pmw|count[30]~93\ = CARRY((\pmw|count\(30) & !\pmw|count[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pmw|count\(30),
	datad => VCC,
	cin => \pmw|count[29]~91\,
	combout => \pmw|count[30]~92_combout\,
	cout => \pmw|count[30]~93\);

-- Location: FF_X35_Y19_N29
\pmw|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[30]~92_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(30));

-- Location: LCCOMB_X35_Y19_N30
\pmw|count[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|count[31]~94_combout\ = \pmw|count\(31) $ (\pmw|count[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pmw|count\(31),
	cin => \pmw|count[30]~93\,
	combout => \pmw|count[31]~94_combout\);

-- Location: FF_X35_Y19_N31
\pmw|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|count[31]~94_combout\,
	asdata => \~GND~combout\,
	clrn => \raz_n~input_o\,
	sload => \pmw|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|count\(31));

-- Location: LCCOMB_X36_Y20_N8
\pmw|tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|tmp~0_combout\ = ((!\pmw|count\(7) & (!\pmw|count\(8) & !\pmw|count\(6)))) # (!\pmw|count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pmw|count\(7),
	datab => \pmw|count\(9),
	datac => \pmw|count\(8),
	datad => \pmw|count\(6),
	combout => \pmw|tmp~0_combout\);

-- Location: LCCOMB_X36_Y19_N24
\pmw|tmp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|tmp~1_combout\ = (\pmw|tmp~0_combout\ & (!\pmw|count\(10) & (!\pmw|count\(11) & \pmw|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pmw|tmp~0_combout\,
	datab => \pmw|count\(10),
	datac => \pmw|count\(11),
	datad => \pmw|LessThan0~5_combout\,
	combout => \pmw|tmp~1_combout\);

-- Location: LCCOMB_X36_Y19_N18
\pmw|tmp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pmw|tmp~2_combout\ = (\pmw|count\(31)) # ((\pmw|tmp~1_combout\) # ((\pmw|LessThan0~7_combout\ & \pmw|tmp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pmw|count\(31),
	datab => \pmw|LessThan0~7_combout\,
	datac => \pmw|tmp~q\,
	datad => \pmw|tmp~1_combout\,
	combout => \pmw|tmp~2_combout\);

-- Location: FF_X36_Y19_N19
\pmw|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pmw|tmp~2_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pmw|tmp~q\);

-- Location: LCCOMB_X32_Y19_N6
\machine|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \machine|Selector3~0_combout\ = (\start_stop~input_o\ & (\machine|current_state.etat2~q\ & ((!\pmw|tmp~q\)))) # (!\start_stop~input_o\ & ((\machine|current_state.etat3~q\) # ((\machine|current_state.etat2~q\ & !\pmw|tmp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_stop~input_o\,
	datab => \machine|current_state.etat2~q\,
	datac => \machine|current_state.etat3~q\,
	datad => \pmw|tmp~q\,
	combout => \machine|Selector3~0_combout\);

-- Location: FF_X32_Y19_N7
\machine|current_state.etat3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \machine|Selector3~0_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \machine|current_state.etat3~q\);

-- Location: LCCOMB_X32_Y19_N18
\machine|current_state.idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \machine|current_state.idle~0_combout\ = (\start_stop~input_o\ & ((!\machine|current_state.etat3~q\))) # (!\start_stop~input_o\ & (\machine|current_state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_stop~input_o\,
	datac => \machine|current_state.idle~q\,
	datad => \machine|current_state.etat3~q\,
	combout => \machine|current_state.idle~0_combout\);

-- Location: FF_X32_Y19_N19
\machine|current_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \machine|current_state.idle~0_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \machine|current_state.idle~q\);

-- Location: LCCOMB_X32_Y19_N28
\machine|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \machine|Selector1~0_combout\ = (\start_stop~input_o\ & (((\machine|current_state.wait_pwm~q\ & \pmw|tmp~q\)) # (!\machine|current_state.idle~q\))) # (!\start_stop~input_o\ & (((\machine|current_state.wait_pwm~q\ & \pmw|tmp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_stop~input_o\,
	datab => \machine|current_state.idle~q\,
	datac => \machine|current_state.wait_pwm~q\,
	datad => \pmw|tmp~q\,
	combout => \machine|Selector1~0_combout\);

-- Location: FF_X32_Y19_N29
\machine|current_state.wait_pwm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \machine|Selector1~0_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \machine|current_state.wait_pwm~q\);

-- Location: LCCOMB_X32_Y19_N12
\machine|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \machine|Selector2~0_combout\ = (!\pmw|tmp~q\ & ((\machine|current_state.wait_pwm~q\) # (\machine|current_state.etat0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \machine|current_state.wait_pwm~q\,
	datac => \machine|current_state.etat0~q\,
	datad => \pmw|tmp~q\,
	combout => \machine|Selector2~0_combout\);

-- Location: FF_X32_Y19_N13
\machine|current_state.etat0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \machine|Selector2~0_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \machine|current_state.etat0~q\);

-- Location: LCCOMB_X32_Y19_N10
\machine|next_state.etat2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \machine|next_state.etat2~0_combout\ = (\pmw|tmp~q\ & ((\machine|current_state.etat0~q\) # (\machine|current_state.etat2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \machine|current_state.etat0~q\,
	datac => \machine|current_state.etat2~q\,
	datad => \pmw|tmp~q\,
	combout => \machine|next_state.etat2~0_combout\);

-- Location: LCCOMB_X32_Y19_N8
\machine|current_state.etat2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \machine|current_state.etat2~feeder_combout\ = \machine|next_state.etat2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \machine|next_state.etat2~0_combout\,
	combout => \machine|current_state.etat2~feeder_combout\);

-- Location: FF_X32_Y19_N9
\machine|current_state.etat2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \machine|current_state.etat2~feeder_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \machine|current_state.etat2~q\);

-- Location: LCCOMB_X32_Y19_N30
\compt|count[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \compt|count[0]~7_combout\ = \compt|count\(0) $ (\machine|current_state.etat2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \compt|count\(0),
	datac => \machine|current_state.etat2~q\,
	combout => \compt|count[0]~7_combout\);

-- Location: LCCOMB_X32_Y19_N4
\compt|count[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \compt|count[0]~feeder_combout\ = \compt|count[0]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \compt|count[0]~7_combout\,
	combout => \compt|count[0]~feeder_combout\);

-- Location: FF_X32_Y19_N5
\compt|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div10k|tmp~clkctrl_outclk\,
	d => \compt|count[0]~feeder_combout\,
	clrn => \raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compt|count\(0));

-- Location: LCCOMB_X31_Y19_N20
\regis|data_out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regis|data_out[0]~feeder_combout\ = \compt|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \compt|count\(0),
	combout => \regis|data_out[0]~feeder_combout\);

-- Location: FF_X31_Y19_N21
\regis|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regis|data_out[0]~feeder_combout\,
	clrn => \raz_n~input_o\,
	ena => \machine|current_state.etat3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis|data_out\(0));

-- Location: LCCOMB_X31_Y19_N6
\compt|count[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \compt|count[1]~8_combout\ = (\compt|count\(0) & (\compt|count\(1) $ (VCC))) # (!\compt|count\(0) & (\compt|count\(1) & VCC))
-- \compt|count[1]~9\ = CARRY((\compt|count\(0) & \compt|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compt|count\(0),
	datab => \compt|count\(1),
	datad => VCC,
	combout => \compt|count[1]~8_combout\,
	cout => \compt|count[1]~9\);

-- Location: FF_X31_Y19_N7
\compt|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div10k|tmp~clkctrl_outclk\,
	d => \compt|count[1]~8_combout\,
	clrn => \raz_n~input_o\,
	ena => \machine|current_state.etat2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compt|count\(1));

-- Location: LCCOMB_X31_Y19_N26
\regis|data_out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regis|data_out[1]~feeder_combout\ = \compt|count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \compt|count\(1),
	combout => \regis|data_out[1]~feeder_combout\);

-- Location: FF_X31_Y19_N27
\regis|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regis|data_out[1]~feeder_combout\,
	clrn => \raz_n~input_o\,
	ena => \machine|current_state.etat3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis|data_out\(1));

-- Location: LCCOMB_X31_Y19_N8
\compt|count[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \compt|count[2]~10_combout\ = (\compt|count\(2) & (!\compt|count[1]~9\)) # (!\compt|count\(2) & ((\compt|count[1]~9\) # (GND)))
-- \compt|count[2]~11\ = CARRY((!\compt|count[1]~9\) # (!\compt|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compt|count\(2),
	datad => VCC,
	cin => \compt|count[1]~9\,
	combout => \compt|count[2]~10_combout\,
	cout => \compt|count[2]~11\);

-- Location: FF_X31_Y19_N9
\compt|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div10k|tmp~clkctrl_outclk\,
	d => \compt|count[2]~10_combout\,
	clrn => \raz_n~input_o\,
	ena => \machine|current_state.etat2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compt|count\(2));

-- Location: LCCOMB_X31_Y19_N24
\regis|data_out[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regis|data_out[2]~feeder_combout\ = \compt|count\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \compt|count\(2),
	combout => \regis|data_out[2]~feeder_combout\);

-- Location: FF_X31_Y19_N25
\regis|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regis|data_out[2]~feeder_combout\,
	clrn => \raz_n~input_o\,
	ena => \machine|current_state.etat3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis|data_out\(2));

-- Location: LCCOMB_X31_Y19_N10
\compt|count[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \compt|count[3]~12_combout\ = (\compt|count\(3) & (\compt|count[2]~11\ $ (GND))) # (!\compt|count\(3) & (!\compt|count[2]~11\ & VCC))
-- \compt|count[3]~13\ = CARRY((\compt|count\(3) & !\compt|count[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compt|count\(3),
	datad => VCC,
	cin => \compt|count[2]~11\,
	combout => \compt|count[3]~12_combout\,
	cout => \compt|count[3]~13\);

-- Location: FF_X31_Y19_N11
\compt|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div10k|tmp~clkctrl_outclk\,
	d => \compt|count[3]~12_combout\,
	clrn => \raz_n~input_o\,
	ena => \machine|current_state.etat2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compt|count\(3));

-- Location: LCCOMB_X31_Y19_N28
\regis|data_out[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regis|data_out[3]~feeder_combout\ = \compt|count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \compt|count\(3),
	combout => \regis|data_out[3]~feeder_combout\);

-- Location: FF_X31_Y19_N29
\regis|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regis|data_out[3]~feeder_combout\,
	clrn => \raz_n~input_o\,
	ena => \machine|current_state.etat3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis|data_out\(3));

-- Location: LCCOMB_X31_Y19_N12
\compt|count[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \compt|count[4]~14_combout\ = (\compt|count\(4) & (!\compt|count[3]~13\)) # (!\compt|count\(4) & ((\compt|count[3]~13\) # (GND)))
-- \compt|count[4]~15\ = CARRY((!\compt|count[3]~13\) # (!\compt|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compt|count\(4),
	datad => VCC,
	cin => \compt|count[3]~13\,
	combout => \compt|count[4]~14_combout\,
	cout => \compt|count[4]~15\);

-- Location: FF_X31_Y19_N13
\compt|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div10k|tmp~clkctrl_outclk\,
	d => \compt|count[4]~14_combout\,
	clrn => \raz_n~input_o\,
	ena => \machine|current_state.etat2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compt|count\(4));

-- Location: LCCOMB_X31_Y19_N30
\regis|data_out[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regis|data_out[4]~feeder_combout\ = \compt|count\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \compt|count\(4),
	combout => \regis|data_out[4]~feeder_combout\);

-- Location: FF_X31_Y19_N31
\regis|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regis|data_out[4]~feeder_combout\,
	clrn => \raz_n~input_o\,
	ena => \machine|current_state.etat3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis|data_out\(4));

-- Location: LCCOMB_X31_Y19_N14
\compt|count[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \compt|count[5]~16_combout\ = (\compt|count\(5) & (\compt|count[4]~15\ $ (GND))) # (!\compt|count\(5) & (!\compt|count[4]~15\ & VCC))
-- \compt|count[5]~17\ = CARRY((\compt|count\(5) & !\compt|count[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compt|count\(5),
	datad => VCC,
	cin => \compt|count[4]~15\,
	combout => \compt|count[5]~16_combout\,
	cout => \compt|count[5]~17\);

-- Location: FF_X31_Y19_N15
\compt|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div10k|tmp~clkctrl_outclk\,
	d => \compt|count[5]~16_combout\,
	clrn => \raz_n~input_o\,
	ena => \machine|current_state.etat2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compt|count\(5));

-- Location: LCCOMB_X31_Y19_N0
\regis|data_out[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regis|data_out[5]~feeder_combout\ = \compt|count\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \compt|count\(5),
	combout => \regis|data_out[5]~feeder_combout\);

-- Location: FF_X31_Y19_N1
\regis|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regis|data_out[5]~feeder_combout\,
	clrn => \raz_n~input_o\,
	ena => \machine|current_state.etat3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis|data_out\(5));

-- Location: LCCOMB_X31_Y19_N16
\compt|count[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \compt|count[6]~18_combout\ = (\compt|count\(6) & (!\compt|count[5]~17\)) # (!\compt|count\(6) & ((\compt|count[5]~17\) # (GND)))
-- \compt|count[6]~19\ = CARRY((!\compt|count[5]~17\) # (!\compt|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compt|count\(6),
	datad => VCC,
	cin => \compt|count[5]~17\,
	combout => \compt|count[6]~18_combout\,
	cout => \compt|count[6]~19\);

-- Location: FF_X31_Y19_N17
\compt|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div10k|tmp~clkctrl_outclk\,
	d => \compt|count[6]~18_combout\,
	clrn => \raz_n~input_o\,
	ena => \machine|current_state.etat2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compt|count\(6));

-- Location: LCCOMB_X31_Y19_N22
\regis|data_out[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regis|data_out[6]~feeder_combout\ = \compt|count\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \compt|count\(6),
	combout => \regis|data_out[6]~feeder_combout\);

-- Location: FF_X31_Y19_N23
\regis|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regis|data_out[6]~feeder_combout\,
	clrn => \raz_n~input_o\,
	ena => \machine|current_state.etat3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis|data_out\(6));

-- Location: LCCOMB_X31_Y19_N18
\compt|count[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \compt|count[7]~20_combout\ = \compt|count\(7) $ (!\compt|count[6]~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compt|count\(7),
	cin => \compt|count[6]~19\,
	combout => \compt|count[7]~20_combout\);

-- Location: FF_X31_Y19_N19
\compt|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div10k|tmp~clkctrl_outclk\,
	d => \compt|count[7]~20_combout\,
	clrn => \raz_n~input_o\,
	ena => \machine|current_state.etat2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compt|count\(7));

-- Location: LCCOMB_X31_Y19_N4
\regis|data_out[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regis|data_out[7]~feeder_combout\ = \compt|count\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \compt|count\(7),
	combout => \regis|data_out[7]~feeder_combout\);

-- Location: FF_X31_Y19_N5
\regis|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regis|data_out[7]~feeder_combout\,
	clrn => \raz_n~input_o\,
	ena => \machine|current_state.etat3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis|data_out\(7));

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_data_out(7) <= \data_out[7]~output_o\;
END structure;


