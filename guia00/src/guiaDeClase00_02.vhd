----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:29:15 09/28/2018 
-- Design Name: 
-- Module Name:    guiaDeClase00_02 - Behavioral 
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

entity guiaDeClase00_02 is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           c : out  STD_LOGIC);
end guiaDeClase00_02;

architecture MyArchEj02 of guiaDeClase00_02 is
begin
	c<=(a(0) and a(1)) and (a(2) and a(3));
end MyArchEj02;