----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/10/2021 11:47:14 PM
-- Design Name: 
-- Module Name: semaforo - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity semaforo is
  generic (
    T1 		: integer;		-- numero de pulsos asociados al estado 1
    T2 		: integer;		-- numero de pulsos asociados al estado 2
    T3 		: integer;		-- numero de pulsos asociados al estado 3
    T4 		: integer;		-- numero de pulsos asociados al estado 4
    divisor	: integer		-- este numero indica la cantidad de ciclos de clock para generar un pulso 
    );
-- en esta seccion definimos las entradas y salidas de nuestro sistema    
    Port ( 
    clk 		: in std_logic;		-- clock
    u			: in std_logic;		-- señal de emeregencia, calle Urriola
    p			: in std_logic;		-- señal de emeregencia, calle Prat
    v_u 		: out std_logic;	-- luz verde, Urriola
    a_u 		: out std_logic;	-- luz amarilla, Urriola
    r_u 		: out std_logic;	-- luz roja, Urriola
    v_p 		: out std_logic;	-- luz verde, Prat
    a_p 		: out std_logic;	-- luz amarilla, Prat
    r_p 		: out std_logic     -- luz roja, Prat
    );
end semaforo;

architecture Behavioral of semaforo is
type state is (S1, S2, S3, S4);  		-- enumeracion de los posibles estados
-- señales que seran parte de nuestro diseño
signal currentState		: state:= S1;	
signal nextState		: state:= S1;
signal luces			: std_logic_vector(5 downto 0):=(others=>'0');
signal time_pulse		: std_logic:='0';
signal stateTransition : std_logic :='0';

begin

  v_u 		<=luces(0);
  a_u 		<=luces(1);
  r_u 		<=luces(2);
  v_p 		<=luces(3);
  a_p 		<=luces(4);
  r_p 		<=luces(5);

TIME_EVENT_1S :  process (clk) 
	variable counter	: integer:=0; 
	begin 
		if rising_edge(clk) then 
		    	if counter=divisor then 
		       		counter		:=0; 
		        	time_pulse	<= '1'; 
		        else 
		        	counter:=counter+1; 
		        	time_pulse	<= '0'; 
		        end if;
		end if;
	end process;

	
SYNC_PROC: process (clk, time_pulse, currentState, nextState, stateTransition)
	begin
	   if rising_edge(clk) and stateTransition = '1' then
	       currentState <= nextState;
	   end if;
	end process;


NEXT_STATE_DECODE : process (clk, time_pulse, u, p, currentState, nextState,  stateTransition)
	variable timer : integer:=0;
	begin
	    if rising_edge(clk) then
            if time_pulse = '1' then
                if stateTransition = '0' then
                    timer := timer + 1;
                else
                    timer := 0;
                    stateTransition <= '0';
                end if;
            end if;
    	    
    	    if stateTransition = '0' then
                case currentState is 
                    when S1      =>
                        if u = '1' then
                            nextState <= S3;
                            stateTransition <= '1';
                        else
                            if timer < T1 then
                                nextState <= currentState;
                                stateTransition <= '0';
                            else
                                nextState <= S2;
                                stateTransition <= '1';
                            end if;
                        end if; 
                    when S2      =>  
                        if timer < T2 then
                            nextState <= currentState;
                            stateTransition <= '0';
                        else
                            nextState <= S3;
                            stateTransition <= '1';
                        end if;
                    when S3      => 
                        if p = '1' then
                            nextState <= S1;
                            stateTransition <= '1';
                        else
                            if timer < T3 then
                                nextState <= currentState;
                                stateTransition <= '0';
                            else
                                nextState <= S4;
                                stateTransition <= '1';
                            end if;
                        end if;
                    when S4      =>  
                        if timer < T4 then
                            nextState <= currentState;
                            stateTransition <= '0';
                        else
                            nextState <= S1;
                            stateTransition <= '1';
                        end if;
                    when others  => 
                        nextState <= S1;
                        stateTransition <= '1';
                end case;
            end if;
		end if;
	end process;

OUTPUT_DECODE : process (currentState)
    begin
        case currentState is 
            when S1      =>
                luces <= "001100";
            when S2      =>  
                luces <= "010100";
            when S3      => 
                luces <= "100001";
            when S4      =>  
                luces <= "100010";
            when others  =>
                luces <= "111111"; 
        end case;
    end process;
end Behavioral;
