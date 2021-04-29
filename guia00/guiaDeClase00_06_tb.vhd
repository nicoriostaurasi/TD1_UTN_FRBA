--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:01:56 09/28/2018
-- Design Name:   
-- Module Name:   C:/Users/Nicolas/Documents/VHDLAtencio/guia00/guia0/guiaDeClase00_06_tb.vhd
-- Project Name:  guia0
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: guiaDeClase00_06
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
 
ENTITY guiaDeClase00_06_tb IS
END guiaDeClase00_06_tb;
 
ARCHITECTURE behavior OF guiaDeClase00_06_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT guiaDeClase00_06
    PORT(
         entrada : IN  std_logic;
         control : IN  std_logic;
         salida : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal entrada : std_logic := '0';
   signal control : std_logic := '0';

 	--Outputs
   signal salida : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: guiaDeClase00_06 PORT MAP (
          entrada => entrada,
          control => control,
          salida => salida
        );

   -- Stimulus process
   stim_proc: process
   begin		
	entrada<='0';
	control<='0';
	wait for 100 ns;
   entrada<='1';
	control<='0';
	wait for 100 ns;
   entrada<='0';
	control<='1';
	wait for 100 ns;
   entrada<='1';
	control<='1';
	wait for 100 ns;
   end process;

END;
