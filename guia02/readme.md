# Guia 02

## Repositorio del TP#02

## Estructura de la carpeta

* ***Capturas***: Se encuentran las capturas del flujo de entrada/salida de las distintas entidades.

* ***Enunciado***: Se encuentra el enunciado del TP a desarrollar.

* ***Src***: Se encuentra el archivo fuente de los distintos TPS.

* ***Test_Bench***: Se encuentra el código fuente de los test bench realizados.

## Acceso rapido de la carpeta

* [Capturas](/guia02/capturas/)

* [Enunciado](/guia02/enunciado/guiaDeClase02.pdf)

* [Src](/guia02/src/)

* [Test_Bench](/guia02/test_bench/)

## Descripción de los Ejercicios

* **Ejercicio 01**: *Flip Flop D con Reset (Sincrónico)*
La entidad de corresponde a la siguiente: 

```vhdl
entity myFFDR is
Port ( clk: in std_logic;
rst: in std_logic;
d: in std_logic;
q : out std_logic);
end myFFDR;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia02/src/guiaDeClase02_01.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia02/test_bench/guiaDeClase02_01_tb.vhd)

Captura del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia02/capturas/screenGuiaDeClase02_01.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 02**: *Flip Flop D con Clear (Asincrónico)*
La entidad de corresponde a la siguiente: 

```vhdl
entity myFFDC is
Port ( clk: in std_logic;
clr: in std_logic;
d: in std_logic;
q : out std_logic);
end myFFDC;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia02/src/guiaDeClase02_02.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia02/test_bench/guiaDeClase02_02_tb.vhd)

Captura del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia02/capturas/screenGuiaDeClase02_02.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 03**: *Flip Flop D con Reset y Enable*
La entidad de corresponde a la siguiente: 

```vhdl
entity myFFDRE is
Port ( clk: in std_logic;
rst: in std_logic;
ena: in std_logic;
d: in std_logic;
q : out std_logic);
end myFFDRE;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia02/src/guiaDeClase02_03.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia02/test_bench/guiaDeClase02_03_tb.vhd)

Captura del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia02/capturas/screenGuiaDeClase02_03.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 04**: *N Flip Flops D con Reset y Enable*
La entidad de corresponde a la siguiente: 

```vhdl
entity myFFDREN is
Generic (N: integer := 4);
Port ( clk: in std_logic;
rst: in std_logic;
ena: in std_logic;
d: in std_logic_vector (N-1 downto 0);
q : out std_logic_vector (N-1 downto 0));
end myFFDREN;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia02/src/guiaDeClase02_04.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia02/test_bench/guiaDeClase02_04_tb.vhd)

Captura #1 del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia02/capturas/screenGuiaDeClase02_04_1.PNG?raw=true "Logo Title Text 1")

Captura #2 del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia02/capturas/screenGuiaDeClase02_04_2.PNG?raw=true "Logo Title Text 1")


* **Ejercicio 05**: *Detector de Flanco Ascendente*
La entidad de corresponde a la siguiente: 

```vhdl
entity myEdgeDetector is
Port ( clk: in std_logic;
rst: in std_logic;
d: in std_logic;
ascendente : out std_logic;
descendente : out std_logic);
end myEdgeDetector;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia02/src/guiaDeClase02_05.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia02/test_bench/guiaDeClase02_05_tb.vhd)

Captura del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia02/capturas/screenGuiaDeClase02_05.PNG?raw=true "Logo Title Text 1")


* **Ejercicio 06**: *Registro de Desplazamiento (SISO) de N bits con Reset*
La entidad de corresponde a la siguiente: 

```vhdl
entity myShiftReg is
Generic (N: integer := 4);
Port ( clk: in std_logic;
rst: in std_logic;
d: in std_logic;
q : out std_logic);
end myShiftReg;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia02/src/guiaDeClase02_06.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia02/test_bench/guiaDeClase02_06_tb.vhd)

Captura #1 del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia02/capturas/screenGuiaDeClase02_06_1.PNG?raw=true "Logo Title Text 1")

Captura #2 del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia02/capturas/screenGuiaDeClase02_06_2.PNG?raw=true "Logo Title Text 1")

Captura del RTL:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia02/capturas/screenRTL_guiaDeClase02_06.PNG?raw=true)

* **Ejercicio 07**: *Registro de Desplazamiento (SISO) de N bits con Reset y Enable*
La entidad de corresponde a la siguiente: 

```vhdl
entity myShiftReg is
Generic (N: integer := 4);
Port ( clk: in std_logic;
rst: in std_logic;
ena: in std_logic;
d: in std_logic;
q : out std_logic);
end myShiftReg;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia02/src/guiaDeClase02_07.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia02/test_bench/guiaDeClase02_07_tb.vhd)

Captura #1 del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia02/capturas/screenGuiaDeClase02_07_1.PNG?raw=true "Logo Title Text 1")

Captura #2 del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia02/capturas/screenGuiaDeClase02_07_2.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 08**: *Registro de Desplazamiento de N bits con Reset, Enable, Carga Paralela y Bidireccional*

La entidad de corresponde a la siguiente: 

```vhdl
entity myShiftReg is
Generic (N: integer := 4);
Port ( clk: in std_logic;rst: in std_logic;
ena: in std_logic;
dir: in std_logic;
dr, dl : in std_logic; -- Entrada serie izquierda y derecha
d: in std_logic_vector (N-1 downto 0); -- entrada paralela
q : out std_logic_vector (N-1 downto 0));
end myShiftReg;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia02/src/guiaDeClase02_08.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia02/test_bench/guiaDeClase02_08_tb.vhd)

Captura #1 del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia02/capturas/screenGuiaDeClase02_08_1.PNG?raw=true "Logo Title Text 1")

Captura #2 del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia02/capturas/screenGuiaDeClase02_08_2.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 09**: *Contador en Anillo de N bits*
La entidad de corresponde a la siguiente: 

```vhdl
entity myRingCnt is
Generic (N: integer := 4);
Port ( clk: in std_logic;
rst: in std_logic;
ena: in std_logic;
q : out std_logic_vector (N-1 downto 0));
end myRingCnt;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia02/src/guiaDeClase02_09.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia02/test_bench/guiaDeClase02_09_tb.vhd)

Captura del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia02/capturas/screenGuiaDeClase02_09.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 10**: *Contador Johnson de N bits*

La entidad de corresponde a la siguiente: 

```vhdl
entity myJohnsonCnt is
Generic (N: integer := 4);
Port ( clk: in std_logic;
rst: in std_logic;
ena: in std_logic;
q : out std_logic_vector (N-1 downto 0));
end myJohnsonCnt;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia02/src/guiaDeClase02_10.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia02/test_bench/guiaDeClase02_10_tb.vhd)

Captura del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia02/capturas/screenGuiaDeClase02_10.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 11**: *Contador Binario ascendente de N bits con Enable*
La entidad de corresponde a la siguiente: 

```vhdl
entity myCnt is
Generic (N: integer := 4);
Port ( clk: in std_logic;
rst: in std_logic;
ena: in std_logic;
q : out std_logic_vector (N-1 downto 0));
end myCnt;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia02/src/guiaDeClase02_11.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia02/test_bench/guiaDeClase02_11_tb.vhd)

Captura del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia02/capturas/screenGuiaDeClase02_11.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 12**: *Contador Binario Direccional de N bits*
La entidad de corresponde a la siguiente: 

```vhdl
entity myCnt is
Generic (N: integer := 4);
Port ( clk: in std_logic;
rst: in std_logic;
ena: in std_logic;
dir: in std_logic;
q : out std_logic_vector (N-1 downto 0));
end myCnt;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia02/src/guiaDeClase02_12.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia02/test_bench/guiaDeClase02_12_tb.vhd)

Captura del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia02/capturas/screenGuiaDeClase02_12.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 14**: *Contador de Flancos Ascendentes*

La entidad de corresponde a la siguiente: 

```vhdl
entity myEdgeCnt is
Generic (N: integer := 4);
Port ( clk: in std_logic;
rst: in std_logic;
d: in std_logic;
q : out std_logic_vector (N-1 downto 0));
end myEdgeCnt;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia02/src/guiaDeClase02_14.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia02/test_bench/guiaDeClase02_14_tb.vhd)

Captura del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia02/capturas/screenGuiaDeClase02_14.PNG?raw=true "Logo Title Text 1")