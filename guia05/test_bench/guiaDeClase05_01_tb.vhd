--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:31:01 11/16/2018
-- Design Name:   
-- Module Name:   E:/guia05/guia05/guiaDeClase05_01_tb.vhd
-- Project Name:  guia05
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mySerialALU
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
 
ENTITY guiaDeClase05_01_tb IS
END guiaDeClase05_01_tb;
 
ARCHITECTURE behavior OF guiaDeClase05_01_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mySerialALU
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         tx : OUT  std_logic;
         rx : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal rx : std_logic := '0';

 	--Outputs
   signal tx : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mySerialALU PORT MAP (
          clk => clk,
          rst => rst,
          tx => tx,
          rx => rx
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
	
      ----------------------------------------------------------------------------------------
		-- Valores iniciales
      rst <= '1';					   -- reset uut
		rx <= '1';					   -- rx en IDLE
		wait for 40*clk_period;    -- tiempo bit
		
		rst <= '0';					   -- enable uut
		wait for 40*clk_period;    -- tiempo bit
      
     	
      ----------------------------------------------------------------------------------------
		-- 
		rst <= '0';						-- enable module
		rx <= '1';					   -- rx en IDLE
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit start
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 0
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 1
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 2
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 3
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 4
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 5
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 6
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 7
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit stop
		wait for 2*40*clk_period;
										
		rx <= '1';					   -- rx en IDLE
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit start
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 0
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 1
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 2
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 3
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 4
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 5
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 6
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 7
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit stop
		wait for 2*40*clk_period;
		
		rx <= '1';					   -- rx en IDLE
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit start
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 0
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 1
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 2
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 3
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 4
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 5
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 6
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 7
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit stop
		wait for 3*12*40*clk_period;
		
		----------------------------------------------
		rst <= '0';						-- enable module
		rx <= '1';					   -- rx en IDLE
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit start
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 0
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 1
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 2
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 3
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 4
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 5
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 6
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 7
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit stop
		wait for 2*40*clk_period;
										
		rx <= '1';					   -- rx en IDLE
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit start
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 0
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 1
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 2
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 3
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 4
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 5
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 6
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 7
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit stop
		wait for 2*40*clk_period;
		
		rx <= '1';					   -- rx en IDLE
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit start
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 0
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 1
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 2
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 3
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 4
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 5
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 6
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 7
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit stop
		wait for 3*12*40*clk_period;
		
		
		-- finaliza la simulacion
		assert false
		report "end"
		severity failure;

		wait;
		
	
   end process;

END;
