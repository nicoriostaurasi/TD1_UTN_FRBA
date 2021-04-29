--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:51:16 10/01/2018
-- Design Name:   
-- Module Name:   C:/Users/Nicolas/Documents/VHDLAtencio/guia01/codigos/guiaDeClase01_07_tb.vhd
-- Project Name:  guia01
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: guiaDeClase01_07
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
 
ENTITY guiaDeClase01_07_tb IS
END guiaDeClase01_07_tb;
 
ARCHITECTURE behavior OF guiaDeClase01_07_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT guiaDeClase01_07
    PORT(
         binario : IN  std_logic_vector(3 downto 0);
         gray : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal binario : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal gray : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: guiaDeClase01_07 PORT MAP (
          binario => binario,
          gray => gray
        );

  

   -- Stimulus process
   stim_proc: process
   begin		
	
   binario<="0000";
	wait for 100 ns;
   binario<="0001";
	wait for 100 ns;
   binario<="0010";
	wait for 100 ns;
   binario<="0011";
	wait for 100 ns;
   binario<="0100";
	wait for 100 ns;
   binario<="0101";
	wait for 100 ns;
   binario<="0110";
	wait for 100 ns;
   binario<="0111";
	wait for 100 ns;
   binario<="1000";
	wait for 100 ns;
   binario<="1001";
	wait for 100 ns;
   binario<="1010";
	wait for 100 ns;
   binario<="1011";
	wait for 100 ns;
   binario<="1100";
	wait for 100 ns;
   binario<="1101";
	wait for 100 ns;
   binario<="1110";
	wait for 100 ns;
   binario<="1111";
	wait for 100 ns;	
   
	end process;    

END;
