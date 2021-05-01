----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:48:09 09/28/2018 
-- Design Name: 
-- Module Name:    guiaDeClase00_05 - Behavioral 
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

entity guiaDeClase00_05 is
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0);
           c : in  STD_LOGIC;
           s : out  STD_LOGIC);
end guiaDeClase00_05;

architecture MyArchEj05 of guiaDeClase00_05 is

begin
 s<=a(1) when c='1' else
	 a(0);
end MyArchEj05;

