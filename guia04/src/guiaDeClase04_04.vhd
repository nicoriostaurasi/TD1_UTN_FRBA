----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:42:12 10/28/2018 
-- Design Name: 
-- Module Name:    myUartRxTest - arch_myUartRxTest 
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
--library work;
--use work.myUartRx;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity myUartRxTest is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (8-1 downto 0);
           rx : in  STD_LOGIC);
end myUartRxTest;

architecture arch_myUartRxTest of myUartRxTest is
signal dataRd: std_logic;
signal dataRx: std_logic_vector(8-1 downto 0);
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

	my_rx: entity work.myUartRx
		 generic map(baudRate=>1250000,
					sysClk=>50000000,
					dataSize=>8)
		 Port map(clk=>clk,
				  rst=>rst,
				  dataRd=>dataRd,
				  dataRx=>dataRx,
				  rx=>rx);


end arch_myUartRxTest;

