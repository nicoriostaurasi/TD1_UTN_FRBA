----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:20:04 09/29/2018 
-- Design Name: 
-- Module Name:    guiaDeClase01_01 - Behavioral 
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
use IEEE.std_logic_1164.all;
library work;
use work.guiaDeClase00_05;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity guiaDeClase01_01 is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           c : in  STD_LOGIC_VECTOR (1 downto 0);
           s : out  STD_LOGIC);
end guiaDeClase01_01;

architecture myArchEj01 of guiaDeClase01_01 is
signal aux: std_logic_vector(2-1 downto 0);
begin

my_mux1: entity work.guiaDeClase00_05
port map(a=>a(3 downto 2),
			c=>c(0),
			s=>aux(1));

my_mux2: entity work.guiaDeClase00_05
port map(a=>a(1 downto 0),
			c=>c(0),
			s=>aux(0));

my_mux3: entity work.guiaDeClase00_05
port map(a=>aux,
			c=>c(1),
			s=>s);

end myArchEj01;