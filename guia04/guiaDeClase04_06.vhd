----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:08:51 10/31/2018 
-- Design Name: 
-- Module Name:    myUartTest - arch_myUartTest 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
library work;
use work.myUart;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity myUartTest is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           sw : in  STD_LOGIC_VECTOR (4-1 downto 0);
           tx : out  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (8-1 downto 0);
           rx : in  STD_LOGIC);
end myUartTest;

architecture arch_myUartTest of myUartTest is
signal dataWr: std_logic;
signal dataTx: std_logic_vector(8-1 downto 0);
signal dataRd: std_logic;
signal dataRx: std_logic_vector(8-1 downto 0);
type TState is (Reset,StandBy,Envio);
signal q_now,q_next: TState;
signal EstadoActual: std_logic_vector(4-1 downto 0);
signal data_reg_now,data_reg_next: std_logic_vector(8-1 downto 0);

begin
	process(clk)
	begin
	if rising_edge(clk) then
		if rst='1' then
		led<=x"00";
		else
			if dataRd='1' then
			led<=dataRx;
			end if;
		end if;
	end if;
	end process;
	
process(clk)
	begin
	if rising_edge(clk) then
		if rst='0' then
		q_now<=q_next;
		data_reg_now<=data_reg_next;
		else
		q_now<=reset;
		data_reg_now<=(others=>'0');
		end if;
	end if;
	end process;
	
	process(q_now,sw,data_reg_now)
	begin
	case q_now is
	when reset=>
		dataWr<='1';
		data_reg_next<=x"00";
		q_next<=StandBy;
		
	when StandBy=>
		dataWr<='0';	
		if sw/=data_reg_now(7 downto 4) then
			data_reg_next<=sw&"0101";
			q_next<=envio;
		else
			data_reg_next<=data_reg_now;
			q_next<=q_now;
		end if;
		
	when envio=>
		dataWr<='1';
		data_reg_next<=data_reg_now;
		q_next<=StandBy;
	end case;
	end process;
	
	myU:entity work.myUart
	 generic map(baudRate=>1250000,
				sysClk=>50000000,
				dataSize=>8)
    Port map(clk=>clk,
           rst=>rst,
           dataWr=>dataWr,
           dataTx=>data_reg_now,
           ready=>open,
			  tx=>tx,
			  dataRd=>dataRd,
			  dataRx=>dataRx,
			  rx=>rx);
	

end arch_myUartTest;

