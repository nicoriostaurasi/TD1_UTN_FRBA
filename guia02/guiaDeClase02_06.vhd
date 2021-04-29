----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:54:21 10/17/2018 
-- Design Name: 
-- Module Name:    guiaDeClase02_06 - arch_myShiftReg 
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
use work.myFFDR;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity myShiftReg is
    Generic(N: integer:=4);
	 Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           d : in  STD_LOGIC;
           q : out  STD_LOGIC);
end myShiftReg;

architecture arch_myShiftReg of myShiftReg is
signal datos: std_logic_vector((N+1)-1 downto 0);
begin
ffd: for i in 0 to N-1 generate
begin
my_reg: entity work.myFFDR
port map(clk=>clk,
			rst=>rst,
			d=>datos(i),
			q=>datos(i+1));
end generate ffd;
datos(0)<=d;
q<=datos(N);
end arch_myShiftReg;

