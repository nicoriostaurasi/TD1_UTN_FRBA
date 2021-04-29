----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:46:01 10/17/2018 
-- Design Name: 
-- Module Name:    guiaDeClase02_04 - Behavioral 
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

entity myFFDREN is
	 generic(N: integer :=4);
    port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           ena : in  STD_LOGIC;
           d : in  STD_LOGIC_VECTOR (N-1 downto 0);
           q : out  STD_LOGIC_VECTOR (N-1 downto 0));
end myFFDREN;

architecture arch_myFFDREN of myFFDREN is

signal aux: std_logic_vector (N-1 downto 0);
begin

aux<=(others=>rst);

FFDREN:process(clk,ena)
	begin
	if (rising_edge(clk) and ena='1') then 
		q<= d and aux;
	end if;
end process;

end arch_myFFDREN;

