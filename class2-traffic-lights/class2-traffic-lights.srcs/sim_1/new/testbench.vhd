----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/10/2021 11:50:24 PM
-- Design Name: 
-- Module Name: testbench - Behavioral
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

entity testbench is
--  Port ( );
end testbench;

architecture BENCH of testbench is
signal Clock 	: std_logic:='0';
signal v_u 		: std_logic;
signal a_u 		: std_logic;
signal r_u 		: std_logic;
signal v_p 		: std_logic;
signal a_p 		: std_logic;
signal r_p 		: std_logic;    



component semaforo
generic (
  	T1 		: integer;
    T2 		: integer;
    T3 		: integer;
    T4 		: integer;
    divisor	: integer
    );
port ( 
  	clk 		: in std_logic;
    u			: in std_logic;
    p			: in std_logic;
    v_u 		: out std_logic;
    a_u 		: out std_logic;
    r_u 		: out std_logic;
    v_p 		: out std_logic;
    a_p 		: out std_logic;
    r_p 		: out std_logic    
);
end component;

begin
  
  ClockGen: process
  begin
	 for i in 0 to 15 loop
	    Clock <= '0'; 
		wait for 2 ns;
		Clock <= '1';
		wait for 2 ns;		
	 end loop;
     wait;
  end process ClockGen;

semaforoA: semaforo
  generic map (
  	T1   	=> 8,
  	T2   	=> 2,
    T3   	=> 6,
    T4   	=> 2,
    divisor	=> 0
    )
  port map    (
  clk   		=> Clock,
  u				=> '0',
  p				=> '0',
  v_u 			=> v_u,
  a_u 			=> a_u,
  r_u 			=> r_u,
  v_p 			=> v_p,
  a_p 			=> a_p,
  r_p 			=> r_p
               );

end architecture BENCH;
