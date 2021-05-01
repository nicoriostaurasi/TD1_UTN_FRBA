----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:57:27 10/19/2018 
-- Design Name: 
-- Module Name:    parpadeo1S - arch_parpadeo1S 
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
use work.FFT;
use work.myCnt;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity parpadeo1S is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           led : out  STD_LOGIC);
end parpadeo1S;

architecture arch_parpadeo1S of parpadeo1S is
signal aux1,aux2:std_logic;
begin
my_cnt: entity work.myCnt
generic map(M=>200)--(2*tactivo/Tclk)
port map(clk=>clk,
			rst=>not(rst),
			ena=>'1',
			salidaM_2=>aux1,
			salidaM=>aux2);

my_FFT: entity work.FFT
port map(clk=>clk,
			rst=>rst,
			t=>aux1,
			q=>led);
end arch_parpadeo1S;

