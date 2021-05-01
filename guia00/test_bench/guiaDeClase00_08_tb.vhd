--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:24:17 09/28/2018
-- Design Name:   
-- Module Name:   C:/Users/Nicolas/Documents/VHDLAtencio/guia00/guia0/guiaDeClase00_08_tb.vhd
-- Project Name:  guia0
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: guiaDeClase00_08
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
 
ENTITY guiaDeClase00_08_tb IS
END guiaDeClase00_08_tb;
 
ARCHITECTURE behavior OF guiaDeClase00_08_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT guiaDeClase00_08
    PORT(
         a : IN  std_logic_vector(7 downto 0);
         b : IN  std_logic_vector(7 downto 0);
         igual : OUT  std_logic;
         aMayorB : OUT  std_logic;
         bMayorA : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(7 downto 0) := (others => '0');
   signal b : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal igual : std_logic;
   signal aMayorB : std_logic;
   signal bMayorA : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: guiaDeClase00_08 PORT MAP (
          a => a,
          b => b,
          igual => igual,
          aMayorB => aMayorB,
          bMayorA => bMayorA
        );

   -- Stimulus process
   stim_proc: process
   begin		
	a<=X"00";
   b<=X"00";
	wait for 100 ns;
	a<=X"FF";
   b<=X"AA";
	wait for 100 ns;
	a<=X"AA";
   b<=X"FF";
	wait for 100 ns;
	a<=X"AB";
   b<=X"BA";
	wait for 100 ns;
	a<=X"11";
   b<=X"00";
	wait for 100 ns;
	a<=X"00";
   b<=X"11";
	wait for 100 ns;
	a<=X"FF";
   b<=X"FF";
	wait for 100 ns;
   end process;

END;
