--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
--Date        : Fri Apr  2 23:19:36 2021
--Host        : yurigagarin running 64-bit Ubuntu 18.04.5 LTS
--Command     : generate_target design_microblaze_wrapper.bd
--Design      : design_microblaze_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_microblaze_wrapper is
  port (
    sys_clk : in STD_LOGIC;
    sys_rst : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
end design_microblaze_wrapper;

architecture STRUCTURE of design_microblaze_wrapper is
  component design_microblaze is
  port (
    sys_clk : in STD_LOGIC;
    sys_rst : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
  end component design_microblaze;
begin
design_microblaze_i: component design_microblaze
     port map (
      sys_clk => sys_clk,
      sys_rst => sys_rst,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd
    );
end STRUCTURE;
