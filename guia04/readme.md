# Guia 04

## Repositorio del TP#04

## Estructura de la carpeta

* ***Enunciado***: Se encuentra el enunciado del TP a desarrollar.

* ***Src***: Se encuentra el archivo fuente de los distintos TPS.

* ***Test_Bench***: Se encuentra el código fuente de los test bench realizados.

## Acceso rapido de la carpeta

* [Enunciado](/guia04/enunciado/guiaDeClase04.pdf)

* [Src](/guia04/src/)

* [Test_Bench](/guia04/test_bench/)

## Descripción de los Ejercicios

* **Ejercicio 01**: *Transmisor UART 9600-8N1*

La entidad de corresponde a la siguiente: 

```vhdl
entity myUartTx
Generic (baudRate : integer := 9600;
sysClk : integer := 50000000;
dataSize : integer := 8);
Port ( clk : in std_logic;
rst : in std_logic;
dataWr : in std_logic;
dataTx : in std_logic_vector (dataSize - 1 downto 0);
ready : out std_logic;
tx : out std_logic);
end myUartTx;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia04/src/guiaDeClase04_01.vhd) y podemos ver una simulación en el siguiente [test bench](/guia04/test_bench/guiaDeClase04_01_tb.vhd)

* **Ejercicio 02**: *Testeo Transmisor UART*

La entidad de corresponde a la siguiente: 

```vhdl
entity myUartTxTest
Port ( clk : in std_logic;
rst : in std_logic;
sw : in std_logic_vector (3 downto 0)
tx : out std_logic);
end myUartTxTest;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia04/src/guiaDeClase04_02.vhd) y podemos ver una simulación en el siguiente [test bench](/guia04/test_bench/guiaDeClase04_02_tb.vhd)


* **Ejercicio 03**: *Receptor UART 9600-8N1*

La entidad de corresponde a la siguiente: 

```vhdl
entity myUartRx
Generic (baudRate : integer := 9600;
sysClk : integer := 50000000;
dataSize : integer := 8);
Port ( clk : in std_logic;
rst : in std_logic;
dataRd : out std_logic;
dataRx : out std_logic_vector (dataSize - 1 downto 0);
rx : in std_logic);
end myUartRx;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia04/src/guiaDeClase04_03.vhd) y podemos ver una simulación en el siguiente [test bench](/guia04/test_bench/guiaDeClase04_03_tb.vhd)

* **Ejercicio 04**: *Testeo Receptor UART*

La entidad de corresponde a la siguiente: 

```vhdl
entity myUartRxTest
Port ( clk : in std_logic;
rst : in std_logic;
led : out std_logic_vector (7 downto 0);
rx : in std_logic);
end myUartRxTest;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia04/src/guiaDeClase04_04.vhd) y podemos ver una simulación en el siguiente [test bench](/guia04/test_bench/guiaDeClase04_04_tb.vhd)


* **Ejercicio 05**: *Módulo UART*

La entidad de corresponde a la siguiente: 

```vhdl
entity myUart
Generic (baudRate : integer := 9600;
sysClk : integer := 50000000;
dataSize : integer := 8);
Port ( clk : in std_logic;
rst : in std_logic;
dataWr : in std_logic;
dataTx : in std_logic_vector (dataSize - 1 downto 0);
ready : out std_logic;
tx : out std_logic;
dataRd : out std_logic;
dataRx : out std_logic_vector (dataSize - 1 downto 0);
rx : in std_logic);
end myUart;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia04/src/guiaDeClase04_05.vhd) y podemos ver una simulación en el siguiente [test bench](/guia04/test_bench/guiaDeClase04_05_tb.vhd)


* **Ejercicio 06**: *Testeo Módulo UART*

La entidad de corresponde a la siguiente: 

```vhdl
entity myUartTest
Port ( clk : in std_logic;
rst : in std_logic;
sw : in std_logic_vector (3 downto 0);
tx : out std_logic;
led : out std_logic_vector (7 downto 0);
rx : in std_logic);
end myUartTest;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia04/src/guiaDeClase04_06.vhd) y podemos ver una simulación en el siguiente [test bench](/guia04/test_bench/guiaDeClase04_06_tb.vhd)
