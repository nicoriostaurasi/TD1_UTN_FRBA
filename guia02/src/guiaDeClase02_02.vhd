----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:09:10 10/17/2018 
-- Design Name: 
-- Module Name:    guiaDeClase02_02 - Behavioral 
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

entity myFFDC is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           d : in  STD_LOGIC;
           q : out  STD_LOGIC);
end myFFDC;

architecture arch_myFFDC of myFFDC is

begin

	FFD:process(clk,clr)
		begin
		if clr='1' then
			q <= '0';
		elsif rising_edge(clk) then
			q <= d;
		end if;
	end process FFD;

end arch_myFFDC;
