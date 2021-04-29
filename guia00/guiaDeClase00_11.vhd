----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:26:48 09/28/2018 
-- Design Name: 
-- Module Name:    guiaDeClase00_11 - Behavioral 
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

entity guiaDeClase00_11 is
    Port ( entrada : in  STD_LOGIC_VECTOR (3 downto 0);
           salida : out  STD_LOGIC_VECTOR (1 downto 0));
end guiaDeClase00_11;

architecture myArchEj11 of guiaDeClase00_11 is

begin
process(entrada)
	begin
	case entrada is
	when "0001" => salida<="00";
	when "0010" => salida<="01";
	when "0011" => salida<="01";
	when "0100" => salida<="10";
	when "0101" => salida<="10";
	when "0110" => salida<="10";
	when "0111" => salida<="10";
	when "1000" => salida<="11";
	when "1001" => salida<="11";
	when "1010" => salida<="11";
	when "1011" => salida<="11";
	when "1100" => salida<="11";
	when "1101" => salida<="11";
	when "1110" => salida<="11";
	when "1111" => salida<="11";
	when others => salida<=(others=>'Z');
	end case;
	end process;
end myArchEj11;