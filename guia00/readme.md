# Guia 00

## Repositorio del TP#0

## Estructura de la carpeta

* ***Capturas***: Se encuentran las capturas del flujo de entrada/salida de las distintas entidades.

* ***Enunciado***: Se encuentra el enunciado del TP a desarrollar.

* ***Src***: Se encuentra el archivo fuente de los distintos TPS.

* ***Test_Bench***: Se encuentra el código fuente de los test bench realizados.

## Acceso rapido de la carpeta

* [Capturas](/guia00/capturas/)

* [Enunciado](/guia00/enunciado/guiaDeClase00.pdf)

* [Src](/guia00/src/)

* [Test_Bench](/guia00/test_bench/)

## Descripción de los Ejercicios

* **Ejercicio 01**: *Compuerta AND de 2 entradas*

La entidad de corresponde a la siguiente: 

```vhdl
entity myAnd2 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end myAnd2;
```
En donde podemos encontrar su correspondiente archivo [fuente](/guia00/src/guiaDeClase00_01.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia00/test_bench/guiaDeClase00_01_tb.vhd)

Captura del Test Bench:
![alt text]( https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia00/capturas/screenguiaDeClase00_01_tb.png?raw=true "Logo Title Text 1")

* **Ejercicio 02**: *Compuerta AND de 4 entradas*

La entidad de corresponde a la siguiente: 

```vhdl
entity myAnd4 is
Port ( a : in std_logic_vector (3 downto 0);
c : out std_logic);
end myAnd4;

```
En donde podemos encontrar su correspondiente archivo [fuente](/guia00/src/guiaDeClase00_02.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia00/test_bench/guiaDeClase00_02_tb.vhd)

Captura del Test Bench:
![alt text]( https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia00/capturas/screenguiaDeClase00_02_tb.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 03**: *Sumador completo de 1 bit*

La entidad de corresponde a la siguiente: 

```vhdl
entity fullAdder is
Port ( a, b, ci : in std_logic;
co, s : out std_logic);
end fullAdder;
```
En donde podemos encontrar su correspondiente archivo [fuente](/guia00/src/guiaDeClase00_03.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia00/test_bench/guiaDeClase00_03_tb.vhd)

Captura del Test Bench:
![alt text]( https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia00/capturas/screenguiaDeClase00_03_tb.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 04**: *Generador de Paridad de 4 bits*

La entidad de corresponde a la siguiente: 

```vhdl
entity paridadPar4 is
Port ( a : in std_logic_vector (3 downto 0);
p : out std_logic);
end paridadPar4;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia00/src/guiaDeClase00_04.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia00/test_bench/guiaDeClase00_04_tb.vhd)

Captura del Test Bench:
![alt text]( https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia00/capturas/screenguiaDeClase00_04_tb.PNG?raw=true "Logo Title Text 1")


* **Ejercicio 05**: *Multiplexor de 2 vías*

La entidad de corresponde a la siguiente: 

```vhdl
entity myMux is
Port ( a : in std_logic_vector (1 downto 0);
c : in std_logic;
s : out std_logic);
end myMux;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia00/src/guiaDeClase00_05.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia00/test_bench/guiaDeClase00_05_tb.vhd)

Captura del Test Bench:
![alt text]( https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia00/capturas/screenguiaDeClase00_05_tb.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 06**: *Buffer Tri-State*

La entidad de corresponde a la siguiente: 

```vhdl
entity myTriState is
Port ( entrada : in std_logic;
control : in std_logic;
salida : out std_logic);
end myTriState;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia00/src/guiaDeClase00_06.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia00/test_bench/guiaDeClase00_06_tb.vhd)

Captura del Test Bench:
![alt text]( https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia00/capturas/screenguiaDeClase00_06_tb.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 07**: *8 Buffers Tri-State*

La entidad de corresponde a la siguiente: 

```vhdl
entity myTriState8 is
Port ( entrada : in std_logic_vector (7 downto 0);
control : in std_logic;
salida : out std_logic_vector (7 downto 0));
end myTriState8;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia00/src/guiaDeClase00_07.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia00/test_bench/guiaDeClase00_07_tb.vhd)

Captura del Test Bench:
![alt text]( https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia00/capturas/screenguiaDeClase00_07.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 08**: *Comparador de Magnitudes de 8 bits*

La entidad de corresponde a la siguiente: 

```vhdl
entity myMagCmp8 is
Port ( a, b : in std_logic_vector (7 downto 0);
igual, aMayorB, bMayorA : out std_logic);
end myMagCmp8;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia00/src/guiaDeClase00_08.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia00/test_bench/guiaDeClase00_08_tb.vhd)

Captura del Test Bench:
![alt text]( https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia00/capturas/screenguiaDeClase00_08_tb.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 09**: *Decodificador BCD a 7 segmentos*\

La entidad de corresponde a la siguiente: 

```vhdl
entity myDeco7Seg is
Port ( entrada : in std_logic_vector (3 downto 0);
a, b, c, d, e, f, g: out std_logic);
end myDeco7Seg;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia00/src/guiaDeClase00_09.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia00/test_bench/guiaDeClase00_09_tb.vhd)

Captura del Test Bench:
![alt text]( https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia00/capturas/screenguiaDeClase00_09_tb.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 10**: *Decodificador 3 a 8*\

La entidad de corresponde a la siguiente: 

```vhdl
entity myDeco3_8 is
Port ( entrada : in std_logic_vector (2 downto 0);
salida : out std_logic_vector (7 downto 0));
end myDeco3_8;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia00/src/guiaDeClase00_10.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia00/test_bench/guiaDeClase00_10_tb.vhd)

Captura del Test Bench:
![alt text]( https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia00/capturas/screenguiaDeClase00_10_tb.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 11**: *Codificador 4 a 2*\

La entidad de corresponde a la siguiente: 

```vhdl
entity myCoder4_2 is
Port ( entrada : in std_logic_vector (3 downto 0);
salida : out std_logic_vector (1 downto 0));
end myCoder4_2;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia00/src/guiaDeClase00_11.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia00/test_bench/guiaDeClase00_11_tb.vhd)

Captura del Test Bench:
![alt text]( https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia00/capturas/screenguiaDeClase00_11_tb.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 12**: *Divisor de Magnitudes de 8 bits x1 x2 x4 y x8*\

La entidad de corresponde a la siguiente: 

```vhdl
entity myDivMag8 is
Port ( entrada : in std_logic_vector (7 downto 0);
div: in std_logic_vector (1 downto 0);
salida : out std_logic_vector (7 downto 0));
end myDivMag8;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia00/src/guiaDeClase00_12.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia00/test_bench/guiaDeClase00_12_tb.vhd)

Captura del Test Bench:
![alt text]( https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia00/capturas/screenguiaDeClase00_12_tb.PNG?raw=true "Logo Title Text 1")


* **Ejercicio 13**: *Divisor de Numeros Signados de 8 bits representados en CA2 x1 x2 x4 y x8*\

La entidad de corresponde a la siguiente: 

```vhdl
entity myDiv8 is
Port ( entrada : in std_logic_vector (7 downto 0);
div: in std_logic_vector (1 downto 0);
salida : out std_logic_vector (7 downto 0));
end myDiv8;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia00/src/guiaDeClase00_13.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia00/test_bench/guiaDeClase00_13_tb.vhd)

Captura del Test Bench:
![alt text]( https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia00/capturas/screenguiaDeClase00_13_tb.PNG?raw=true "Logo Title Text 1")

