----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:17:35 10/01/2018 
-- Design Name: 
-- Module Name:    guiaDeClase01_06 - Behavioral 
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

entity guiaDeClase01_06 is
	 generic(N: integer :=4);
    Port ( gray : in  STD_LOGIC_VECTOR (N-1 downto 0);
           binario : out  STD_LOGIC_VECTOR (N-1 downto 0));
end guiaDeClase01_06;

architecture myArchEj06 of guiaDeClase01_06 is
signal baux: std_logic_vector((N+1)-1 downto 0);
begin
baux(N)<='0';
convGtoB : for i in N-1 downto 0 generate
begin
baux(i)<=gray(i) xor baux(i+1);
end generate convGtoB;
binario<=baux(N-1 downto 0);
end myArchEj06;

