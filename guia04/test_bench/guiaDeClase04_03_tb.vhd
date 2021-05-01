--------------------------------------------------------------------------------
-- TESTBENCH para entity myUartRx
-- 
-- Tiempos de simulacion:
-- +-----------------------------------------+
-- | fclk = 50 MHz                           |
-- | Tclk = 20 ns                            |
-- | baud rate = 1,25 MHz                    |
-- | tiempo bit = 800 ns = 40*Tclk           |
-- | Tiempo total de simulacion = 24,9 us    |
-- +-----------------------------------------+
-------------------------------------------------------------------------------- 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
ENTITY myUartRx_tb IS
END myUartRx_tb;
 
ARCHITECTURE behavior OF myUartRx_tb IS 

	-- Component Declaration for the Unit Under Test (UUT)
    COMPONENT myUartRx
    GENERIC ( baudRate : integer;
              sysClk : integer;
              dataSize : integer );
    PORT ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           dataRd : out  STD_LOGIC;
           dataRx : out  STD_LOGIC_VECTOR (7 downto 0);
           rx : in  STD_LOGIC );
    END COMPONENT;
    
   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal rx : std_logic := '0';

 	--Outputs
   signal dataRx : std_logic_vector(7 downto 0);
   signal dataRd : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: myUartRx
   GENERIC MAP ( baudRate => 1250000,  -- tiempo bit = 40*Tclk
                 sysClk => 50000000,   -- Tclk = 20ns
                 dataSize => 8 )
   PORT MAP ( clk => clk,
              rst => rst,
              rx => rx,
              dataRx => dataRx,
              dataRd => dataRd );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
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
		-- 1) Prueba del funcionamiento del reset en medio de una recepcion
		rx <= '0';					   -- bit start
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 0
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 1
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 2
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 3
		wait for 20*clk_period;    -- 0,5*tiempo bit
											-- interrumpo la recepcion
		rst <= '1';						-- reset module
		rx <= '1';					   -- rx en IDLE
		wait for 60*clk_period;    -- 1,5*tiempo bit
      
      ----------------------------------------------------------------------------------------
		-- 2) Prueba que no reciba estando reseteado
		rx <= '0';					   -- bit start
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 0
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 1
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 2
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 3
		wait for 40*clk_period;    -- tiempo bit
		rst <= '1';						-- reset module
		wait for 40*clk_period;    -- tiempo bit
      
      ----------------------------------------------------------------------------------------
		-- 3) Distinto baudrate, debe leer cualquier cosa
		rst <= '0';						-- enable module
		rx <= '1';					   -- rx en IDLE
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit start
		wait for 15*clk_period;    -- otro baudrate
		rx <= '1';					   -- bit 0
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 1
		wait for 15*clk_period;    -- otro baudrate
		rx <= '1';					   -- bit 2
		wait for 15*clk_period;    -- otro baudrate
		rx <= '0';					   -- bit 3
		wait for 40*clk_period;    -- tiempo bit
		rst <= '1';						-- reset module
		wait for 40*clk_period;    -- tiempo bit
		
      ----------------------------------------------------------------------------------------
		-- 4) Prueba modulo correctamente con trama 10101010
		rst <= '0';						-- enable module
		rx <= '1';					   -- rx en IDLE
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit start
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 0
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 1
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 2
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 3
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 4
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 5
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit 6
		wait for 40*clk_period;    -- tiempo bit
		rx <= '0';					   -- bit 7
		wait for 40*clk_period;    -- tiempo bit
		rx <= '1';					   -- bit stop
		wait for 2*40*clk_period;
										
		-- finaliza la simulacion
		assert false
		report "end"
		severity failure;

   end process;

END;
