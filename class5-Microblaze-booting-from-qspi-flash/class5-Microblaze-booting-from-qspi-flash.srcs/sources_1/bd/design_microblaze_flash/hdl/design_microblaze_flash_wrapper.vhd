--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
--Date        : Fri Apr  2 23:35:49 2021
--Host        : yurigagarin running 64-bit Ubuntu 18.04.5 LTS
--Command     : generate_target design_microblaze_flash_wrapper.bd
--Design      : design_microblaze_flash_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_microblaze_flash_wrapper is
  port (
    qspi_flash_io0_io : inout STD_LOGIC;
    qspi_flash_io1_io : inout STD_LOGIC;
    qspi_flash_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clk : in STD_LOGIC;
    sys_rst : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
end design_microblaze_flash_wrapper;

architecture STRUCTURE of design_microblaze_flash_wrapper is
  component design_microblaze_flash is
  port (
    sys_clk : in STD_LOGIC;
    sys_rst : in STD_LOGIC;
    qspi_flash_io0_i : in STD_LOGIC;
    qspi_flash_io0_o : out STD_LOGIC;
    qspi_flash_io0_t : out STD_LOGIC;
    qspi_flash_io1_i : in STD_LOGIC;
    qspi_flash_io1_o : out STD_LOGIC;
    qspi_flash_io1_t : out STD_LOGIC;
    qspi_flash_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    qspi_flash_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    qspi_flash_ss_t : out STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
  end component design_microblaze_flash;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal qspi_flash_io0_i : STD_LOGIC;
  signal qspi_flash_io0_o : STD_LOGIC;
  signal qspi_flash_io0_t : STD_LOGIC;
  signal qspi_flash_io1_i : STD_LOGIC;
  signal qspi_flash_io1_o : STD_LOGIC;
  signal qspi_flash_io1_t : STD_LOGIC;
  signal qspi_flash_ss_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal qspi_flash_ss_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal qspi_flash_ss_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal qspi_flash_ss_t : STD_LOGIC;
begin
design_microblaze_flash_i: component design_microblaze_flash
     port map (
      qspi_flash_io0_i => qspi_flash_io0_i,
      qspi_flash_io0_o => qspi_flash_io0_o,
      qspi_flash_io0_t => qspi_flash_io0_t,
      qspi_flash_io1_i => qspi_flash_io1_i,
      qspi_flash_io1_o => qspi_flash_io1_o,
      qspi_flash_io1_t => qspi_flash_io1_t,
      qspi_flash_ss_i(0) => qspi_flash_ss_i_0(0),
      qspi_flash_ss_o(0) => qspi_flash_ss_o_0(0),
      qspi_flash_ss_t => qspi_flash_ss_t,
      sys_clk => sys_clk,
      sys_rst => sys_rst,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd
    );
qspi_flash_io0_iobuf: component IOBUF
     port map (
      I => qspi_flash_io0_o,
      IO => qspi_flash_io0_io,
      O => qspi_flash_io0_i,
      T => qspi_flash_io0_t
    );
qspi_flash_io1_iobuf: component IOBUF
     port map (
      I => qspi_flash_io1_o,
      IO => qspi_flash_io1_io,
      O => qspi_flash_io1_i,
      T => qspi_flash_io1_t
    );
qspi_flash_ss_iobuf_0: component IOBUF
     port map (
      I => qspi_flash_ss_o_0(0),
      IO => qspi_flash_ss_io(0),
      O => qspi_flash_ss_i_0(0),
      T => qspi_flash_ss_t
    );
end STRUCTURE;
