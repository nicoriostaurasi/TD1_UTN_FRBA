----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:22:03 10/17/2018 
-- Design Name: 
-- Module Name:    guiaDeClase02_05 - Behavioral 
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

entity myEdgeDetector is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           d : in  STD_LOGIC;
           ascendente : out  STD_LOGIC;
           descendente : out  STD_LOGIC);
end myEdgeDetector;

architecture arch_myEdgeDetector of myEdgeDetector is
signal state:std_logic := '0';
begin

MDE:process(clk)
	
	begin
	if rising_edge(clk) then
		if rst='1' then
			state<='0';
			ascendente <= '0';
			descendente<= '0';
		else
			if state='0'then
				if d='1' then
					state<='1';
					ascendente <= '1';
					descendente<= '0';
				else
					state<='0';
					ascendente <= '0';
					descendente<= '0';
				end if;
			else
				if d='0' then
					state<='0';
					ascendente <= '0';
					descendente<= '1';
				else
					state<='1';
					ascendente <= '0';
					descendente<= '0';
				end if;
			end if;
		end if;
	end if;
end process;

end arch_myEdgeDetector;