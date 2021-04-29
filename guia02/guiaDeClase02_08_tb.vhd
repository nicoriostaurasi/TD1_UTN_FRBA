--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:54:27 10/18/2018
-- Design Name:   
-- Module Name:   C:/Users/Nicolas/Documents/VHDLAtencio/guia02/Codigos/guiaDeClase02_08_tb.vhd
-- Project Name:  guia02
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: myShiftReg3
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
 
ENTITY guiaDeClase02_08_tb IS
END guiaDeClase02_08_tb;
 
ARCHITECTURE behavior OF guiaDeClase02_08_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT myShiftReg3
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         ena : IN  std_logic;
         dir : IN  std_logic_vector(1 downto 0);
         dr : IN  std_logic;
         dl : IN  std_logic;
         d : IN  std_logic_vector(3 downto 0);
         q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal ena : std_logic := '0';
   signal dir : std_logic_vector(1 downto 0) := (others => '0');
   signal dr : std_logic := '0';
   signal dl : std_logic := '0';
   signal d : std_logic_vector(3 downto 0) := (others => '0');


 	--Outputs
   signal q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: myShiftReg3 PORT MAP (
          clk => clk,
          rst => rst,
          ena => ena,
          dir => dir,
          dr => dr,
          dl => dl,
          d => d,
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
		rst<='0';
		ena<='1';
		wait for 100 ns;
		rst<='1';
		--ejemplo de carga paralela
		d<="1010";
		dir<="10";
		wait for 100 ns;
		
		d<="0101";
		dir<="11";
		wait for 100 ns;
		
		d<="1011";
		dir<="10";
		wait for 100 ns;
		
		d<="1110";
		dir<="11";
		wait for 100 ns;
		-- deshabilito enable
		ena<='0';
		d<="1010";
		dir<="10";
		wait for 100 ns;
		
		d<="0101";
		dir<="11";
		wait for 100 ns;
		
		d<="1011";
		rst<='0';--prueba con reset
		dir<="10";
		wait for 100 ns;
		
		d<="1110";
		dir<="10";
		rst<='1';
		wait for 100 ns;
		
		-- prueba carga datos por dl
		--reseteo a "0000"
		ena<='1';
		rst<='0';
		wait for 100 ns;
		
		--cargo un bit por dl durante un ciclo de clock
		rst<='1';
		dl<='1';
		dir<="01";
		wait for 100 ns;
		
		dl<='0';
		wait for 500 ns;
		
		dl<='1';
		wait for 500 ns;
		
		rst<='0';
		dl<='0';
		wait for 100 ns;
		
		rst<='1';
		wait for 100 ns;
		
		--cargo un bit por dr durante un ciclo de clock
		dr<='1';
		dir<="00";
		wait for 100 ns;
		
		dr<='0';
		wait for 500 ns;
		
		dr<='1';
		wait for 500 ns;
		
		rst<='0';
		dr<='0';
		wait for 100 ns;
		
		rst<='1';
		wait for 100 ns;
	wait;
   end process;

END;
