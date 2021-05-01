--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:34:36 10/01/2018
-- Design Name:   
-- Module Name:   C:/Users/Nicolas/Documents/VHDLAtencio/guia01/codigos/guiaDeClase01_06_tb.vhd
-- Project Name:  guia01
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: guiaDeClase01_06
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
 
ENTITY guiaDeClase01_06_tb IS
END guiaDeClase01_06_tb;
 
ARCHITECTURE behavior OF guiaDeClase01_06_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT guiaDeClase01_06
    PORT(
         gray : IN  std_logic_vector(3 downto 0);
         binario : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal gray : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal binario : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: guiaDeClase01_06 PORT MAP (
          gray => gray,
          binario => binario
        );


 

   -- Stimulus process
   stim_proc: process
   begin	
   gray<="0000";
	wait for 100 ns;
   gray<="0001";
	wait for 100 ns;
   gray<="0011";
	wait for 100 ns;
   gray<="0010";
	wait for 100 ns;
   gray<="0110";
	wait for 100 ns;
   gray<="0111";
	wait for 100 ns;
   gray<="0101";
	wait for 100 ns;
   gray<="0100";
	wait for 100 ns;
   gray<="1100";
	wait for 100 ns;
   gray<="1101";
	wait for 100 ns;
   gray<="1111";
	wait for 100 ns;
   gray<="1110";
	wait for 100 ns;
   gray<="1010";
	wait for 100 ns;
   gray<="1011";
	wait for 100 ns;
   gray<="1001";
	wait for 100 ns;
   gray<="1000";
	wait for 100 ns;	
   end process;

END;
