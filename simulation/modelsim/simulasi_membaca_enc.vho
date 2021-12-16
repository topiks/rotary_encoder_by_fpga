-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "12/16/2021 22:37:40"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	simulasi_membaca_enc IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	satuan_out : OUT std_logic_vector(6 DOWNTO 0);
	puluhan_out : OUT std_logic_vector(6 DOWNTO 0);
	ratusan_out : OUT std_logic_vector(6 DOWNTO 0)
	);
END simulasi_membaca_enc;

-- Design Ports Information
-- satuan_out[0]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- satuan_out[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- satuan_out[2]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- satuan_out[3]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- satuan_out[4]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- satuan_out[5]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- satuan_out[6]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- puluhan_out[0]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- puluhan_out[1]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- puluhan_out[2]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- puluhan_out[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- puluhan_out[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- puluhan_out[5]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- puluhan_out[6]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ratusan_out[0]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ratusan_out[1]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ratusan_out[2]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ratusan_out[3]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ratusan_out[4]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ratusan_out[5]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ratusan_out[6]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A	=>  Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF simulasi_membaca_enc IS
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
SIGNAL ww_B : std_logic;
SIGNAL ww_satuan_out : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_puluhan_out : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ratusan_out : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \arah[0]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \satuan_out[0]~output_o\ : std_logic;
SIGNAL \satuan_out[1]~output_o\ : std_logic;
SIGNAL \satuan_out[2]~output_o\ : std_logic;
SIGNAL \satuan_out[3]~output_o\ : std_logic;
SIGNAL \satuan_out[4]~output_o\ : std_logic;
SIGNAL \satuan_out[5]~output_o\ : std_logic;
SIGNAL \satuan_out[6]~output_o\ : std_logic;
SIGNAL \puluhan_out[0]~output_o\ : std_logic;
SIGNAL \puluhan_out[1]~output_o\ : std_logic;
SIGNAL \puluhan_out[2]~output_o\ : std_logic;
SIGNAL \puluhan_out[3]~output_o\ : std_logic;
SIGNAL \puluhan_out[4]~output_o\ : std_logic;
SIGNAL \puluhan_out[5]~output_o\ : std_logic;
SIGNAL \puluhan_out[6]~output_o\ : std_logic;
SIGNAL \ratusan_out[0]~output_o\ : std_logic;
SIGNAL \ratusan_out[1]~output_o\ : std_logic;
SIGNAL \ratusan_out[2]~output_o\ : std_logic;
SIGNAL \ratusan_out[3]~output_o\ : std_logic;
SIGNAL \ratusan_out[4]~output_o\ : std_logic;
SIGNAL \ratusan_out[5]~output_o\ : std_logic;
SIGNAL \ratusan_out[6]~output_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \prevB~0_combout\ : std_logic;
SIGNAL \prevB~combout\ : std_logic;
SIGNAL \arah[1]~2_combout\ : std_logic;
SIGNAL \arah[0]~1_combout\ : std_logic;
SIGNAL \arah[0]~1clkctrl_outclk\ : std_logic;
SIGNAL \arah[0]~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \bolehmin[31]~feeder_combout\ : std_logic;
SIGNAL \Equal11~2_combout\ : std_logic;
SIGNAL \bolehmin[0]~0_combout\ : std_logic;
SIGNAL \Equal11~1_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \bolehplus[31]~feeder_combout\ : std_logic;
SIGNAL \Equal11~3_combout\ : std_logic;
SIGNAL \bolehplus[0]~0_combout\ : std_logic;
SIGNAL \satuan[0]~3_combout\ : std_logic;
SIGNAL \satuan[0]~4_combout\ : std_logic;
SIGNAL \satuan[0]~5_combout\ : std_logic;
SIGNAL \satuan[1]~7_cout\ : std_logic;
SIGNAL \satuan[1]~8_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \satuan[0]~10_combout\ : std_logic;
SIGNAL \satuan[1]~9\ : std_logic;
SIGNAL \satuan[2]~11_combout\ : std_logic;
SIGNAL \satuan[2]~12\ : std_logic;
SIGNAL \satuan[3]~13_combout\ : std_logic;
SIGNAL \comb~33_combout\ : std_logic;
SIGNAL \comb~34_combout\ : std_logic;
SIGNAL \satuan_out[0]$latch~combout\ : std_logic;
SIGNAL \comb~36_combout\ : std_logic;
SIGNAL \comb~35_combout\ : std_logic;
SIGNAL \satuan_out[1]$latch~combout\ : std_logic;
SIGNAL \comb~37_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \satuan_out[2]$latch~combout\ : std_logic;
SIGNAL \comb~60_combout\ : std_logic;
SIGNAL \comb~61_combout\ : std_logic;
SIGNAL \satuan_out[3]$latch~combout\ : std_logic;
SIGNAL \comb~64_combout\ : std_logic;
SIGNAL \comb~65_combout\ : std_logic;
SIGNAL \satuan_out[4]$latch~combout\ : std_logic;
SIGNAL \comb~38_combout\ : std_logic;
SIGNAL \comb~39_combout\ : std_logic;
SIGNAL \satuan_out[5]$latch~combout\ : std_logic;
SIGNAL \comb~40_combout\ : std_logic;
SIGNAL \comb~41_combout\ : std_logic;
SIGNAL \satuan_out[6]$latch~combout\ : std_logic;
SIGNAL \puluhan[0]~3_combout\ : std_logic;
SIGNAL \puluhan[0]~4_combout\ : std_logic;
SIGNAL \puluhan[1]~6_cout\ : std_logic;
SIGNAL \puluhan[1]~7_combout\ : std_logic;
SIGNAL \puluhan[1]~8\ : std_logic;
SIGNAL \puluhan[2]~10_combout\ : std_logic;
SIGNAL \puluhan[2]~11\ : std_logic;
SIGNAL \puluhan[3]~12_combout\ : std_logic;
SIGNAL \Equal21~1_combout\ : std_logic;
SIGNAL \ratusan[2]~3_combout\ : std_logic;
SIGNAL \Equal21~2_combout\ : std_logic;
SIGNAL \puluhan[0]~9_combout\ : std_logic;
SIGNAL \comb~43_combout\ : std_logic;
SIGNAL \comb~42_combout\ : std_logic;
SIGNAL \puluhan_out[0]$latch~combout\ : std_logic;
SIGNAL \comb~44_combout\ : std_logic;
SIGNAL \comb~45_combout\ : std_logic;
SIGNAL \puluhan_out[1]$latch~combout\ : std_logic;
SIGNAL \comb~46_combout\ : std_logic;
SIGNAL \Equal21~0_combout\ : std_logic;
SIGNAL \puluhan_out[2]$latch~combout\ : std_logic;
SIGNAL \comb~67_combout\ : std_logic;
SIGNAL \comb~66_combout\ : std_logic;
SIGNAL \puluhan_out[3]$latch~combout\ : std_logic;
SIGNAL \comb~69_combout\ : std_logic;
SIGNAL \comb~68_combout\ : std_logic;
SIGNAL \puluhan_out[4]$latch~combout\ : std_logic;
SIGNAL \comb~48_combout\ : std_logic;
SIGNAL \comb~47_combout\ : std_logic;
SIGNAL \puluhan_out[5]$latch~combout\ : std_logic;
SIGNAL \comb~49_combout\ : std_logic;
SIGNAL \comb~50_combout\ : std_logic;
SIGNAL \puluhan_out[6]$latch~combout\ : std_logic;
SIGNAL \ratusan[2]~4_combout\ : std_logic;
SIGNAL \ratusan[2]~5_combout\ : std_logic;
SIGNAL \ratusan[2]~6_combout\ : std_logic;
SIGNAL \ratusan[2]~7_combout\ : std_logic;
SIGNAL \ratusan[2]~8_combout\ : std_logic;
SIGNAL \ratusan[0]~9_combout\ : std_logic;
SIGNAL \ratusan[1]~11_cout\ : std_logic;
SIGNAL \ratusan[1]~12_combout\ : std_logic;
SIGNAL \ratusan[1]~13\ : std_logic;
SIGNAL \ratusan[2]~14_combout\ : std_logic;
SIGNAL \ratusan[2]~15\ : std_logic;
SIGNAL \ratusan[3]~16_combout\ : std_logic;
SIGNAL \comb~51_combout\ : std_logic;
SIGNAL \comb~52_combout\ : std_logic;
SIGNAL \ratusan_out[0]$latch~combout\ : std_logic;
SIGNAL \comb~53_combout\ : std_logic;
SIGNAL \comb~54_combout\ : std_logic;
SIGNAL \ratusan_out[1]$latch~combout\ : std_logic;
SIGNAL \comb~55_combout\ : std_logic;
SIGNAL \Equal31~0_combout\ : std_logic;
SIGNAL \ratusan_out[2]$latch~combout\ : std_logic;
SIGNAL \comb~62_combout\ : std_logic;
SIGNAL \comb~63_combout\ : std_logic;
SIGNAL \ratusan_out[3]$latch~combout\ : std_logic;
SIGNAL \comb~71_combout\ : std_logic;
SIGNAL \comb~70_combout\ : std_logic;
SIGNAL \ratusan_out[4]$latch~combout\ : std_logic;
SIGNAL \comb~56_combout\ : std_logic;
SIGNAL \comb~57_combout\ : std_logic;
SIGNAL \ratusan_out[5]$latch~combout\ : std_logic;
SIGNAL \comb~58_combout\ : std_logic;
SIGNAL \comb~59_combout\ : std_logic;
SIGNAL \ratusan_out[6]$latch~combout\ : std_logic;
SIGNAL satuan : std_logic_vector(3 DOWNTO 0);
SIGNAL puluhan : std_logic_vector(3 DOWNTO 0);
SIGNAL ratusan : std_logic_vector(3 DOWNTO 0);
SIGNAL bolehmin : std_logic_vector(31 DOWNTO 0);
SIGNAL bolehplus : std_logic_vector(31 DOWNTO 0);
SIGNAL arah : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_A~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
satuan_out <= ww_satuan_out;
puluhan_out <= ww_puluhan_out;
ratusan_out <= ww_ratusan_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\arah[0]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \arah[0]~1_combout\);
\ALT_INV_A~input_o\ <= NOT \A~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X58_Y54_N16
\satuan_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \satuan_out[0]$latch~combout\,
	devoe => ww_devoe,
	o => \satuan_out[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\satuan_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \satuan_out[1]$latch~combout\,
	devoe => ww_devoe,
	o => \satuan_out[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\satuan_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \satuan_out[2]$latch~combout\,
	devoe => ww_devoe,
	o => \satuan_out[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\satuan_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \satuan_out[3]$latch~combout\,
	devoe => ww_devoe,
	o => \satuan_out[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\satuan_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \satuan_out[4]$latch~combout\,
	devoe => ww_devoe,
	o => \satuan_out[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\satuan_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \satuan_out[5]$latch~combout\,
	devoe => ww_devoe,
	o => \satuan_out[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\satuan_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \satuan_out[6]$latch~combout\,
	devoe => ww_devoe,
	o => \satuan_out[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\puluhan_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \puluhan_out[0]$latch~combout\,
	devoe => ww_devoe,
	o => \puluhan_out[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\puluhan_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \puluhan_out[1]$latch~combout\,
	devoe => ww_devoe,
	o => \puluhan_out[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\puluhan_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \puluhan_out[2]$latch~combout\,
	devoe => ww_devoe,
	o => \puluhan_out[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\puluhan_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \puluhan_out[3]$latch~combout\,
	devoe => ww_devoe,
	o => \puluhan_out[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\puluhan_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \puluhan_out[4]$latch~combout\,
	devoe => ww_devoe,
	o => \puluhan_out[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\puluhan_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \puluhan_out[5]$latch~combout\,
	devoe => ww_devoe,
	o => \puluhan_out[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\puluhan_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \puluhan_out[6]$latch~combout\,
	devoe => ww_devoe,
	o => \puluhan_out[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\ratusan_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ratusan_out[0]$latch~combout\,
	devoe => ww_devoe,
	o => \ratusan_out[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\ratusan_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ratusan_out[1]$latch~combout\,
	devoe => ww_devoe,
	o => \ratusan_out[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\ratusan_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ratusan_out[2]$latch~combout\,
	devoe => ww_devoe,
	o => \ratusan_out[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\ratusan_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ratusan_out[3]$latch~combout\,
	devoe => ww_devoe,
	o => \ratusan_out[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\ratusan_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ratusan_out[4]$latch~combout\,
	devoe => ww_devoe,
	o => \ratusan_out[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\ratusan_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ratusan_out[5]$latch~combout\,
	devoe => ww_devoe,
	o => \ratusan_out[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\ratusan_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ratusan_out[6]$latch~combout\,
	devoe => ww_devoe,
	o => \ratusan_out[6]~output_o\);

-- Location: IOIBUF_X22_Y0_N15
\A~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\B~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LCCOMB_X22_Y1_N24
\prevB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \prevB~0_combout\ = (\A~input_o\ & (\prevB~combout\ $ (\B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \prevB~combout\,
	datac => \B~input_o\,
	datad => \A~input_o\,
	combout => \prevB~0_combout\);

-- Location: LCCOMB_X22_Y1_N16
prevB : fiftyfivenm_lcell_comb
-- Equation(s):
-- \prevB~combout\ = (\prevB~0_combout\ & ((\B~input_o\))) # (!\prevB~0_combout\ & (\prevB~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \prevB~combout\,
	datac => \B~input_o\,
	datad => \prevB~0_combout\,
	combout => \prevB~combout\);

-- Location: LCCOMB_X26_Y6_N4
\arah[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arah[1]~2_combout\ = (\A~input_o\ & ((\prevB~combout\) # (!\B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~input_o\,
	datac => \A~input_o\,
	datad => \prevB~combout\,
	combout => \arah[1]~2_combout\);

-- Location: LCCOMB_X22_Y1_N26
\arah[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arah[0]~1_combout\ = (\B~input_o\ $ (\prevB~combout\)) # (!\A~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~input_o\,
	datac => \A~input_o\,
	datad => \prevB~combout\,
	combout => \arah[0]~1_combout\);

-- Location: CLKCTRL_G18
\arah[0]~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \arah[0]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \arah[0]~1clkctrl_outclk\);

-- Location: LCCOMB_X25_Y6_N26
\arah[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- arah(1) = (GLOBAL(\arah[0]~1clkctrl_outclk\) & ((\arah[1]~2_combout\))) # (!GLOBAL(\arah[0]~1clkctrl_outclk\) & (arah(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arah(1),
	datac => \arah[1]~2_combout\,
	datad => \arah[0]~1clkctrl_outclk\,
	combout => arah(1));

-- Location: LCCOMB_X26_Y6_N30
\arah[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arah[0]~0_combout\ = ((\prevB~combout\) # (!\A~input_o\)) # (!\B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~input_o\,
	datac => \A~input_o\,
	datad => \prevB~combout\,
	combout => \arah[0]~0_combout\);

-- Location: LCCOMB_X25_Y6_N24
\arah[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- arah(0) = (GLOBAL(\arah[0]~1clkctrl_outclk\) & (!\arah[0]~0_combout\)) # (!GLOBAL(\arah[0]~1clkctrl_outclk\) & ((arah(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arah[0]~0_combout\,
	datac => arah(0),
	datad => \arah[0]~1clkctrl_outclk\,
	combout => arah(0));

-- Location: LCCOMB_X25_Y6_N6
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (arah(1)) # (!arah(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => arah(1),
	datad => arah(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X22_Y6_N18
\bolehmin[31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bolehmin[31]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \bolehmin[31]~feeder_combout\);

-- Location: LCCOMB_X26_Y6_N0
\Equal11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~2_combout\ = (!satuan(3) & (!satuan(2) & (!satuan(1) & !satuan(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => satuan(3),
	datab => satuan(2),
	datac => satuan(1),
	datad => satuan(0),
	combout => \Equal11~2_combout\);

-- Location: LCCOMB_X22_Y6_N16
\bolehmin[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bolehmin[0]~0_combout\ = (!arah(0) & (arah(1) & ((\process_0~0_combout\) # (\Equal11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \Equal11~2_combout\,
	datac => arah(0),
	datad => arah(1),
	combout => \bolehmin[0]~0_combout\);

-- Location: FF_X22_Y6_N19
\bolehmin[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_A~input_o\,
	d => \bolehmin[31]~feeder_combout\,
	ena => \bolehmin[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bolehmin(31));

-- Location: FF_X22_Y6_N13
\bolehmin[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_A~input_o\,
	asdata => \Equal11~2_combout\,
	sload => VCC,
	ena => \bolehmin[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bolehmin(0));

-- Location: LCCOMB_X27_Y6_N28
\Equal11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~1_combout\ = (!satuan(3) & (satuan(2) & (satuan(0) & satuan(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => satuan(3),
	datab => satuan(2),
	datac => satuan(0),
	datad => satuan(1),
	combout => \Equal11~1_combout\);

-- Location: LCCOMB_X22_Y6_N12
\process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\Equal11~1_combout\ & ((bolehmin(0)) # (!bolehmin(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bolehmin(31),
	datac => bolehmin(0),
	datad => \Equal11~1_combout\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X27_Y6_N12
\bolehplus[31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bolehplus[31]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \bolehplus[31]~feeder_combout\);

-- Location: LCCOMB_X26_Y6_N6
\Equal11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~3_combout\ = (satuan(3) & (!satuan(2) & (!satuan(1) & satuan(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => satuan(3),
	datab => satuan(2),
	datac => satuan(1),
	datad => satuan(0),
	combout => \Equal11~3_combout\);

-- Location: LCCOMB_X27_Y6_N2
\bolehplus[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bolehplus[0]~0_combout\ = (!arah(1) & (arah(0) & ((\satuan[0]~3_combout\) # (\Equal11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arah(1),
	datab => \satuan[0]~3_combout\,
	datac => \Equal11~3_combout\,
	datad => arah(0),
	combout => \bolehplus[0]~0_combout\);

-- Location: FF_X27_Y6_N13
\bolehplus[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_A~input_o\,
	d => \bolehplus[31]~feeder_combout\,
	ena => \bolehplus[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bolehplus(31));

-- Location: FF_X27_Y6_N3
\bolehplus[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_A~input_o\,
	asdata => \Equal11~3_combout\,
	sload => VCC,
	ena => \bolehplus[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bolehplus(0));

-- Location: LCCOMB_X27_Y6_N6
\satuan[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \satuan[0]~3_combout\ = (\Equal11~1_combout\ & ((bolehplus(0)) # (!bolehplus(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bolehplus(31),
	datac => bolehplus(0),
	datad => \Equal11~1_combout\,
	combout => \satuan[0]~3_combout\);

-- Location: LCCOMB_X26_Y6_N2
\satuan[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \satuan[0]~4_combout\ = (arah(1) & (!\process_0~0_combout\ & ((!arah(0))))) # (!arah(1) & (((!\satuan[0]~3_combout\ & arah(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => arah(1),
	datab => \process_0~0_combout\,
	datac => \satuan[0]~3_combout\,
	datad => arah(0),
	combout => \satuan[0]~4_combout\);

-- Location: LCCOMB_X27_Y6_N8
\satuan[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \satuan[0]~5_combout\ = satuan(0) $ (\satuan[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => satuan(0),
	datad => \satuan[0]~4_combout\,
	combout => \satuan[0]~5_combout\);

-- Location: FF_X27_Y6_N9
\satuan[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_A~input_o\,
	d => \satuan[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => satuan(0));

-- Location: LCCOMB_X26_Y6_N20
\satuan[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \satuan[1]~7_cout\ = CARRY(satuan(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => satuan(0),
	datad => VCC,
	cout => \satuan[1]~7_cout\);

-- Location: LCCOMB_X26_Y6_N22
\satuan[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \satuan[1]~8_combout\ = (satuan(1) & ((\Equal0~0_combout\ & (\satuan[1]~7_cout\ & VCC)) # (!\Equal0~0_combout\ & (!\satuan[1]~7_cout\)))) # (!satuan(1) & ((\Equal0~0_combout\ & (!\satuan[1]~7_cout\)) # (!\Equal0~0_combout\ & ((\satuan[1]~7_cout\) # 
-- (GND)))))
-- \satuan[1]~9\ = CARRY((satuan(1) & (!\Equal0~0_combout\ & !\satuan[1]~7_cout\)) # (!satuan(1) & ((!\satuan[1]~7_cout\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => satuan(1),
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \satuan[1]~7_cout\,
	combout => \satuan[1]~8_combout\,
	cout => \satuan[1]~9\);

-- Location: LCCOMB_X43_Y38_N24
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X26_Y6_N12
\satuan[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \satuan[0]~10_combout\ = (arah(1) & (((\Equal11~2_combout\)))) # (!arah(1) & ((arah(0) & (\Equal11~3_combout\)) # (!arah(0) & ((\Equal11~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~3_combout\,
	datab => \Equal11~2_combout\,
	datac => arah(1),
	datad => arah(0),
	combout => \satuan[0]~10_combout\);

-- Location: FF_X26_Y6_N23
\satuan[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_A~input_o\,
	d => \satuan[1]~8_combout\,
	asdata => \~GND~combout\,
	sload => \satuan[0]~10_combout\,
	ena => \satuan[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => satuan(1));

-- Location: LCCOMB_X26_Y6_N24
\satuan[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \satuan[2]~11_combout\ = ((satuan(2) $ (\Equal0~0_combout\ $ (!\satuan[1]~9\)))) # (GND)
-- \satuan[2]~12\ = CARRY((satuan(2) & ((\Equal0~0_combout\) # (!\satuan[1]~9\))) # (!satuan(2) & (\Equal0~0_combout\ & !\satuan[1]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => satuan(2),
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \satuan[1]~9\,
	combout => \satuan[2]~11_combout\,
	cout => \satuan[2]~12\);

-- Location: FF_X26_Y6_N25
\satuan[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_A~input_o\,
	d => \satuan[2]~11_combout\,
	asdata => \~GND~combout\,
	sload => \satuan[0]~10_combout\,
	ena => \satuan[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => satuan(2));

-- Location: LCCOMB_X26_Y6_N26
\satuan[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \satuan[3]~13_combout\ = satuan(3) $ (\Equal0~0_combout\ $ (\satuan[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => satuan(3),
	datab => \Equal0~0_combout\,
	cin => \satuan[2]~12\,
	combout => \satuan[3]~13_combout\);

-- Location: FF_X26_Y6_N27
\satuan[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_A~input_o\,
	d => \satuan[3]~13_combout\,
	asdata => \Equal0~0_combout\,
	sload => \satuan[0]~10_combout\,
	ena => \satuan[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => satuan(3));

-- Location: LCCOMB_X27_Y6_N22
\comb~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~33_combout\ = (satuan(3) & (!satuan(1) & ((!satuan(2))))) # (!satuan(3) & ((satuan(0) & ((satuan(1)) # (satuan(2)))) # (!satuan(0) & ((!satuan(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => satuan(3),
	datab => satuan(1),
	datac => satuan(0),
	datad => satuan(2),
	combout => \comb~33_combout\);

-- Location: LCCOMB_X27_Y6_N4
\comb~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~34_combout\ = (!satuan(3) & ((satuan(0) & (!satuan(1) & !satuan(2))) # (!satuan(0) & ((satuan(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => satuan(3),
	datab => satuan(1),
	datac => satuan(0),
	datad => satuan(2),
	combout => \comb~34_combout\);

-- Location: LCCOMB_X27_Y10_N16
\satuan_out[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \satuan_out[0]$latch~combout\ = (!\comb~33_combout\ & ((\comb~34_combout\) # (\satuan_out[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~33_combout\,
	datac => \comb~34_combout\,
	datad => \satuan_out[0]$latch~combout\,
	combout => \satuan_out[0]$latch~combout\);

-- Location: LCCOMB_X26_Y6_N28
\comb~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~36_combout\ = (!satuan(3) & (satuan(2) & (satuan(1) $ (satuan(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => satuan(3),
	datab => satuan(2),
	datac => satuan(1),
	datad => satuan(0),
	combout => \comb~36_combout\);

-- Location: LCCOMB_X27_Y6_N26
\comb~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~35_combout\ = (satuan(3) & (!satuan(1) & ((!satuan(2))))) # (!satuan(3) & ((satuan(1) $ (!satuan(0))) # (!satuan(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => satuan(3),
	datab => satuan(1),
	datac => satuan(0),
	datad => satuan(2),
	combout => \comb~35_combout\);

-- Location: LCCOMB_X30_Y6_N12
\satuan_out[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \satuan_out[1]$latch~combout\ = (!\comb~35_combout\ & ((\comb~36_combout\) # (\satuan_out[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~36_combout\,
	datab => \comb~35_combout\,
	datad => \satuan_out[1]$latch~combout\,
	combout => \satuan_out[1]$latch~combout\);

-- Location: LCCOMB_X26_Y6_N10
\comb~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~37_combout\ = (satuan(2) & (!satuan(3))) # (!satuan(2) & (((!satuan(3) & satuan(0))) # (!satuan(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => satuan(3),
	datab => satuan(2),
	datac => satuan(1),
	datad => satuan(0),
	combout => \comb~37_combout\);

-- Location: LCCOMB_X26_Y6_N16
\Equal11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (!satuan(3) & (!satuan(2) & (satuan(1) & !satuan(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => satuan(3),
	datab => satuan(2),
	datac => satuan(1),
	datad => satuan(0),
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X26_Y10_N20
\satuan_out[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \satuan_out[2]$latch~combout\ = (!\comb~37_combout\ & ((\Equal11~0_combout\) # (\satuan_out[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~37_combout\,
	datac => \Equal11~0_combout\,
	datad => \satuan_out[2]$latch~combout\,
	combout => \satuan_out[2]$latch~combout\);

-- Location: LCCOMB_X27_Y6_N0
\comb~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~60_combout\ = (satuan(0) & (!satuan(3) & (satuan(1) $ (satuan(2))))) # (!satuan(0) & ((satuan(1) & (!satuan(3))) # (!satuan(1) & ((!satuan(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => satuan(3),
	datab => satuan(1),
	datac => satuan(0),
	datad => satuan(2),
	combout => \comb~60_combout\);

-- Location: LCCOMB_X27_Y6_N14
\comb~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~61_combout\ = (satuan(2) & (!satuan(3) & (satuan(1) $ (!satuan(0))))) # (!satuan(2) & (((!satuan(1) & satuan(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => satuan(3),
	datab => satuan(1),
	datac => satuan(0),
	datad => satuan(2),
	combout => \comb~61_combout\);

-- Location: LCCOMB_X27_Y6_N18
\satuan_out[3]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \satuan_out[3]$latch~combout\ = (!\comb~60_combout\ & ((\comb~61_combout\) # (\satuan_out[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~60_combout\,
	datac => \comb~61_combout\,
	datad => \satuan_out[3]$latch~combout\,
	combout => \satuan_out[3]$latch~combout\);

-- Location: LCCOMB_X26_Y6_N14
\comb~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~64_combout\ = (!satuan(0) & ((satuan(1) & (!satuan(3))) # (!satuan(1) & ((!satuan(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => satuan(3),
	datab => satuan(2),
	datac => satuan(1),
	datad => satuan(0),
	combout => \comb~64_combout\);

-- Location: LCCOMB_X27_Y6_N16
\comb~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~65_combout\ = (satuan(1) & (!satuan(3) & (satuan(0)))) # (!satuan(1) & ((satuan(2) & (!satuan(3))) # (!satuan(2) & ((satuan(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => satuan(3),
	datab => satuan(1),
	datac => satuan(0),
	datad => satuan(2),
	combout => \comb~65_combout\);

-- Location: LCCOMB_X27_Y6_N20
\satuan_out[4]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \satuan_out[4]$latch~combout\ = (!\comb~64_combout\ & ((\comb~65_combout\) # (\satuan_out[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~64_combout\,
	datab => \comb~65_combout\,
	datad => \satuan_out[4]$latch~combout\,
	combout => \satuan_out[4]$latch~combout\);

-- Location: LCCOMB_X26_Y6_N18
\comb~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~38_combout\ = (satuan(2) & (!satuan(3) & ((!satuan(0)) # (!satuan(1))))) # (!satuan(2) & (!satuan(1) & ((satuan(3)) # (!satuan(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => satuan(3),
	datab => satuan(2),
	datac => satuan(1),
	datad => satuan(0),
	combout => \comb~38_combout\);

-- Location: LCCOMB_X26_Y6_N8
\comb~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~39_combout\ = (!satuan(3) & ((satuan(2) & (satuan(1) & satuan(0))) # (!satuan(2) & ((satuan(1)) # (satuan(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => satuan(3),
	datab => satuan(2),
	datac => satuan(1),
	datad => satuan(0),
	combout => \comb~39_combout\);

-- Location: LCCOMB_X30_Y6_N2
\satuan_out[5]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \satuan_out[5]$latch~combout\ = (!\comb~38_combout\ & ((\comb~39_combout\) # (\satuan_out[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~38_combout\,
	datac => \comb~39_combout\,
	datad => \satuan_out[5]$latch~combout\,
	combout => \satuan_out[5]$latch~combout\);

-- Location: LCCOMB_X27_Y6_N24
\comb~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~40_combout\ = (satuan(1) & (!satuan(3) & ((!satuan(2)) # (!satuan(0))))) # (!satuan(1) & (satuan(3) $ (((satuan(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => satuan(3),
	datab => satuan(1),
	datac => satuan(0),
	datad => satuan(2),
	combout => \comb~40_combout\);

-- Location: LCCOMB_X27_Y6_N30
\comb~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~41_combout\ = (!satuan(3) & ((satuan(1) & (satuan(0) & satuan(2))) # (!satuan(1) & ((!satuan(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => satuan(3),
	datab => satuan(1),
	datac => satuan(0),
	datad => satuan(2),
	combout => \comb~41_combout\);

-- Location: LCCOMB_X27_Y6_N10
\satuan_out[6]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \satuan_out[6]$latch~combout\ = (!\comb~40_combout\ & ((\comb~41_combout\) # (\satuan_out[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~40_combout\,
	datac => \comb~41_combout\,
	datad => \satuan_out[6]$latch~combout\,
	combout => \satuan_out[6]$latch~combout\);

-- Location: LCCOMB_X25_Y6_N8
\puluhan[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \puluhan[0]~3_combout\ = (arah(0) & (\Equal11~3_combout\ & ((!arah(1))))) # (!arah(0) & (((\Equal11~2_combout\ & arah(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~3_combout\,
	datab => \Equal11~2_combout\,
	datac => arah(0),
	datad => arah(1),
	combout => \puluhan[0]~3_combout\);

-- Location: LCCOMB_X23_Y6_N4
\puluhan[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \puluhan[0]~4_combout\ = puluhan(0) $ (\puluhan[0]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => puluhan(0),
	datad => \puluhan[0]~3_combout\,
	combout => \puluhan[0]~4_combout\);

-- Location: FF_X23_Y6_N5
\puluhan[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_A~input_o\,
	d => \puluhan[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => puluhan(0));

-- Location: LCCOMB_X25_Y6_N12
\puluhan[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \puluhan[1]~6_cout\ = CARRY(puluhan(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => puluhan(0),
	datad => VCC,
	cout => \puluhan[1]~6_cout\);

-- Location: LCCOMB_X25_Y6_N14
\puluhan[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \puluhan[1]~7_combout\ = (\Equal0~0_combout\ & ((puluhan(1) & (\puluhan[1]~6_cout\ & VCC)) # (!puluhan(1) & (!\puluhan[1]~6_cout\)))) # (!\Equal0~0_combout\ & ((puluhan(1) & (!\puluhan[1]~6_cout\)) # (!puluhan(1) & ((\puluhan[1]~6_cout\) # (GND)))))
-- \puluhan[1]~8\ = CARRY((\Equal0~0_combout\ & (!puluhan(1) & !\puluhan[1]~6_cout\)) # (!\Equal0~0_combout\ & ((!\puluhan[1]~6_cout\) # (!puluhan(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => puluhan(1),
	datad => VCC,
	cin => \puluhan[1]~6_cout\,
	combout => \puluhan[1]~7_combout\,
	cout => \puluhan[1]~8\);

-- Location: LCCOMB_X25_Y6_N16
\puluhan[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \puluhan[2]~10_combout\ = ((\Equal0~0_combout\ $ (puluhan(2) $ (!\puluhan[1]~8\)))) # (GND)
-- \puluhan[2]~11\ = CARRY((\Equal0~0_combout\ & ((puluhan(2)) # (!\puluhan[1]~8\))) # (!\Equal0~0_combout\ & (puluhan(2) & !\puluhan[1]~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => puluhan(2),
	datad => VCC,
	cin => \puluhan[1]~8\,
	combout => \puluhan[2]~10_combout\,
	cout => \puluhan[2]~11\);

-- Location: FF_X25_Y6_N17
\puluhan[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_A~input_o\,
	d => \puluhan[2]~10_combout\,
	asdata => \~GND~combout\,
	sload => \puluhan[0]~9_combout\,
	ena => \puluhan[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => puluhan(2));

-- Location: LCCOMB_X25_Y6_N18
\puluhan[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \puluhan[3]~12_combout\ = puluhan(3) $ (\puluhan[2]~11\ $ (\Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => puluhan(3),
	datad => \Equal0~0_combout\,
	cin => \puluhan[2]~11\,
	combout => \puluhan[3]~12_combout\);

-- Location: FF_X25_Y6_N19
\puluhan[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_A~input_o\,
	d => \puluhan[3]~12_combout\,
	asdata => \Equal0~0_combout\,
	sload => \puluhan[0]~9_combout\,
	ena => \puluhan[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => puluhan(3));

-- Location: LCCOMB_X25_Y6_N4
\Equal21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal21~1_combout\ = (!puluhan(1) & puluhan(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => puluhan(1),
	datac => puluhan(0),
	combout => \Equal21~1_combout\);

-- Location: LCCOMB_X25_Y6_N10
\ratusan[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ratusan[2]~3_combout\ = (\Equal11~3_combout\ & (puluhan(3) & (\Equal21~1_combout\ & !puluhan(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~3_combout\,
	datab => puluhan(3),
	datac => \Equal21~1_combout\,
	datad => puluhan(2),
	combout => \ratusan[2]~3_combout\);

-- Location: LCCOMB_X25_Y6_N28
\Equal21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal21~2_combout\ = (!puluhan(3) & (!puluhan(0) & (!puluhan(1) & !puluhan(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => puluhan(3),
	datab => puluhan(0),
	datac => puluhan(1),
	datad => puluhan(2),
	combout => \Equal21~2_combout\);

-- Location: LCCOMB_X25_Y6_N22
\puluhan[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \puluhan[0]~9_combout\ = (\Equal0~0_combout\ & (((\Equal21~2_combout\ & \Equal11~2_combout\)))) # (!\Equal0~0_combout\ & (\ratusan[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ratusan[2]~3_combout\,
	datab => \Equal21~2_combout\,
	datac => \Equal11~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \puluhan[0]~9_combout\);

-- Location: FF_X25_Y6_N15
\puluhan[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_A~input_o\,
	d => \puluhan[1]~7_combout\,
	asdata => \~GND~combout\,
	sload => \puluhan[0]~9_combout\,
	ena => \puluhan[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => puluhan(1));

-- Location: LCCOMB_X63_Y49_N14
\comb~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~43_combout\ = (!puluhan(3) & ((puluhan(0) & (!puluhan(1) & !puluhan(2))) # (!puluhan(0) & ((puluhan(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => puluhan(1),
	datab => puluhan(3),
	datac => puluhan(0),
	datad => puluhan(2),
	combout => \comb~43_combout\);

-- Location: LCCOMB_X63_Y49_N24
\comb~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~42_combout\ = (puluhan(1) & (!puluhan(3) & ((puluhan(0)) # (!puluhan(2))))) # (!puluhan(1) & (puluhan(2) $ (((puluhan(3)) # (!puluhan(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => puluhan(1),
	datab => puluhan(3),
	datac => puluhan(0),
	datad => puluhan(2),
	combout => \comb~42_combout\);

-- Location: LCCOMB_X64_Y49_N28
\puluhan_out[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \puluhan_out[0]$latch~combout\ = (!\comb~42_combout\ & ((\comb~43_combout\) # (\puluhan_out[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~43_combout\,
	datab => \comb~42_combout\,
	datad => \puluhan_out[0]$latch~combout\,
	combout => \puluhan_out[0]$latch~combout\);

-- Location: LCCOMB_X63_Y49_N12
\comb~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~44_combout\ = (puluhan(3) & (!puluhan(1) & ((!puluhan(2))))) # (!puluhan(3) & ((puluhan(1) $ (!puluhan(0))) # (!puluhan(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => puluhan(1),
	datab => puluhan(3),
	datac => puluhan(0),
	datad => puluhan(2),
	combout => \comb~44_combout\);

-- Location: LCCOMB_X63_Y49_N30
\comb~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~45_combout\ = (!puluhan(3) & (puluhan(2) & (puluhan(1) $ (puluhan(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => puluhan(1),
	datab => puluhan(3),
	datac => puluhan(0),
	datad => puluhan(2),
	combout => \comb~45_combout\);

-- Location: LCCOMB_X63_Y49_N20
\puluhan_out[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \puluhan_out[1]$latch~combout\ = (!\comb~44_combout\ & ((\comb~45_combout\) # (\puluhan_out[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~44_combout\,
	datac => \comb~45_combout\,
	datad => \puluhan_out[1]$latch~combout\,
	combout => \puluhan_out[1]$latch~combout\);

-- Location: LCCOMB_X63_Y49_N4
\comb~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~46_combout\ = (puluhan(2) & (((!puluhan(3))))) # (!puluhan(2) & (((!puluhan(3) & puluhan(0))) # (!puluhan(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => puluhan(1),
	datab => puluhan(3),
	datac => puluhan(0),
	datad => puluhan(2),
	combout => \comb~46_combout\);

-- Location: LCCOMB_X63_Y49_N18
\Equal21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal21~0_combout\ = (puluhan(1) & (!puluhan(3) & (!puluhan(0) & !puluhan(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => puluhan(1),
	datab => puluhan(3),
	datac => puluhan(0),
	datad => puluhan(2),
	combout => \Equal21~0_combout\);

-- Location: LCCOMB_X66_Y49_N0
\puluhan_out[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \puluhan_out[2]$latch~combout\ = (!\comb~46_combout\ & ((\Equal21~0_combout\) # (\puluhan_out[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~46_combout\,
	datac => \Equal21~0_combout\,
	datad => \puluhan_out[2]$latch~combout\,
	combout => \puluhan_out[2]$latch~combout\);

-- Location: LCCOMB_X63_Y49_N22
\comb~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~67_combout\ = (puluhan(2) & (!puluhan(3) & (puluhan(1) $ (!puluhan(0))))) # (!puluhan(2) & (!puluhan(1) & ((puluhan(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => puluhan(1),
	datab => puluhan(3),
	datac => puluhan(0),
	datad => puluhan(2),
	combout => \comb~67_combout\);

-- Location: LCCOMB_X63_Y49_N0
\comb~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~66_combout\ = (puluhan(0) & (!puluhan(3) & (puluhan(1) $ (puluhan(2))))) # (!puluhan(0) & ((puluhan(1) & (!puluhan(3))) # (!puluhan(1) & ((!puluhan(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => puluhan(1),
	datab => puluhan(3),
	datac => puluhan(0),
	datad => puluhan(2),
	combout => \comb~66_combout\);

-- Location: LCCOMB_X62_Y49_N0
\puluhan_out[3]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \puluhan_out[3]$latch~combout\ = (!\comb~66_combout\ & ((\comb~67_combout\) # (\puluhan_out[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~67_combout\,
	datac => \comb~66_combout\,
	datad => \puluhan_out[3]$latch~combout\,
	combout => \puluhan_out[3]$latch~combout\);

-- Location: LCCOMB_X63_Y49_N2
\comb~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~69_combout\ = (puluhan(1) & (!puluhan(3) & (puluhan(0)))) # (!puluhan(1) & ((puluhan(2) & (!puluhan(3))) # (!puluhan(2) & ((puluhan(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => puluhan(1),
	datab => puluhan(3),
	datac => puluhan(0),
	datad => puluhan(2),
	combout => \comb~69_combout\);

-- Location: LCCOMB_X63_Y49_N16
\comb~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~68_combout\ = (!puluhan(0) & ((puluhan(1) & (!puluhan(3))) # (!puluhan(1) & ((!puluhan(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => puluhan(1),
	datab => puluhan(3),
	datac => puluhan(0),
	datad => puluhan(2),
	combout => \comb~68_combout\);

-- Location: LCCOMB_X64_Y49_N6
\puluhan_out[4]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \puluhan_out[4]$latch~combout\ = (!\comb~68_combout\ & ((\comb~69_combout\) # (\puluhan_out[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~69_combout\,
	datac => \comb~68_combout\,
	datad => \puluhan_out[4]$latch~combout\,
	combout => \puluhan_out[4]$latch~combout\);

-- Location: LCCOMB_X63_Y49_N6
\comb~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~48_combout\ = (!puluhan(3) & ((puluhan(1) & ((puluhan(0)) # (!puluhan(2)))) # (!puluhan(1) & (puluhan(0) & !puluhan(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => puluhan(1),
	datab => puluhan(3),
	datac => puluhan(0),
	datad => puluhan(2),
	combout => \comb~48_combout\);

-- Location: LCCOMB_X63_Y49_N8
\comb~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~47_combout\ = (puluhan(0) & (!puluhan(1) & (puluhan(3) $ (puluhan(2))))) # (!puluhan(0) & ((puluhan(2) & ((!puluhan(3)))) # (!puluhan(2) & (!puluhan(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => puluhan(1),
	datab => puluhan(3),
	datac => puluhan(0),
	datad => puluhan(2),
	combout => \comb~47_combout\);

-- Location: LCCOMB_X63_Y49_N10
\puluhan_out[5]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \puluhan_out[5]$latch~combout\ = (!\comb~47_combout\ & ((\comb~48_combout\) # (\puluhan_out[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~48_combout\,
	datac => \comb~47_combout\,
	datad => \puluhan_out[5]$latch~combout\,
	combout => \puluhan_out[5]$latch~combout\);

-- Location: LCCOMB_X63_Y49_N28
\comb~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~49_combout\ = (puluhan(1) & (!puluhan(3) & ((!puluhan(2)) # (!puluhan(0))))) # (!puluhan(1) & (puluhan(3) $ (((puluhan(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => puluhan(1),
	datab => puluhan(3),
	datac => puluhan(0),
	datad => puluhan(2),
	combout => \comb~49_combout\);

-- Location: LCCOMB_X63_Y49_N26
\comb~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~50_combout\ = (!puluhan(3) & ((puluhan(1) & (puluhan(0) & puluhan(2))) # (!puluhan(1) & ((!puluhan(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => puluhan(1),
	datab => puluhan(3),
	datac => puluhan(0),
	datad => puluhan(2),
	combout => \comb~50_combout\);

-- Location: LCCOMB_X64_Y49_N0
\puluhan_out[6]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \puluhan_out[6]$latch~combout\ = (!\comb~49_combout\ & ((\comb~50_combout\) # (\puluhan_out[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~49_combout\,
	datac => \comb~50_combout\,
	datad => \puluhan_out[6]$latch~combout\,
	combout => \puluhan_out[6]$latch~combout\);

-- Location: LCCOMB_X25_Y6_N0
\ratusan[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ratusan[2]~4_combout\ = (!\Equal21~2_combout\) # (!\Equal11~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal11~2_combout\,
	datad => \Equal21~2_combout\,
	combout => \ratusan[2]~4_combout\);

-- Location: LCCOMB_X25_Y6_N30
\ratusan[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ratusan[2]~5_combout\ = (arah(0) & (\ratusan[2]~3_combout\ & ((!arah(1))))) # (!arah(0) & (((!\ratusan[2]~4_combout\ & arah(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ratusan[2]~3_combout\,
	datab => \ratusan[2]~4_combout\,
	datac => arah(0),
	datad => arah(1),
	combout => \ratusan[2]~5_combout\);

-- Location: LCCOMB_X24_Y6_N16
\ratusan[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ratusan[2]~6_combout\ = (ratusan(2) & (!ratusan(3))) # (!ratusan(2) & ((ratusan(1) & (!ratusan(3))) # (!ratusan(1) & ((ratusan(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ratusan(3),
	datab => ratusan(0),
	datac => ratusan(2),
	datad => ratusan(1),
	combout => \ratusan[2]~6_combout\);

-- Location: LCCOMB_X25_Y6_N20
\ratusan[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ratusan[2]~7_combout\ = (\ratusan[2]~6_combout\ & (((!\Equal0~0_combout\)))) # (!\ratusan[2]~6_combout\ & (\Equal21~2_combout\ & (\Equal11~2_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ratusan[2]~6_combout\,
	datab => \Equal21~2_combout\,
	datac => \Equal11~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \ratusan[2]~7_combout\);

-- Location: LCCOMB_X25_Y6_N2
\ratusan[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ratusan[2]~8_combout\ = (\ratusan[2]~7_combout\ & ((ratusan(3) & (\ratusan[2]~3_combout\ & !\Equal0~0_combout\)) # (!ratusan(3) & ((\Equal0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ratusan[2]~3_combout\,
	datab => ratusan(3),
	datac => \Equal0~0_combout\,
	datad => \ratusan[2]~7_combout\,
	combout => \ratusan[2]~8_combout\);

-- Location: LCCOMB_X23_Y6_N6
\ratusan[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ratusan[0]~9_combout\ = (\ratusan[2]~5_combout\ & ((\ratusan[2]~8_combout\ & (\Equal0~0_combout\)) # (!\ratusan[2]~8_combout\ & ((!ratusan(0)))))) # (!\ratusan[2]~5_combout\ & (((ratusan(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ratusan[2]~5_combout\,
	datab => \Equal0~0_combout\,
	datac => ratusan(0),
	datad => \ratusan[2]~8_combout\,
	combout => \ratusan[0]~9_combout\);

-- Location: FF_X23_Y6_N7
\ratusan[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_A~input_o\,
	d => \ratusan[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ratusan(0));

-- Location: LCCOMB_X24_Y6_N0
\ratusan[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ratusan[1]~11_cout\ = CARRY(ratusan(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ratusan(0),
	datad => VCC,
	cout => \ratusan[1]~11_cout\);

-- Location: LCCOMB_X24_Y6_N2
\ratusan[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ratusan[1]~12_combout\ = (\Equal0~0_combout\ & ((ratusan(1) & (\ratusan[1]~11_cout\ & VCC)) # (!ratusan(1) & (!\ratusan[1]~11_cout\)))) # (!\Equal0~0_combout\ & ((ratusan(1) & (!\ratusan[1]~11_cout\)) # (!ratusan(1) & ((\ratusan[1]~11_cout\) # (GND)))))
-- \ratusan[1]~13\ = CARRY((\Equal0~0_combout\ & (!ratusan(1) & !\ratusan[1]~11_cout\)) # (!\Equal0~0_combout\ & ((!\ratusan[1]~11_cout\) # (!ratusan(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => ratusan(1),
	datad => VCC,
	cin => \ratusan[1]~11_cout\,
	combout => \ratusan[1]~12_combout\,
	cout => \ratusan[1]~13\);

-- Location: FF_X24_Y6_N3
\ratusan[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_A~input_o\,
	d => \ratusan[1]~12_combout\,
	asdata => \~GND~combout\,
	sload => \ratusan[2]~8_combout\,
	ena => \ratusan[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ratusan(1));

-- Location: LCCOMB_X24_Y6_N4
\ratusan[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ratusan[2]~14_combout\ = ((\Equal0~0_combout\ $ (ratusan(2) $ (!\ratusan[1]~13\)))) # (GND)
-- \ratusan[2]~15\ = CARRY((\Equal0~0_combout\ & ((ratusan(2)) # (!\ratusan[1]~13\))) # (!\Equal0~0_combout\ & (ratusan(2) & !\ratusan[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => ratusan(2),
	datad => VCC,
	cin => \ratusan[1]~13\,
	combout => \ratusan[2]~14_combout\,
	cout => \ratusan[2]~15\);

-- Location: FF_X24_Y6_N5
\ratusan[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_A~input_o\,
	d => \ratusan[2]~14_combout\,
	asdata => \~GND~combout\,
	sload => \ratusan[2]~8_combout\,
	ena => \ratusan[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ratusan(2));

-- Location: LCCOMB_X24_Y6_N6
\ratusan[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ratusan[3]~16_combout\ = \Equal0~0_combout\ $ (\ratusan[2]~15\ $ (ratusan(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datad => ratusan(3),
	cin => \ratusan[2]~15\,
	combout => \ratusan[3]~16_combout\);

-- Location: FF_X24_Y6_N7
\ratusan[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_A~input_o\,
	d => \ratusan[3]~16_combout\,
	asdata => \Equal0~0_combout\,
	sload => \ratusan[2]~8_combout\,
	ena => \ratusan[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ratusan(3));

-- Location: LCCOMB_X24_Y6_N28
\comb~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~51_combout\ = (ratusan(3) & (((!ratusan(2) & !ratusan(1))))) # (!ratusan(3) & ((ratusan(0) & ((ratusan(2)) # (ratusan(1)))) # (!ratusan(0) & (!ratusan(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ratusan(3),
	datab => ratusan(0),
	datac => ratusan(2),
	datad => ratusan(1),
	combout => \comb~51_combout\);

-- Location: LCCOMB_X24_Y6_N26
\comb~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~52_combout\ = (!ratusan(3) & ((ratusan(0) & (!ratusan(2) & !ratusan(1))) # (!ratusan(0) & (ratusan(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ratusan(3),
	datab => ratusan(0),
	datac => ratusan(2),
	datad => ratusan(1),
	combout => \comb~52_combout\);

-- Location: LCCOMB_X32_Y6_N20
\ratusan_out[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ratusan_out[0]$latch~combout\ = (!\comb~51_combout\ & ((\comb~52_combout\) # (\ratusan_out[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~51_combout\,
	datab => \comb~52_combout\,
	datad => \ratusan_out[0]$latch~combout\,
	combout => \ratusan_out[0]$latch~combout\);

-- Location: LCCOMB_X24_Y6_N24
\comb~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~53_combout\ = (ratusan(3) & (((!ratusan(2) & !ratusan(1))))) # (!ratusan(3) & ((ratusan(0) $ (!ratusan(1))) # (!ratusan(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ratusan(3),
	datab => ratusan(0),
	datac => ratusan(2),
	datad => ratusan(1),
	combout => \comb~53_combout\);

-- Location: LCCOMB_X24_Y6_N18
\comb~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~54_combout\ = (!ratusan(3) & (ratusan(2) & (ratusan(0) $ (ratusan(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ratusan(3),
	datab => ratusan(0),
	datac => ratusan(2),
	datad => ratusan(1),
	combout => \comb~54_combout\);

-- Location: LCCOMB_X32_Y6_N2
\ratusan_out[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ratusan_out[1]$latch~combout\ = (!\comb~53_combout\ & ((\comb~54_combout\) # (\ratusan_out[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~53_combout\,
	datac => \comb~54_combout\,
	datad => \ratusan_out[1]$latch~combout\,
	combout => \ratusan_out[1]$latch~combout\);

-- Location: LCCOMB_X24_Y6_N20
\comb~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~55_combout\ = (ratusan(2) & (!ratusan(3))) # (!ratusan(2) & (((!ratusan(3) & ratusan(0))) # (!ratusan(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ratusan(3),
	datab => ratusan(0),
	datac => ratusan(2),
	datad => ratusan(1),
	combout => \comb~55_combout\);

-- Location: LCCOMB_X24_Y6_N22
\Equal31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal31~0_combout\ = (!ratusan(3) & (!ratusan(0) & (!ratusan(2) & ratusan(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ratusan(3),
	datab => ratusan(0),
	datac => ratusan(2),
	datad => ratusan(1),
	combout => \Equal31~0_combout\);

-- Location: LCCOMB_X24_Y6_N10
\ratusan_out[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ratusan_out[2]$latch~combout\ = (!\comb~55_combout\ & ((\Equal31~0_combout\) # (\ratusan_out[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~55_combout\,
	datac => \Equal31~0_combout\,
	datad => \ratusan_out[2]$latch~combout\,
	combout => \ratusan_out[2]$latch~combout\);

-- Location: LCCOMB_X23_Y6_N28
\comb~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~62_combout\ = (ratusan(2) & (!ratusan(3) & (ratusan(1) $ (ratusan(0))))) # (!ratusan(2) & ((ratusan(1) & (!ratusan(3))) # (!ratusan(1) & ((!ratusan(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ratusan(1),
	datab => ratusan(2),
	datac => ratusan(3),
	datad => ratusan(0),
	combout => \comb~62_combout\);

-- Location: LCCOMB_X23_Y6_N14
\comb~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~63_combout\ = (ratusan(2) & (!ratusan(3) & (ratusan(1) $ (!ratusan(0))))) # (!ratusan(2) & (!ratusan(1) & ((ratusan(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ratusan(1),
	datab => ratusan(2),
	datac => ratusan(3),
	datad => ratusan(0),
	combout => \comb~63_combout\);

-- Location: LCCOMB_X23_Y6_N20
\ratusan_out[3]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ratusan_out[3]$latch~combout\ = (!\comb~62_combout\ & ((\comb~63_combout\) # (\ratusan_out[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~62_combout\,
	datac => \comb~63_combout\,
	datad => \ratusan_out[3]$latch~combout\,
	combout => \ratusan_out[3]$latch~combout\);

-- Location: LCCOMB_X23_Y6_N26
\comb~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~71_combout\ = (ratusan(1) & (((!ratusan(3) & ratusan(0))))) # (!ratusan(1) & ((ratusan(2) & (!ratusan(3))) # (!ratusan(2) & ((ratusan(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ratusan(1),
	datab => ratusan(2),
	datac => ratusan(3),
	datad => ratusan(0),
	combout => \comb~71_combout\);

-- Location: LCCOMB_X23_Y6_N8
\comb~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~70_combout\ = (!ratusan(0) & ((ratusan(1) & ((!ratusan(3)))) # (!ratusan(1) & (!ratusan(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ratusan(1),
	datab => ratusan(2),
	datac => ratusan(3),
	datad => ratusan(0),
	combout => \comb~70_combout\);

-- Location: LCCOMB_X23_Y6_N10
\ratusan_out[4]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ratusan_out[4]$latch~combout\ = (!\comb~70_combout\ & ((\comb~71_combout\) # (\ratusan_out[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~71_combout\,
	datac => \comb~70_combout\,
	datad => \ratusan_out[4]$latch~combout\,
	combout => \ratusan_out[4]$latch~combout\);

-- Location: LCCOMB_X23_Y6_N12
\comb~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~56_combout\ = (ratusan(2) & (!ratusan(3) & ((!ratusan(0)) # (!ratusan(1))))) # (!ratusan(2) & (!ratusan(1) & ((ratusan(3)) # (!ratusan(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ratusan(1),
	datab => ratusan(2),
	datac => ratusan(3),
	datad => ratusan(0),
	combout => \comb~56_combout\);

-- Location: LCCOMB_X23_Y6_N22
\comb~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~57_combout\ = (!ratusan(3) & ((ratusan(1) & ((ratusan(0)) # (!ratusan(2)))) # (!ratusan(1) & (!ratusan(2) & ratusan(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ratusan(1),
	datab => ratusan(2),
	datac => ratusan(3),
	datad => ratusan(0),
	combout => \comb~57_combout\);

-- Location: LCCOMB_X23_Y6_N24
\ratusan_out[5]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ratusan_out[5]$latch~combout\ = (!\comb~56_combout\ & ((\comb~57_combout\) # (\ratusan_out[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~56_combout\,
	datac => \comb~57_combout\,
	datad => \ratusan_out[5]$latch~combout\,
	combout => \ratusan_out[5]$latch~combout\);

-- Location: LCCOMB_X24_Y6_N12
\comb~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~58_combout\ = (ratusan(2) & (!ratusan(3) & ((!ratusan(1)) # (!ratusan(0))))) # (!ratusan(2) & (ratusan(3) $ (((ratusan(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ratusan(3),
	datab => ratusan(0),
	datac => ratusan(2),
	datad => ratusan(1),
	combout => \comb~58_combout\);

-- Location: LCCOMB_X24_Y6_N14
\comb~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~59_combout\ = (!ratusan(3) & ((ratusan(2) & (ratusan(0) & ratusan(1))) # (!ratusan(2) & ((!ratusan(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ratusan(3),
	datab => ratusan(0),
	datac => ratusan(2),
	datad => ratusan(1),
	combout => \comb~59_combout\);

-- Location: LCCOMB_X24_Y9_N20
\ratusan_out[6]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ratusan_out[6]$latch~combout\ = (!\comb~58_combout\ & ((\comb~59_combout\) # (\ratusan_out[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~58_combout\,
	datac => \comb~59_combout\,
	datad => \ratusan_out[6]$latch~combout\,
	combout => \ratusan_out[6]$latch~combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_satuan_out(0) <= \satuan_out[0]~output_o\;

ww_satuan_out(1) <= \satuan_out[1]~output_o\;

ww_satuan_out(2) <= \satuan_out[2]~output_o\;

ww_satuan_out(3) <= \satuan_out[3]~output_o\;

ww_satuan_out(4) <= \satuan_out[4]~output_o\;

ww_satuan_out(5) <= \satuan_out[5]~output_o\;

ww_satuan_out(6) <= \satuan_out[6]~output_o\;

ww_puluhan_out(0) <= \puluhan_out[0]~output_o\;

ww_puluhan_out(1) <= \puluhan_out[1]~output_o\;

ww_puluhan_out(2) <= \puluhan_out[2]~output_o\;

ww_puluhan_out(3) <= \puluhan_out[3]~output_o\;

ww_puluhan_out(4) <= \puluhan_out[4]~output_o\;

ww_puluhan_out(5) <= \puluhan_out[5]~output_o\;

ww_puluhan_out(6) <= \puluhan_out[6]~output_o\;

ww_ratusan_out(0) <= \ratusan_out[0]~output_o\;

ww_ratusan_out(1) <= \ratusan_out[1]~output_o\;

ww_ratusan_out(2) <= \ratusan_out[2]~output_o\;

ww_ratusan_out(3) <= \ratusan_out[3]~output_o\;

ww_ratusan_out(4) <= \ratusan_out[4]~output_o\;

ww_ratusan_out(5) <= \ratusan_out[5]~output_o\;

ww_ratusan_out(6) <= \ratusan_out[6]~output_o\;
END structure;


