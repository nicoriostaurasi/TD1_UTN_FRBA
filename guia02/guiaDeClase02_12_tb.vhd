--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:39:01 10/19/2018
-- Design Name:   
-- Module Name:   C:/Users/Nicolas/Documents/VHDLAtencio/guia02/Codigos/guiaDeClase02_12_tb.vhd
-- Project Name:  guia02
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: myCnt2
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
 
ENTITY guiaDeClase02_12_tb IS
END guiaDeClase02_12_tb;
 
ARCHITECTURE behavior OF guiaDeClase02_12_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT myCnt2
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         ena : IN  std_logic;
         dir : IN  std_logic;
         q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal ena : std_logic := '0';
   signal dir : std_logic := '0';

 	--Outputs
   signal q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: myCnt2 PORT MAP (
          clk => clk,
          rst => rst,
          ena => ena,
          dir => dir,
          q => q
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
		ena<='1';
		rst<='0';
		wait for 100 ns;
		dir<='0';
		rst<='1';
      wait for 1700 ns;
		dir<='1';
		wait for 2000 ns;
		ena<='0';
		wait for 100 ns;
		rst<='0';
		wait for 200 ns;
		wait;
   end process;

END;
