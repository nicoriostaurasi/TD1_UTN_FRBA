--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:45:19 09/28/2018
-- Design Name:   
-- Module Name:   C:/Users/Nicolas/Documents/VHDLAtencio/guia00/guia0/guiaDeClase00_09_tb.vhd
-- Project Name:  guia0
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: guiaDeClase00_09
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
 
ENTITY guiaDeClase00_09_tb IS
END guiaDeClase00_09_tb;
 
ARCHITECTURE behavior OF guiaDeClase00_09_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT guiaDeClase00_09
    PORT(
         entrada : IN  std_logic_vector(3 downto 0);
         a : OUT  std_logic;
         b : OUT  std_logic;
         c : OUT  std_logic;
         d : OUT  std_logic;
         e : OUT  std_logic;
         f : OUT  std_logic;
         g : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal entrada : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal a : std_logic;
   signal b : std_logic;
   signal c : std_logic;
   signal d : std_logic;
   signal e : std_logic;
   signal f : std_logic;
   signal g : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: guiaDeClase00_09 PORT MAP (
          entrada => entrada,
          a => a,
          b => b,
          c => c,
          d => d,
          e => e,
          f => f,
          g => g
        );

  

   -- Stimulus process
   stim_proc: process
   begin		
     entrada<=X"0";
	  wait for 100 ns;
	  entrada<=X"1";
	  wait for 100 ns;
	  entrada<=X"2";
	  wait for 100 ns;
	  entrada<=X"3";
	  wait for 100 ns;
	  entrada<=X"4";
	  wait for 100 ns;
	  entrada<=X"5";
	  wait for 100 ns;
	  entrada<=X"6";
	  wait for 100 ns;
	  entrada<=X"7";
	  wait for 100 ns;
	  entrada<=X"8";
	  wait for 100 ns;
	  entrada<=X"9";
	  wait for 100 ns;
	  entrada<=X"A";
	  wait for 100 ns;
	  entrada<=X"B";
	  wait for 100 ns;
	  entrada<=X"C";
	  wait for 100 ns;
	  entrada<=X"D";
	  wait for 100 ns;
	  entrada<=X"E";
	  wait for 100 ns;
	  entrada<=X"F";
	  wait for 100 ns;
     end process;

END;
