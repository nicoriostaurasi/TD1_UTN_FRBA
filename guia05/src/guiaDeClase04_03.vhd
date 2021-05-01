----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:   
-- Design Name: 
-- Module Name:    myUartTx - arch_myUartTx 
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
use IEEE.math_real.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity myUartTx is
	 generic(baudRate	:integer:=9600;
				sysClk	:integer:=100000000;
				dataSize	:integer:=8);
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           dataWr : in  STD_LOGIC;
           dataTx : in  STD_LOGIC_VECTOR (dataSize-1 downto 0);
           ready 	: out  STD_LOGIC;
           tx : out  STD_LOGIC);
end myUartTx;

architecture arch_myUartTx of myUartTx is
signal data_reg_now,data_reg_next: std_logic_vector(dataSize-1 downto 0);
constant N: integer := integer(ceil(log2(real(sysClk/baudRate))));
type TState is (reset,StandBy,BStart,Trans,Bstop);
constant M: integer := integer(ceil(log2(real(dataSize))));
signal TranState_next,TranState_now:unsigned(M-1 downto 0);
signal count_now,count_next:unsigned(N-1 downto 0);
signal q_now,q_next: TState;

begin

	process(clk)
	begin
		if rising_edge(clk) then
			if rst='1' then
			q_now<=reset;
			data_reg_now<=(others=>'0');
			count_now<=to_unsigned(0,N);
			tranState_now<=to_unsigned(0,M);
			else
			q_now<=q_next;
			data_reg_now<=data_reg_next;
			count_now<=count_next;
			tranState_now<=tranState_next;

			end if;
		end if;
	end process;
	
	process(q_now,dataWr,dataTx,data_reg_now,count_now,TranState_now)
	begin
		ready<='1';
		tx<='0';
		case q_now is
		when reset=>
			tx<='1';
			data_reg_next<=data_reg_now;
			count_next<=to_unsigned(0,N);
			TranState_next<=to_unsigned(0,M);
			q_next<=StandBy;
			
		
		when StandBy=>
			tx<='1';		
			count_next<=to_unsigned(0,N);
			TranState_next<=to_unsigned(0,M);
			data_reg_next<=(others=>'0');
			if dataWr='1' then
			data_reg_next<=dataTx;
			q_next<=BStart;
			else
			q_next<=StandBy;
			end if;
			
		when BStart=>
			ready<='0';
			count_next<=count_now+1;
			TranState_next<=to_unsigned(0,M);
			q_next<=q_now;
			data_reg_next<=data_reg_now;
				if count_now=(sysClk/baudRate) then
				count_next<=to_unsigned(0,N);
				q_next<=Trans;
				end if;

		
		when Trans=>
			ready<='0';
			count_next<=count_now+1;
			tx<=data_reg_now(dataSize-1);
			q_next<=q_now;
			TranState_next<=TranState_now;
			data_reg_next<=data_reg_now;
			if count_now=(sysClk/baudRate) then
				count_next<=to_unsigned(0,N);
				TranState_next<=TranState_now+1;
					data_reg_next<=data_reg_now(dataSize-2 downto 0)&'0';
					if TranState_now=dataSize-1 then
					count_next<=to_unsigned(0,N);
					TranState_next<=to_unsigned(0,M);
					q_next<=BStop;
					end if;
				end if;
		
		when Bstop=>
			ready<='0';
			count_next<=count_now+1;
			tx<='1';
			TranState_next<=to_unsigned(0,M);
			q_next<=q_now;
			data_reg_next<=data_reg_now;
				if count_now=(sysClk/baudRate) then
				count_next<=to_unsigned(0,N);
				q_next<=StandBy;
				data_reg_next<=(others=>'0');
				ready<='1';
				end if;
		end case;
	end process;
end arch_myUartTx;