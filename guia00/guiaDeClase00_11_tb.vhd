--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:40:28 09/28/2018
-- Design Name:   
-- Module Name:   C:/Users/Nicolas/Documents/VHDLAtencio/guia00/guia0/guiaDeClase00_11_tb.vhd
-- Project Name:  guia0
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: guiaDeClase00_11
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
 
ENTITY guiaDeClase00_11_tb IS
END guiaDeClase00_11_tb;
 
ARCHITECTURE behavior OF guiaDeClase00_11_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT guiaDeClase00_11
    PORT(
         entrada : IN  std_logic_vector(3 downto 0);
         salida : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal entrada : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal salida : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: guiaDeClase00_11 PORT MAP (
          entrada => entrada,
          salida => salida
        );

   

   -- Stimulus process
   stim_proc: process
   begin		
     entrada<="0000";
	  wait for 100 ns;
     entrada<="0001";
	  wait for 100 ns;
     entrada<="0010";
	  wait for 100 ns;
     entrada<="0011";
	  wait for 100 ns;
     entrada<="0100";
	  wait for 100 ns;
     entrada<="0101";
	  wait for 100 ns;
     entrada<="0110";
	  wait for 100 ns;
     entrada<="0111";
	  wait for 100 ns;
     entrada<="1000";
	  wait for 100 ns;
     entrada<="1001";
	  wait for 100 ns;
     entrada<="1010";
	  wait for 100 ns;
     entrada<="1011";
	  wait for 100 ns;
     entrada<="1100";
	  wait for 100 ns;
     entrada<="1101";
	  wait for 100 ns;
     entrada<="1110";
	  wait for 100 ns;
     entrada<="1111";
	  wait for 100 ns;
	end process;

END;
