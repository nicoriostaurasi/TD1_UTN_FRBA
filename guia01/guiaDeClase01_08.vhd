----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:05:56 10/01/2018 
-- Design Name: 
-- Module Name:    guiaDeClase01_08 - myArchEj08 
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
use work.guiaDeClase01_06;
use work.guiaDeClase01_07;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity guiaDeClase01_08 is
	 generic(N:integer:=8);
    Port ( binario : in  STD_LOGIC_VECTOR (N-1 downto 0);
           sel : in  STD_LOGIC;
           gray: out  STD_LOGIC_VECTOR (N-1 downto 0));
end guiaDeClase01_08;

architecture myArchEj08 of guiaDeClase01_08 is
signal aux1,aux2: std_logic_vector(N-1 downto 0);
--signal aux2: std_logic_vector(N-1 downto 0);
begin

my_convGtB: entity work.guiaDeClase01_06
generic map(N=>N)
port map(gray=>binario,
			binario=>aux1);
			
my_convBtG: entity work.guiaDeClase01_07
generic map(N=>N)
port map(binario=>binario,
			gray=>aux2);
			
with sel select
	gray<=aux1 when '0',
			aux2 when '1';

end myArchEj08;

