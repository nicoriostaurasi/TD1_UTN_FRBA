--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:13:26 09/28/2018
-- Design Name:   
-- Module Name:   C:/Users/Nicolas/Documents/VHDLAtencio/guia00/guia0/guiaDeClase00_07_tb.vhd
-- Project Name:  guia0
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: guiaDeClase00_07
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
 
ENTITY guiaDeClase00_07_tb IS
END guiaDeClase00_07_tb;
 
ARCHITECTURE behavior OF guiaDeClase00_07_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT guiaDeClase00_07
    PORT(
         entrada : IN  std_logic_vector(7 downto 0);
         control : IN  std_logic;
         salida : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal entrada : std_logic_vector(7 downto 0) := (others => '0');
   signal control : std_logic := '0';

 	--Outputs
   signal salida : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: guiaDeClase00_07 PORT MAP (
          entrada => entrada,
          control => control,
          salida => salida
        );

   

   -- Stimulus process
   stim_proc: process
   begin		
      entrada<=X"00";
		control<='1';
		wait for 100 ns;
		entrada<=X"01";
		control<='1';
		wait for 100 ns;
		entrada<=X"02";
		control<='1';
		wait for 100 ns;
		entrada<=X"03";
		control<='1';
		wait for 100 ns;
		entrada<=X"04";
		control<='1';
		wait for 100 ns;
		entrada<=X"05";
		control<='1';
		wait for 100 ns;
		entrada<=X"06";
		control<='1';
		wait for 100 ns;
		entrada<=X"07";
		control<='1';
		wait for 100 ns;
		entrada<=X"10";
		control<='1';
		wait for 100 ns;
	
	   entrada<=X"00";
		control<='0';
		wait for 100 ns;
		entrada<=X"01";
		control<='0';
		wait for 100 ns;
		entrada<=X"02";
		control<='0';
		wait for 100 ns;
		entrada<=X"03";
		control<='0';
		wait for 100 ns;
		entrada<=X"04";
		control<='0';
		wait for 100 ns;
		entrada<=X"05";
		control<='0';
		wait for 100 ns;
		entrada<=X"06";
		control<='0';
		wait for 100 ns;
		entrada<=X"07";
		control<='0';
		wait for 100 ns;
		entrada<=X"10";
		control<='0';
		wait for 100 ns;
	
   end process;

END;
