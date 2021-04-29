--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:14:45 09/29/2018
-- Design Name:   
-- Module Name:   C:/Users/Nicolas/Documents/VHDLAtencio/guia01/codigos/guiaDeClase01_02_tb.vhd
-- Project Name:  guia01
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: guiaDeClase01_02
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY guiaDeClase01_02_tb IS
END guiaDeClase01_02_tb;
 
ARCHITECTURE behavior OF guiaDeClase01_02_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT guiaDeClase01_02
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         c : IN  std_logic_vector(3 downto 0);
         s : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal c : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal s : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: guiaDeClase01_02 PORT MAP (
          a => a,
          c => c,
          s => s
        );



   -- Stimulus process
   stim_proc: process
	begin
	a<="0101";
	c<="0001";
	wait for 100 ns;
	a<="1010";
	c<="0001";
	wait for 100 ns;
   a<="1010";
	c<="0010";
	wait for 100 ns;
	a<="0101";
	c<="0010";
	wait for 100 ns;
	a<="0101";
	c<="0100";
	wait for 100 ns;
	a<="1010";
	c<="0100";
	wait for 100 ns;
	a<="1010";
	c<="1000";
	wait for 100 ns;
	a<="0101";
	c<="1010";
	wait for 100 ns;

	a<="1010";
	c<=X"F";
	wait for 100 ns;
	a<="1110";
	c<=X"F";
	wait for 100 ns;
	a<="0101";
	c<=X"F";
	wait for 100 ns;
	
	end process;

END;
