----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:58:48 09/28/2018 
-- Design Name: 
-- Module Name:    guiaDeClase00_06 - Behavioral 
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

entity guiaDeClase00_06 is
    Port ( entrada : in  STD_LOGIC;
           control : in  STD_LOGIC;
           salida : out  STD_LOGIC);
end guiaDeClase00_06;

architecture myArchEj06 of guiaDeClase00_06 is

begin
salida<=entrada when control='1' else
	 'Z';
end myArchEj06;

