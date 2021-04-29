----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:05:19 10/27/2018 
-- Design Name: 
-- Module Name:    myUartRx - arch_myUartRx 
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

entity myUartRx is
	 generic(baudRate	:integer:=9600;
				sysClk	:integer:=50000000;
				dataSize	:integer:=8);
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           dataRd : out  STD_LOGIC;
           dataRx : out  STD_LOGIC_VECTOR (dataSize-1 downto 0);
           rx : in  STD_LOGIC);
end myUartRx;

architecture arch_myUartRx of myUartRx is
signal data_reg_now,data_reg_next: std_logic_vector(dataSize-1 downto 0);
constant N: integer := integer(ceil(log2(real(sysClk/baudRate))));
signal count_now,count_next:unsigned(N-1 downto 0);
type TState is (Reset,StandBy,BStart,Trans,Bstop);
constant M: integer := integer(ceil(log2(real(dataSize))));
signal TranState:unsigned(M-1 downto 0);
signal q_now,q_next: TState;
begin
	process(clk)
	begin
		if rising_edge(clk) then
			if rst='1' then
			q_now<=reset;
			data_reg_now<=(others=>'0');
			count_now<=to_unsigned(0,N);
			else
			q_now<=q_next;
			data_reg_now<=data_reg_next;
			count_now<=count_next;
			end if;
		end if;
	end process;
	process(rx,data_reg_now,q_now,count_now)
	begin
		count_next<=count_now;
		data_reg_next<=data_reg_now;
		dataRd<='0';
		dataRx<=(others=>'0');
		case q_now is
		when Reset=>
			data_reg_next<=data_reg_now;
			count_next<=to_unsigned(0,N);
			TranState<=to_unsigned(0,M);
			q_next<=StandBy;
			
			
		when StandBy=>
				TranState<=to_unsigned(0,M);
				q_next<=q_now;
				if rx='0' then
				q_next<=BStart;
				else
				q_next<=StandBy;
				end if;
	
		when BStart=>
			count_next<=count_now+1;
			TranState<=to_unsigned(0,M);
				if count_next=((sysClk/baudRate)*3/2)-1 then
				count_next<=to_unsigned(0,N);
				q_next<=Trans;
				data_reg_next(dataSize-1)<=rx;
				else
				q_next<=q_now;
				end if;

		
			when Trans=>
			count_next<=count_now+1;
			TranState<=TranState+0;
			q_next<=q_now;
				if count_next=(sysClk/baudRate)-1 then
				count_next<=to_unsigned(0,N);
				TranState<=TranState+1;
					if TranState=dataSize-1 then
					count_next<=to_unsigned(0,N);
					TranState<=to_unsigned(0,M);
					q_next<=BStop;
					else
					data_reg_next<=rx&data_reg_now(dataSize-1 downto 1);
					end if;
				end if;
			
			
			when Bstop=>
			q_next<=q_now;
			count_next<=count_now+1;
			TranState<=to_unsigned(0,M);
				if count_next=((sysClk/baudRate)/2)-1 then
				count_next<=to_unsigned(0,N);
				q_next<=StandBy;
				dataRd<='1';
				dataRx<=data_reg_now;
				end if;
	
		end case;
	end process;
end arch_myUartRx;