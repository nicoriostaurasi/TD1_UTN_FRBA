----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:20:49 10/19/2018 
-- Design Name: 
-- Module Name:    FFT - arch_FFT 
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

entity FFT is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           t : in  STD_LOGIC;
           q : out  STD_LOGIC);
end FFT;

architecture arch_FFT of FFT is
signal qnow: std_logic;
begin
	process(clk)
	begin
	if rising_edge(clk) then
		if rst='1' then
		qnow<='0';
		else
			if t='1' then 
			qnow<=not(qnow);
			else
			qnow<=qnow;
			end if;
		end if;
	end if;
	end process;
q<=qnow;
end arch_FFT;

