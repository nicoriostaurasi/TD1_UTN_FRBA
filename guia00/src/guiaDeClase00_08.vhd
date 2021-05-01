----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:20:18 09/28/2018 
-- Design Name: 
-- Module Name:    guiaDeClase00_08 - Behavioral 
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

entity guiaDeClase00_08 is
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
           b : in  STD_LOGIC_VECTOR (7 downto 0);
           igual : out  STD_LOGIC;
           aMayorB : out  STD_LOGIC;
           bMayorA : out  STD_LOGIC);
end guiaDeClase00_08;

architecture myArchEj08 of guiaDeClase00_08 is

begin
igual<='1' when a=b else '0';
aMayorB<='1' when a>b else '0';
bMayorA<='1' when a<b else '0';
end myArchEj08;

