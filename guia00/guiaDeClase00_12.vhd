----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:45:47 09/28/2018 
-- Design Name: 
-- Module Name:    guiaDeClase00_12 - myArchEj12 
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

entity guiaDeClase00_12 is
    Port ( entrada : in  STD_LOGIC_VECTOR (7 downto 0);
           div : in  STD_LOGIC_VECTOR (1 downto 0);
           salida : out  STD_LOGIC_VECTOR (7 downto 0));
end guiaDeClase00_12;

architecture myArchEj12 of guiaDeClase00_12 is
begin
with div select
	salida<=entrada when "00",
			  "0"&entrada(7 downto 1) when "01",
			  "00"&entrada(7 downto 2) when "10",
			  "000"&entrada(7 downto 3) when "11";
end myArchEj12;

