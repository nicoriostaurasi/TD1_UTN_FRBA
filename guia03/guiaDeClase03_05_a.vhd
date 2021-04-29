----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:17:36 10/18/2018 
-- Design Name: 
-- Module Name:    myRingCnt - arch_myRingCnt 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity myRingCnt2 is
	 generic(N:integer:=4);
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           ena : in  STD_LOGIC;
			  dir	: in  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (N-1 downto 0));
end myRingCnt2;

architecture arch_myRingCnt of myRingCnt2 is
signal qnow: std_logic_vector(N-1 downto 0);
begin
	process(clk)
begin
if rising_edge(clk) then
	if ena='1' then
		if rst='1' then
			if dir='1' then
			qnow<=qnow(0)&qnow(N-1 downto 1);
			else
			qnow<=qnow(N-2 downto 0)&qnow(N-1);
			end if;
		else
			qnow<=std_logic_vector(to_unsigned(1,N));
		end if;
	end if;
end if;
end process;
q<=qnow;
end arch_myRingCnt;

