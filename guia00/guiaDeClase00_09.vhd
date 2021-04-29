----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:32:46 09/28/2018 
-- Design Name: 
-- Module Name:    guiaDeClase00_09 - Behavioral 
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

entity guiaDeClase00_09 is
    Port ( entrada : in  STD_LOGIC_VECTOR (3 downto 0);
           a : out  STD_LOGIC;
           b : out  STD_LOGIC;
           c : out  STD_LOGIC;
           d : out  STD_LOGIC;
           e : out  STD_LOGIC;
           f : out  STD_LOGIC;
           g : out  STD_LOGIC);
end guiaDeClase00_09;

architecture myArchEj09 of guiaDeClase00_09 is
signal salida: std_logic_vector(7-1 downto 0);
begin
with entrada select
salida<= "1111110" when "0000",
			"0110000" when "0001",
			"1101101" when "0010",
			"0111001" when "0011",
			"1110011" when "0100",
			"1011011" when "0101",
			"1011111" when "0110",
			"1110000" when "0111",
			"1111111" when "1000",
			"1111111" when "1001",
			"1110111" when "1010",
			"0011111" when "1011",
			"1001110" when "1100",
			"0111101" when "1101",
			"1001111" when "1110",
			"1000111" when others;
a<=salida(6);
b<=salida(5);
c<=salida(4);
d<=salida(3);
e<=salida(2);
f<=salida(1);
g<=salida(0);

end myArchEj09;

