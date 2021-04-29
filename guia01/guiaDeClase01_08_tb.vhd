--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:35:32 10/01/2018
-- Design Name:   
-- Module Name:   C:/Users/Nicolas/Documents/VHDLAtencio/guia01/codigos/guiaDeClase01_08_tb.vhd
-- Project Name:  guia01
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: guiaDeClase01_08
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
 
ENTITY guiaDeClase01_08_tb IS
END guiaDeClase01_08_tb;
 
ARCHITECTURE behavior OF guiaDeClase01_08_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT guiaDeClase01_08
    PORT(
         binario : IN  std_logic_vector(7 downto 0);
         sel : IN  std_logic;
         gray : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal binario : std_logic_vector(7 downto 0) := (others => '0');
   signal sel : std_logic := '0';

 	--Outputs
   signal gray : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: guiaDeClase01_08 PORT MAP (
          binario => binario,
          sel => sel,
          gray => gray
        );

  

   -- Stimulus process
   stim_proc: process
   begin	

   binario<=x"00";
	sel<='1';
	wait for 100 ns;
	binario<=x"01";
	sel<='1';
	wait for 100 ns;
	binario<=x"02";
	sel<='1';
	wait for 100 ns;
	binario<=x"03";
	sel<='1';
	wait for 100 ns;
	binario<=x"04";
	sel<='1';
	wait for 100 ns;
	binario<=x"05";
	sel<='1';
	wait for 100 ns;
	binario<=x"06";
	sel<='1';
	wait for 100 ns;
	binario<=x"07";
	sel<='1';
	wait for 100 ns;
	binario<=x"08";
	sel<='1';
	wait for 100 ns;
	binario<=x"09";
	sel<='1';
	wait for 100 ns;
	binario<=x"0A";
	sel<='1';
	wait for 100 ns;
	binario<=x"0B";
	sel<='1';
	wait for 100 ns;
	binario<=x"0C";
	sel<='1';
	wait for 100 ns;
	binario<=x"0D";
	sel<='1';
	wait for 100 ns;
	binario<=x"0E";
	sel<='1';
	wait for 100 ns;
	binario<=x"0F";
	sel<='1';
	wait for 100 ns;

	binario<=x"00";
	sel<='0';
	wait for 100 ns;
	binario<=x"01";
	sel<='0';
	wait for 100 ns;
	binario<=x"03";
	sel<='0';
	wait for 100 ns;
	binario<=x"02";
	sel<='0';
	wait for 100 ns;
	binario<=x"06";
	sel<='0';
	wait for 100 ns;
	binario<=x"07";
	sel<='0';
	wait for 100 ns;
	binario<=x"05";
	sel<='0';
	wait for 100 ns;
	binario<=x"04";
	sel<='0';
	wait for 100 ns;
	binario<=x"0C";
	sel<='0';
	wait for 100 ns;
	binario<=x"0D";
	sel<='0';
	wait for 100 ns;
	binario<=x"0F";
	sel<='0';
	wait for 100 ns;
	binario<=x"0E";
	sel<='0';
	wait for 100 ns;
	binario<=x"0A";
	sel<='0';
	wait for 100 ns;
	binario<=x"0B";
	sel<='0';
	wait for 100 ns;
	binario<=x"09";
	sel<='0';
	wait for 100 ns;
	binario<=x"08";
	sel<='0';
	wait for 100 ns;


	
     
   end process;

END;
