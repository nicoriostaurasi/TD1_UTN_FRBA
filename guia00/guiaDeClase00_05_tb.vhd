--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:51:38 09/28/2018
-- Design Name:   
-- Module Name:   C:/Users/Nicolas/Documents/VHDLAtencio/guia00/guia0/guiaDeClase00_05_tb.vhd
-- Project Name:  guia0
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: guiaDeClase00_05
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
 
ENTITY guiaDeClase00_05_tb IS
END guiaDeClase00_05_tb;
 
ARCHITECTURE behavior OF guiaDeClase00_05_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT guiaDeClase00_05
    PORT(
         a : IN  std_logic_vector(1 downto 0);
         c : IN  std_logic;
         s : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(1 downto 0) := (others => '0');
   signal c : std_logic := '0';

 	--Outputs
   signal s : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
    
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: guiaDeClase00_05 PORT MAP (
          a => a,
          c => c,
          s => s
        );

  

   -- Stimulus process
   stim_proc: process
   begin		
      a<="00";
		c<='0';
		wait for 100 ns;
      a<="01";
		c<='0';
		wait for 100 ns;
		a<="10";
		c<='0';
		wait for 100 ns;
		a<="11";
		c<='0';
		wait for 100 ns;
		a<="00";
		c<='1';
		wait for 100 ns;
		a<="01";
		c<='1';
		wait for 100 ns;
		a<="10";
		c<='1';
		wait for 100 ns;
		a<="11";
		c<='1';
		wait for 100 ns;
   end process;

END;
