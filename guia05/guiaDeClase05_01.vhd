----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:34:25 11/15/2018 
-- Design Name: 
-- Module Name:    mySerialALU - arch_mySerialALU 
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
use work.myUartTx;
use work.myUartRx;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mySerialALU is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           tx : out  STD_LOGIC;
           rx : in  STD_LOGIC);
end mySerialALU;

architecture arch_mySerialALU of mySerialALU is
type TState is (reset,StandBy,comand,esp_data0,data0,esp_data1,
inc_dec,data1,answer,wait_a_cmnd,overflow_suma,overflow_resta,a_cmnd,wait_a_data0,a_data0,wait_a_data1,a_data1);
signal q_now,q_next:TState;
signal data_com_now,data_com_next:std_logic_vector(8-1 downto 0);
signal data_00_now,data_00_next:std_logic_vector(8-1 downto 0);
signal data_01_now,data_01_next:std_logic_vector(8-1 downto 0);
signal ans_00_now,ans_00_next:std_logic_vector(8-1 downto 0);
signal ans_01_now,ans_01_next:std_logic_vector(8-1 downto 0);
signal dataRd,dataWr,ready: std_logic;
signal dataRx,dataTx: std_logic_vector(8-1 downto 0);
signal data_reg_next,data_reg_now,aux_next,aux_now: std_logic_vector(16-1 downto 0);
begin
	my_tx: entity work.myUartTx
		 generic map(baudRate=>1250000,
					sysClk=>50000000,
					dataSize=>8)
		 Port map(clk=>clk,
				  rst=>rst,
				  dataWr=>dataWr,
				  dataTx=>dataTx,
				  ready=>ready,
				  tx=>tx);
				  
		my_rx: entity work.myUartRx
		generic map(baudRate=>1250000,
					sysClk=>50000000,
					dataSize=>8)
		Port map(clk=>clk,
				  rst=>rst,
				  dataRd=>dataRd,
				  dataRx=>dataRx,
				  rx=>rx);
	
	process(clk)
	begin
		if rising_edge(clk) then
			if rst='1' then
			q_now<=standby;
			data_com_now<=(others=>'0');
			data_00_now<=(others=>'0');
			data_01_now<=(others=>'0');
			ans_00_now<=(others=>'0');
			ans_01_now<=(others=>'0');
			data_reg_now<=(others=>'0');
			aux_now<=(others=>'0');
			else
			q_now<=q_next;
			data_com_now<=data_com_next;
			data_00_now<=data_00_next;
			data_01_now<=data_01_next;
			ans_00_now<=ans_00_next;
			ans_01_now<=ans_01_next;
			data_reg_now<=data_reg_next;
			aux_now<=aux_next;
			end if;
		end if;
	end process;
	
	process(dataRd,q_now,data_com_now,data_00_now,data_01_now,dataRx,data_reg_now,ans_00_now,ans_01_now,ready,aux_now)
	begin
		dataTx<=(others=>'0');
		dataWr<='0';
		q_next<=q_now;
		aux_next<=aux_now;
		data_com_next<=data_com_now;
		data_00_next<=data_00_now;
		data_01_next<=data_01_now;
		ans_00_next<=ans_00_now;
		ans_01_next<=ans_01_now;
		data_reg_next<=data_reg_now;
		case q_now is
			when standby=>
				if dataRd='0' then
				q_next<=comand;
				end if;
				
			when comand=>
				if dataRd='1' then
				data_com_next<=dataRx;
				q_next<=esp_data0;
				end if;
				
			when esp_data0=>
				if dataRd='0' then
				q_next<=data0;
				end if;
			
			when data0=>
				if dataRd='1' then
				data_00_next<=dataRx;
				q_next<=esp_data1;
				end if;
			
			when esp_data1=>
				if dataRd='0' then
				q_next<=data1;
				end if;
				
			when data1=>
				if dataRd='1' then
				data_01_next<=dataRx;
				q_next<=answer;
				end if;
				
			when answer=>
				q_next<=wait_a_cmnd;
				case data_com_now is
						when x"00"=>
								ans_00_next<=not(data_00_now);
								ans_01_next<=not(data_01_now);
						when x"01"=>
								q_next<=overflow_suma;
								ans_00_next<=std_logic_vector(signed(data_00_now)+signed(data_01_now));		
						when x"02"=>
								q_next<=overflow_resta;
								ans_00_next<=std_logic_vector(signed(data_00_now)-signed(data_01_now));
						when x"03"=>
								ans_00_next<=data_00_now and data_01_now;
								ans_01_next<=(others=>'0');
						when x"04"=>
								ans_00_next<=data_00_now or data_01_now;
								ans_01_next<=(others=>'0');
						when x"05"=>
								q_next<=inc_dec;
								aux_next<=std_logic_vector(unsigned(data_00_now&data_01_now)+1);
						when x"06"=>
								q_next<=inc_dec;
								aux_next<=std_logic_vector(unsigned(data_00_now&data_01_now)-1);
						when x"07"=>
								ans_00_next<=data_com_now;
								ans_01_next<=data_com_now;
								data_reg_next<=data_00_now&data_01_now;
						when x"08"=>
								ans_00_next<=data_reg_now(15 downto 8);
								ans_01_next<=data_reg_now(7 downto 0);					
						when others=>
								ans_00_next<=data_com_now;
								ans_01_next<=data_com_now;
				 end case;
			 
			when overflow_suma=>
				if (((not ans_00_now(7)) and (data_00_now(7)) and (data_01_now(7)))or( (ans_00_now(7)) and (not data_00_now(7)) and (not data_01_now(7)) ))='1' then 
					ans_01_next<=x"FF";
				else
					ans_01_next<=x"00";
				end if;
				q_next<=wait_a_cmnd;
 			
			when overflow_resta=>
				if (((not ans_00_now(7)) and (data_00_now(7)) and (not data_01_now(7)))or( (ans_00_now(7)) and (not data_00_now(7)) and (data_01_now(7)) ))='1' then 
					ans_01_next<=x"FF";
				else
					ans_01_next<=x"00";
				end if;
				q_next<=wait_a_cmnd;
			
			when inc_dec=>
				q_next<=wait_a_cmnd;
				ans_00_next<=aux_now(15 downto 8);
				ans_01_next<=aux_now(7 downto 0);
		
			when wait_a_cmnd=>
				dataWr<='1';
				dataTx<=data_com_now;
				q_next<=a_cmnd;
				
			when a_cmnd=>
				dataWr<='0';
				dataTx<=data_com_now;
					if ready='1' then
					dataWr<='0';
					q_next<=wait_a_data0;
					end if;
					
			when wait_a_data0=>
				dataWr<='1';
				dataTx<=ans_00_now;
				q_next<=a_data0;
				
				
			when a_data0=>
				dataWr<='0';
				dataTx<=ans_00_now;
					if ready='1' then
					dataWr<='0';
					q_next<=wait_a_data1;
					end if;

			when wait_a_data1=>
				dataWr<='1';
				dataTx<=ans_01_now;
				q_next<=a_data1;
				
			when a_data1=>
				dataWr<='0';
				dataTx<=ans_01_now;
					if ready='1' then
					dataWr<='0';
					q_next<=standby;
					end if;
			 
			when others=>
				 q_next<=standby;
			end case;
	end process;

end arch_mySerialALU;