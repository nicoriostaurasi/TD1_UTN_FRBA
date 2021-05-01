--------------------------------------------------------------------------------
-- TESTBENCH para entity myUartTx
-- 
-- Tiempos de simulacion:
-- +-----------------------------------------+
-- | fclk = 50 MHz                           |
-- | Tclk = 20 ns                            |
-- | baud rate = 1,25 MHz                    |
-- | tiempo bit = 800 ns = 40*Tclk           |
-- | Tiempo total de simulacion = 34,6 us    |
-- +-----------------------------------------+
-------------------------------------------------------------------------------- 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY myUartTx_tb IS
END myUartTx_tb;
 
ARCHITECTURE behavior OF myUartTx_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT myUartTx
    GENERIC( baudRate : integer;
             sysClk : integer;
             dataSize : integer );
    PORT( clk : IN  std_logic;
          rst : IN  std_logic;
          dataWr : IN  std_logic;
          dataTx : IN  std_logic_vector(dataSize - 1 downto 0);
          tx : OUT  std_logic;
          ready : OUT  std_logic );
    END COMPONENT;

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '1';
   signal dataWr : std_logic := '0';
   signal dataTx: std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal tx : std_logic;
   signal ready : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: myUartTx
   GENERIC MAP ( baudRate => 1250000,  -- tiempo bit = 40*Tclk
					  sysClk => 50000000,   -- Tclk = 20ns
                 dataSize => 8 )
   PORT MAP ( clk => clk,
              rst => rst,
              dataWr => dataWr,
              dataTx=> dataTx,
              tx => tx,
              ready => ready );

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
      rst <= '1';							-- reset uut
		dataTx <= (others => '0');		-- datos en cero para facilitar la lectura
		dataWr <= '0';						-- que no envie
		wait for 4*clk_period;
		rst <= '0';							-- enable uut
		wait for clk_period;											

      ----------------------------------------------------------------------------------------
      -- 1) Prueba que solo transmita con dataWr = 1
      dataTx <= "10101010";			-- datos a transmitir
      wait for 10*clk_period;       -- no deberia transmitir ya que dataWr = 0

      ----------------------------------------------------------------------------------------
      -- 2) Prueba del reset en medio de una transmision
		dataWr <= '1';						-- pulso para comenzar transmision
		wait for clk_period;
		dataWr <= '0';
		wait for 3*40*clk_period;     -- 3*tiempo bit
		rst <= '1';							-- reset uut en medio de la transmision
		wait for clk_period;
		rst <= '0';
		wait for 12*40*clk_period;    -- 12*tiempo bit

      ----------------------------------------------------------------------------------------
      -- 3) Prueba de transmision con reset activo
		rst <= '1';							-- reset uut
		wait for clk_period;
		dataWr <= '1';						-- pulso para comenzar transmision
		dataTx <= "11001100";			-- datos a transmitir
		wait for clk_period;
		dataWr <= '0';
		wait for 3*40*clk_period;     -- 3*tiempo bit
		
      ----------------------------------------------------------------------------------------
      -- 4) Prueba de transmision mientras con otra en curso
		rst <= '0';							-- enable uut
		wait for clk_period;
		dataWr <= '1';						-- pulso para comenzar transmision
		dataTx <= "10101010";			-- datos a transmitir
		wait for clk_period;
		dataWr <= '0';
		wait for 3*40*clk_period;     -- 3*tiempo bit
		dataWr <= '1';						-- pulso para comenzar transmision
		dataTx <= "11111111";			-- nuevos datos que no deberian transmitirse
		wait for clk_period;
		dataWr <= '0';
		wait for 9*40*clk_period;     -- 9*tiempo bit

      ----------------------------------------------------------------------------------------
      -- 5) Verificacion de que retenga los datos a transmitir
		dataWr <= '1';						-- pulso para comenzar transmision
		dataTx <= "10101010";			-- datos a transmitir
		wait for clk_period;
		dataWr <= '0';
		dataTx <= (others => '0');		-- quito los datos de la entrada
		wait for 12*40*clk_period;    -- 12*tiempo bit
				
		-- finaliza la simulacion
		assert false
		report "end"
		severity failure;		
		
   end process;

END;
