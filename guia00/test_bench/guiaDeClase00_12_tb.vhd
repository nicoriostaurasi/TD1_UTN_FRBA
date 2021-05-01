--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:53:11 09/28/2018
-- Design Name:   
-- Module Name:   C:/Users/Nicolas/Documents/VHDLAtencio/guia00/guia0/guiaDeClase00_12_tb.vhd
-- Project Name:  guia0
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: guiaDeClase00_12
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
 
ENTITY guiaDeClase00_12_tb IS
END guiaDeClase00_12_tb;
 
ARCHITECTURE behavior OF guiaDeClase00_12_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT guiaDeClase00_12
    PORT(
         entrada : IN  std_logic_vector(7 downto 0);
         div : IN  std_logic_vector(1 downto 0);
         salida : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal entrada : std_logic_vector(7 downto 0) := (others => '0');
   signal div : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal salida : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: guiaDeClase00_12 PORT MAP (
          entrada => entrada,
          div => div,
          salida => salida
        );

   

   -- Stimulus process
   stim_proc: process
   begin		
      entrada<=X"00";
		div<="00";
		wait for 100 ns;
      entrada<=x"08";
		div<="00";
		wait for 100 ns;
      entrada<=x"FF";
		div<="00";
		wait for 100 ns;
      entrada<=x"04";
		div<="01";
		wait for 100 ns;
      entrada<=x"16";
		div<="01";
		wait for 100 ns;
      entrada<=x"64";
		div<="01";
		wait for 100 ns;
      entrada<=x"FF";
		div<="10";
		wait for 100 ns;
      entrada<=x"23";
		div<="10";
		wait for 100 ns;
      entrada<=x"24";
		div<="10";
		wait for 100 ns;
      entrada<=x"10";
		div<="11";
		wait for 100 ns;
      entrada<=x"08";
		div<="11";
		wait for 100 ns;
      entrada<=x"02";
		div<="11";
		wait for 100 ns;
 
   end process;

END;
