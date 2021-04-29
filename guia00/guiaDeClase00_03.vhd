----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:13:14 09/28/2018 
-- Design Name: 
-- Module Name:    guiaDeClase00_03 - Behavioral 
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

entity guiaDeClase00_03 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           ci : in  STD_LOGIC;
           co : out  STD_LOGIC;
           s : out  STD_LOGIC);
end guiaDeClase00_03;

architecture Behavioral of guiaDeClase00_03 is
signal entrada: STD_logic_vector(3-1 downto 0);
signal salida: STD_logic_vector(2-1 downto 0);
begin
entrada<=ci&a&b;
with entrada select
salida<= "00" when "000",
			"01" when "001",
			"01" when "010",
			"10" when "011",
			"01" when "100",
			"10" when "101",
			"10" when "110",
			"11" when others;
co<=salida(1);
s<=salida(0);
end Behavioral;