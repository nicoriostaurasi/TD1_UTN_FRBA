----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:39:42 10/19/2018 
-- Design Name: 
-- Module Name:    parpadeo1S_8bits - arch_parpadeo1S_8bits 
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
use work.myRingCnt;
use work.myCnt;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity parpadeo1S_8bits is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (8-1 downto 0));
end parpadeo1S_8bits;

architecture arch_parpadeo1S_8bits of parpadeo1S_8bits is
signal aux1,aux2:std_logic;
begin
my_cnt: entity work.myCnt
generic map(M=>200)--(2*tactivo/Tclk)
port map(clk=>clk,
			rst=> rst,
			ena=>'1',
			salidaM_2=>aux1,
			salidaM=>aux2);
			
my_RngCnt: entity work.myRingCnt
	 generic map(N=>8)
    Port map( clk=>clk,
           rst=>rst,
           ena=>aux1,
           q=>led);

end arch_parpadeo1S_8bits;

