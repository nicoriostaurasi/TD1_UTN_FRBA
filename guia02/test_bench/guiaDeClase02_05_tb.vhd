--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:29:45 10/17/2018
-- Design Name:   
-- Module Name:   C:/Users/Nicolas/Documents/VHDLAtencio/guia02/guiaDeClase02_05_tb.vhd
-- Project Name:  guia02
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: myEdgeDetector
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
 
ENTITY guiaDeClase02_05_tb IS
END guiaDeClase02_05_tb;
 
ARCHITECTURE behavior OF guiaDeClase02_05_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT myEdgeDetector
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         d : IN  std_logic;
         ascendente : OUT  std_logic;
         descendente : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal d : std_logic := '0';

 	--Outputs
   signal ascendente : std_logic;
   signal descendente : std_logic;

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: myEdgeDetector PORT MAP (
          clk => clk,
          rst => rst,
          d => d,
          ascendente => ascendente,
          descendente => descendente
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin
		rst<='1';
		wait for 100 ns;	
		rst<='0';
		d<= '0';
      wait for 100 ns;	
		d<= '1';
      wait for 100 ns;	
		d<= '1';
      wait for 100 ns;	
		d<= '0';
      wait for 100 ns;	
		d<= '0';
      wait for 100 ns;	
		d<= '1';
      wait for 100 ns;	
		d<= '0';
      wait for 100 ns;	
		d<= '1';
      wait for 100 ns;	
		rst<='1';
		wait for 100 ns;	
		

   end process;

END;
