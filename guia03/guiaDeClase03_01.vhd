----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:49:17 10/19/2018 
-- Design Name: 
-- Module Name:    guiaDeClase03_01 - Behavioral 
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
use IEEE.math_real.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity myCnt is
	 generic(M: integer := 100);
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           ena : in  STD_LOGIC;
           salidaM : out  STD_LOGIC;
           salidaM_2 : out  STD_LOGIC);
end myCnt;

architecture arch_myCnt of myCnt is
constant N: integer := integer(ceil(log2(real(M))));
signal count: unsigned(N-1 downto 0);
begin
	process(clk)
	begin
	if ena='1' then
		if rising_edge(clk) then
			if rst='1' then
			count<=count+1;
				if count=(M-1) then
				salidaM<='1';
				salidaM_2<='1';
				count<=to_unsigned(0,N);
				else
				salidaM<='0';
				salidaM_2<='0';
				end if;
				
				if count=((M/2)-1) then
				salidaM_2<='1';
				end if;
				
			else
			count<=to_unsigned(0,N);
			salidaM<='1';
			salidaM_2<='1';
			end if;
		end if;
	end if;
	end process;
end arch_myCnt;

