----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:22:21 10/18/2018 
-- Design Name: 
-- Module Name:    myShiftReg3 - arch_myShiftReg3 
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

entity myShiftReg3 is
	 Generic(N:integer:=4);
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           ena : in  STD_LOGIC;
           dir : in  STD_LOGIC_vector (2-1 downto 0);
           dr : in  STD_LOGIC;--Entrada serie derecha
           dl : in  STD_LOGIC;--Entrada serie izquierda
           d : in  STD_LOGIC_VECTOR (N-1 downto 0);--entrada paralela
           q : out  STD_LOGIC_VECTOR (N-1 downto 0));
end myShiftReg3;

architecture arch_myShiftReg3 of myShiftReg3 is
signal aux,qnow: std_logic_vector(N-1 downto 0);
begin
process(clk)
begin
if rising_edge(clk) then
	if ena='1' then
		if rst='1' then
			if dir="00"then
			qnow<=qnow(N-2 downto 0)&dr;
			end if;
		
			if dir="01" then
			qnow<=dl&qnow(N-1 downto 1);
			end if;
			
			if dir="10" or dir="11" then
			qnow<=d;
			end if;
		else
			qnow<=(others=>'0');
		end if;
	end if;
end if;
end process;
q<=qnow;
end arch_myShiftReg3;