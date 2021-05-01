----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:43:12 10/01/2018 
-- Design Name: 
-- Module Name:    guiaDeClase01_07 - myArchEj07 
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

entity guiaDeClase01_07 is
	 generic(N: integer :=4);
    Port ( binario : in  STD_LOGIC_VECTOR (N-1 downto 0);
			  gray : out  STD_LOGIC_VECTOR (N-1 downto 0));
end guiaDeClase01_07;

architecture myArchEj07 of guiaDeClase01_07 is
signal baux: std_logic_vector((N+1)-1 downto 0);
begin
baux<='0'&binario;
--baux(N-1 downto 0)<=binario;
convBtoG : for i in N-1 downto 0 generate
begin
gray(i)<=baux(i) xor baux(i+1);
end generate convBtoG;

end myArchEj07;

