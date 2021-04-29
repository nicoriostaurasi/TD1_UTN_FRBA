----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:52:09 10/19/2018 
-- Design Name: 
-- Module Name:    myEdgeCnt - arch_myEdgeCnt 
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

entity myEdgeCnt is
	 generic(N:integer:=4);
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           d : in  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (N-1 downto 0));
end myEdgeCnt;

architecture arch_myEdgeCnt of myEdgeCnt is
signal state: std_logic;
signal Qnow: unsigned(N-1 downto 0);
begin
	process(clk)
	begin
	if rising_edge(clk) then
		if rst='1' then
			state<='0';
			Qnow<=to_unsigned(0,N);
		else
			if state='0'then
				if d='1' then
					state<='1';
					Qnow<=Qnow+1;
				else
					state<='0';
					Qnow<=Qnow;
				end if;
			else
				if d='0' then
					state<='0';
					Qnow<=Qnow;
				else
					state<='1';
					Qnow<=Qnow;
				end if;
			end if;
		end if;
	end if;
end process;
q<=std_logic_vector(Qnow);
end arch_myEdgeCnt;

