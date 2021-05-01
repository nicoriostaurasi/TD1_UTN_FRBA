----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:55:23 09/30/2018 
-- Design Name: 
-- Module Name:    guiaDeClase01_03 - myArchEj03 
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

entity guiaDeClase01_03 is
	 Generic(N: integer :=4);
    Port ( a : in  STD_LOGIC_VECTOR (N-1 downto 0);
           c : in  STD_LOGIC_VECTOR (N-1 downto 0);
           s : out  STD_LOGIC_VECTOR (N-1 downto 0));
end guiaDeClase01_03;

architecture myArchEj03 of guiaDeClase01_03 is
begin
tristate : for i in 0 to N-1 generate
begin
    s(i)<=a(i) when c(i)='1' else 'Z';
end generate tristate;
end myArchEj03;