----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:47:27 10/01/2018 
-- Design Name: 
-- Module Name:    guiaDeClase01_05 - myArchEj05 
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

entity guiaDeClase01_05 is
    generic(N:integer:=4);
	 Port ( a : in  STD_LOGIC_VECTOR (N-1 downto 0);
           b : in  STD_LOGIC_VECTOR (N-1 downto 0);
           ci : in  STD_LOGIC;
           co : out  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (N-1 downto 0));
end guiaDeClase01_05;

architecture myArchEj05 of guiaDeClase01_05 is
signal caux: std_logic_vector((N+1)-1 downto 0);
begin
fullNadder : for i in 0 to N-1 generate
begin
my_sum: entity work.guiaDeClase00_03
port map(a=>a(i),
			b=>b(i),
			ci=>caux(i),
			co=>caux(i+1),
			s=>s(i));
end generate fullNadder;
caux(0)<=ci;
co<=caux(N);
end myArchEj05;