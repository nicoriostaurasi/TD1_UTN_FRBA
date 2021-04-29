----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:54:01 10/01/2018 
-- Design Name: 
-- Module Name:    guiaDeClase01_09 - myArchEj09 
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
use work.guiaDeClase01_05;
use work.guiaDeClase01_08;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity guiaDeClase01_09 is
	 generic(N:integer:=16);
    Port ( entrada : in  STD_LOGIC_VECTOR (N-1 downto 0);
           salida : out  STD_LOGIC_VECTOR (N-1 downto 0));
end guiaDeClase01_09;

architecture myArchEj09 of guiaDeClase01_09 is
signal aux1,aux2,aux3:std_logic_vector(N-1 downto 0); 
signal gnd:std_logic;
begin
aux2(N-1 downto 1)<=(others=>'0');
aux2(0)<='1';
my_conv1: entity work.guiaDeClase01_08
		generic map(N=>16)
		port map(binario=>entrada,
					sel=>'0',
					gray=>aux1);
my_addr: entity work.guiaDeClase01_05
		generic map(N=>16)
		port map(a=>aux1,
					b=>aux2,
					ci=>'0',
					co=>gnd,
					s=>aux3);
my_conv2:entity work.guiaDeClase01_08
			generic map(N=>16)
			port map(binario=>aux3,
					sel=>'1',
					gray=>salida);

end myArchEj09;

