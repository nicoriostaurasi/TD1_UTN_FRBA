----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:06:58 09/28/2018 
-- Design Name: 
-- Module Name:    guiaDeClase00_07 - Behavioral 
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

entity guiaDeClase00_07 is
    Port ( entrada : in  STD_LOGIC_VECTOR (7 downto 0);
           control : in  STD_LOGIC;
           salida : out  STD_LOGIC_VECTOR (7 downto 0));
end guiaDeClase00_07;

architecture myArchEj07 of guiaDeClase00_07 is

begin
salida<=entrada when control='1' else
	   (others=>'Z');

end myArchEj07;

