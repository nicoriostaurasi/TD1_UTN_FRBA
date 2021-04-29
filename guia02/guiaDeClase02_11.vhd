----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:46:21 10/18/2018 
-- Design Name: 
-- Module Name:    myCnt - arch_myCnt 
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

entity myCnt is
	 generic(N:integer:=4);
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           ena : in  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (N-1 downto 0));
end myCnt;

architecture arch_myCnt of myCnt is
signal Qnow: unsigned(N-1 downto 0);
begin
	process(clk)
	begin
	if ena='1' then
		if rising_edge(clk) then
			if rst='1' then
			Qnow<=Qnow+1;
			else
			Qnow<=to_unsigned(0,N);
			end if;
		end if;
	end if;
	end process;
q<=std_logic_vector(Qnow);
end arch_myCnt;