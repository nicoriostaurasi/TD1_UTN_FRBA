# Guia 01

## Repositorio del TP#01

## Estructura de la carpeta

* ***Capturas***: Se encuentran las capturas del flujo de entrada/salida de las distintas entidades.

* ***Enunciado***: Se encuentra el enunciado del TP a desarrollar.

* ***Src***: Se encuentra el archivo fuente de los distintos TPS.

* ***Test_Bench***: Se encuentra el código fuente de los test bench realizados.

## Acceso rapido de la carpeta

* [Capturas](/guia01/capturas/)

* [Enunciado](/guia01/enunciado/guiaDeClase01.pdf)

* [Src](/guia01/src/)

* [Test_Bench](/guia01/test_bench/)

## Descripción de los Ejercicios

* **Ejercicio 01**: *Multiplexor 4 a 1 instanciando Multiplexores 2 a 1*

La entidad de corresponde a la siguiente: 

```vhdl
entity myMux4_1 is
Port ( a : in std_logic_vector (3 downto 0);
c : in std_logic_vector (1 downto 0);
s : out std_logic);
end myMux4_1;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia01/src/guiaDeClase01_01.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia01/test_bench/guiaDeClase01_01_tb.vhd)

Captura del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia01/capturas/screenguiaDeClase01_01.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 02**: *4 Buffers Tri-State*

La entidad de corresponde a la siguiente: 

```vhdl
entity myTriState4 is
Port ( a : in std_logic_vector (3 downto 0);
c : in std_logic_vector (3 downto 0);
s : out std_logic_vector (3 downto 0));
end myTriState4;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia01/src/guiaDeClase01_02.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia01/test_bench/guiaDeClase01_02_tb.vhd)

Captura del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia01/capturas/screenguiaDeClase01_02.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 03**: *N Buffers Tri-State*

La entidad de corresponde a la siguiente: 
```vhdl
entity myTriStateN is
Generic (N: integer := 4);
Port ( a : in std_logic_vector (N-1 downto 0);
c : in std_logic_vector (N-1 downto 0);
s : out std_logic_vector (N-1 downto 0));
end myTriStateN;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia01/src/guiaDeClase01_03.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia01/test_bench/guiaDeClase01_03_tb.vhd)

Captura del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia01/capturas/screenguiaDeClase01_03.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 04**: *Sumador completo de 4 bits*

La entidad de corresponde a la siguiente: 

```vhdl
entity fullAdder4 is
Port ( a, b: in std_logic_vector (3 downto 0);
ci : in std_logic;
s : out std_logic_vector (3 downto 0);
co: out std_logic);
end fullAdder4;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia01/src/guiaDeClase01_04.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia01/test_bench/guiaDeClase01_04_tb.vhd)

Captura del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia01/capturas/screenguiaDeClase01_04.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 05**: *Sumador completo de N bits*

La entidad de corresponde a la siguiente: 

```vhdl
entity fullAdderN is
Generic (N: integer := 4);
Port ( a, b: in std_logic_vector (N-1 downto 0);
ci : in std_logic;
s : out std_logic_vector (N-1 downto 0);
co: out std_logic);
end fullAdderN;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia01/src/guiaDeClase01_05.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia01/test_bench/guiaDeClase01_05_tb.vhd)

Captura del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia01/capturas/screenguiaDeClase01_05.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 06**: *Conversor de Gray a Binario de N bits*

La entidad de corresponde a la siguiente: 

```vhdl
entity grayBinario is
Generic (N: integer := 4);
Port ( gray: in std_logic_vector (N-1 downto 0);
binario : out std_logic_vector (N-1 downto 0));
end grayBinario;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia01/src/guiaDeClase01_06.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia01/test_bench/guiaDeClase01_06_tb.vhd)

Captura del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia01/capturas/screenguiaDeClase01_06.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 07**: *Conversor de Binario a Gray de N bits*

La entidad de corresponde a la siguiente: 

```vhdl
entity binarioGray is
Generic (N: integer := 4);
Port ( binario: in std_logic_vector (N-1 downto 0);
gray : out std_logic_vector (N-1 downto 0));
end binarioGray;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia01/src/guiaDeClase01_07.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia01/test_bench/guiaDeClase01_07_tb.vhd)

Captura del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia01/capturas/screenguiaDeClase01_07.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 08**: *Conversor Binario a Gray y Gray a Binario*

La entidad de corresponde a la siguiente: 

```vhdl
entity conversiorBinarioGray is
Generic (N: integer := 8);
Port ( binario: in std_logic_vector (N-1 downto 0);
gray : out std_logic_vector (N-1 downto 0);
sel: in std_logic);
end conversiorBinarioGray;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia01/src/guiaDeClase01_08.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia01/test_bench/guiaDeClase01_08_tb.vhd)

Captura del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia01/capturas/screenguiaDeClase01_08.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 09**: *Incrementador Gray*

La entidad de corresponde a la siguiente: 

```vhdl
entity incGray is
Generic (N: integer := 16);
Port ( entrada: in std_logic_vector (N-1 downto 0);
salida : out std_logic_vector (N-1 downto 0));
end incGray;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia01/src/guiaDeClase01_09.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia01/test_bench/guiaDeClase01_09_tb.vhd)

Captura del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia01/capturas/screenguiaDeClase01_09.PNG?raw=true "Logo Title Text 1")
