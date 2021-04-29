-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY guiaDeClase01_09_tb IS
  END guiaDeClase01_09_tb;

  ARCHITECTURE behavior OF guiaDeClase01_09_tb IS 

  -- Component Declaration
          COMPONENT guiaDeClase01_09
          PORT(
                 entrada: IN std_logic_vector(16-1 downto 0);       
                 salida: OUT std_logic_vector(16-1 downto 0)
                  );
          END COMPONENT;

         signal entrada: std_logic_vector(16-1 downto 0) := (others => '0');
			signal salida: std_logic_vector(16-1 downto 0);
          

  BEGIN

  -- Component Instantiation
         uut: guiaDeClase01_09 PORT MAP (
          entrada => entrada,
          salida =>salida);


  --  Test Bench Statements
     tb : PROCESS
     BEGIN
	  entrada<=x"0000";
	  wait for 100 ns;
	  
	  entrada<=x"0001";
	  wait for 100 ns;
   
	  entrada<=x"0002";
	  wait for 100 ns;  
	
	  entrada<=x"0003";
	  wait for 100 ns;
	  END PROCESS tb;
  
  END;
