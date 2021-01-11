----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/11/2021 12:36:23 AM
-- Design Name: 
-- Module Name: top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    Port ( myclk : in STD_LOGIC;
           tu : in STD_LOGIC;
           tp : in STD_LOGIC;
           tv_u : out STD_LOGIC;
           ta_u : out STD_LOGIC;
           tr_u : out STD_LOGIC;
           tv_p : out STD_LOGIC;
           ta_p : out STD_LOGIC;
           tr_p : out STD_LOGIC);
end top;

architecture Behavioral of top is

signal Clock, inClock, UU, PP, VU, AU, RU, VP, AP, RP : STD_LOGIC;

component semaforo is
    generic ( T1, T2, T3, T4, divisor : integer); 
    port ( clk, u, p: in STD_LOGIC;
           v_u, a_u, r_u, v_p, a_p, r_p : out STD_LOGIC);
end component; 

component clock_divider is
    port (         clk : in STD_LOGIC;
           divided_clk : out STD_LOGIC);
end component; 

begin

UU <= tu;
PP<= tp;
inClock <= myclk;

clock_divider1: clock_divider
  port map    (
  clk   		=> inClock,
  divided_clk 	=> Clock
  );

semaforoA: semaforo
  generic map (
  	T1   	=> 8,
  	T2   	=> 2,
    T3   	=> 6,
    T4   	=> 2,
    divisor	=> 100
    )
  port map    (
  clk   		=> Clock,
  u				=> UU,
  p				=> PP,
  v_u 			=> VU,
  a_u 			=> AU,
  r_u 			=> RU,
  v_p 			=> VP,
  a_p 			=> AP,
  r_p 			=> RP
  );
  
  tv_u <= VU;
  ta_u <= AU;
  tr_u <= RU;
  tv_p <= VP;
  ta_p <= AP;
  tr_p <= RP;


end Behavioral;
