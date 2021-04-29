----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:59:14 10/31/2018 
-- Design Name: 
-- Module Name:    myUart - arch_myUart 
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
use work.myUartRx;
use work.myUartTx;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity myUart is
    generic(baudRate:integer:=9600;
				sysClk  :integer:=50000000;
				dataSize:integer:=8);
	 Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           dataWr : in  STD_LOGIC;
           dataTx : in  STD_LOGIC_VECTOR (dataSize-1 downto 0);
           ready : out  STD_LOGIC;
           tx : out  STD_LOGIC;
           dataRd : out  STD_LOGIC;
           dataRx : out  STD_LOGIC_VECTOR (dataSize-1 downto 0);
           rx : in  STD_LOGIC);
end myUart;

architecture arch_myUart of myUart is
begin
	 my_tx: entity work.myUartTx
	 generic map(baudRate=>baudRate,
				sysClk=>sysClk,
				dataSize=>dataSize)
    Port map(clk=>clk,
           rst=>rst,
           dataWr=>dataWr,
           dataTx=>dataTx,
           ready=>ready,
           tx=>tx);
			  
	 my_rx: entity work.myUartRx
	 generic map(baudRate=>baudRate,
				sysClk=>sysClk,
				dataSize=>dataSize)
    Port map(clk=>clk,
           rst=>rst,
           dataRd=>dataRd,
           dataRx=>dataRx,
           rx=>rx);
end arch_myUart;

