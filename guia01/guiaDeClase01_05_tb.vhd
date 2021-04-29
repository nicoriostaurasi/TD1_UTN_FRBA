--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:12:43 10/01/2018
-- Design Name:   
-- Module Name:   C:/Users/Nicolas/Documents/VHDLAtencio/guia01/codigos/guiaDeClase01_05_tb.vhd
-- Project Name:  guia01
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: guiaDeClase01_05
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
 
ENTITY guiaDeClase01_05_tb IS
END guiaDeClase01_05_tb;
 
ARCHITECTURE behavior OF guiaDeClase01_05_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT guiaDeClase01_05
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         ci : IN  std_logic;
         co : OUT  std_logic;
         s : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal ci : std_logic := '0';

 	--Outputs
   signal co : std_logic;
   signal s : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: guiaDeClase01_05 PORT MAP (
          a => a,
          b => b,
          ci => ci,
          co => co,
          s => s
        );


   -- Stimulus process
   stim_proc: process
   begin		
	
   a<=x"2";
	b<=x"3";
	ci<='0';
	wait for 100 ns;
	a<=x"3";
	b<=x"2";
	ci<='0';
	wait for 100 ns;
	a<=x"2";
	b<=x"3";
	ci<='1';
	wait for 100 ns;
	a<=x"F";
	b<=x"F";
	ci<='1';
	
	wait for 100 ns;
	a<=x"6";
	b<=x"3";
	ci<='1';
	wait for 100 ns;
	a<=x"A";
	b<=x"8";
	ci<='1';
	wait for 100 ns;
	a<=x"F";
	b<=x"a";
	ci<='0';
	wait for 100 ns;
	a<=x"9";
	b<=x"3";
	ci<='1';
	wait for 100 ns;   
	end process;

END;
