----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:04:08 09/30/2018 
-- Design Name: 
-- Module Name:    guiaDeClase01_04 - Behavioral 
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
library work;
use work.guiaDeClase00_03;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity guiaDeClase01_04 is
    Port ( a,b : in  STD_LOGIC_VECTOR (4-1 downto 0);
           ci : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (4-1 downto 0);
           co : out  STD_LOGIC);
end guiaDeClase01_04;

architecture Behavioral of guiaDeClase01_04 is
signal caux: std_logic_vector(5-1 downto 0);
begin
fulladder : for i in 0 to 3 generate
begin
my_sum: entity work.guiaDeClase00_03
port map(a=>a(i),
			b=>b(i),
			ci=>caux(i),
			co=>caux(i+1),
			s=>s(i));
end generate fulladder;
caux(0)<=ci;
co<=caux(4);
end Behavioral;