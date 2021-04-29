----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:42:59 10/17/2018 
-- Design Name: 
-- Module Name:    myShiftReg - arch_myShiftReg 
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
use work.myFFDRE;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity myShiftReg2 is
	 generic(N: integer :=4);
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           ena : in  STD_LOGIC;
           d : in  STD_LOGIC;
           q : out  STD_LOGIC);
end myShiftReg2;

architecture arch_myShiftReg2 of myShiftReg2 is
signal datos: std_logic_vector((N+1)-1 downto 0);
begin
ffd: for i in 0 to N-1 generate
begin
my_reg: entity work.myFFDRE
port map(clk=>clk,
			rst=>rst,
			ena=>ena,
			d=>datos(i),
			q=>datos(i+1));
end generate ffd;
datos(0)<=d;
q<=datos(N);
end arch_myShiftReg2;