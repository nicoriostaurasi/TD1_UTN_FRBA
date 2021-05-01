----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:08:35 09/28/2018 
-- Design Name: 
-- Module Name:    guiaDeClase00_10 - myArchEj10 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity guiaDeClase00_10 is
    Port ( entrada : in  STD_LOGIC_VECTOR (2 downto 0);
           salida : out  STD_LOGIC_VECTOR (7 downto 0));
end guiaDeClase00_10;

architecture myArchEj10 of guiaDeClase00_10 is

begin
	process(entrada)
	begin
	case entrada is
	when "000" => salida<="00000001";
	when "001" => salida<="00000010";
	when "010" => salida<="00000100";
	when "011" => salida<="00001000";
	when "100" => salida<="00010000";
	when "101" => salida<="00100000";
	when "110" => salida<="01000000";
	when others => salida<="10000000";
	end case;
	end process;
end myArchEj10;

