# Guia 03

## Repositorio del TP#03

## Estructura de la carpeta

* ***Capturas***: Se encuentran las capturas del flujo de entrada/salida de las distintas entidades.

* ***Enunciado***: Se encuentra el enunciado del TP a desarrollar.

* ***Src***: Se encuentra el archivo fuente de los distintos TPS.

* ***Test_Bench***: Se encuentra el código fuente de los test bench realizados.

## Acceso rapido de la carpeta

* [Capturas](/guia03/capturas/)

* [Enunciado](/guia03/enunciado/guiaDeClase03.pdf)

* [Src](/guia03/src/)

* [Test_Bench](/guia03/test_bench/)

## Descripción de los Ejercicios

* **Ejercicio 01**: *Contador de M y M/2 pulsos de clock*

La entidad de corresponde a la siguiente: 

```vhdl
entity myCnt is
Generic (M : integer := 100);
Port ( clk : in std_logic;
rst : in std_logic;
ena : in std_logic;
salidaM_2 : out std_logic;
salidaM : out std_logic);
end myCnt;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia03/src/guiaDeClase03_01.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia02/test_bench/guiaDeClase03_01_tb.vhd)

Captura del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia03/capturas/screenGuiaDeClase03_01.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 02**: *Flip Flop T*

La entidad de corresponde a la siguiente: 

```vhdl
entity FFT is
Port ( clk : in std_logic;
rst : in std_logic;
t : in std_logic;
q : out std_logic);
end FFT;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia03/src/guiaDeClase03_02.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia02/test_bench/guiaDeClase03_02_tb.vhd)

Captura del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia03/capturas/screenGuiaDeClase03_02.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 03**: *Blinky LED 1 segundo*

La entidad de corresponde a la siguiente: 

```vhdl
entity parpadeo1S is
Port ( clk : in std_logic;
rst : in std_logic;
led : out std_logic);
end parpadeo1S;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia03/src/guiaDeClase03_03.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia02/test_bench/guiaDeClase03_03_tb.vhd)

Captura del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia03/capturas/screenGuiaDeClase03_03.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 04**: *Contador en anillo cada 1 segundo*

La entidad de corresponde a la siguiente: 

```vhdl
entity parpadeo1S_8Bits is
Port ( clk : in std_logic;
rst : in std_logic;
led : out std_logic_vector (7 downto 0));
end parpadeo1S_8Bits;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia03/src/guiaDeClase03_04.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia02/test_bench/guiaDeClase03_04_tb.vhd)

Captura del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia03/capturas/screenGuiaDeClase03_04.PNG?raw=true "Logo Title Text 1")  

* **Ejercicio 05 (previo)**: *Contador en anillo con Sentido Configurable*

La entidad de corresponde a la siguiente: 

```vhdl
entity myRingCnt2 is
	 generic(N:integer:=4);
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           ena : in  STD_LOGIC;
			  dir	: in  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (N-1 downto 0));
end myRingCnt2;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia03/src/guiaDeClase03_05_a.vhd) 

* **Ejercicio 05**: *Contador en anillo cada 1 segundo con Sentido Cofigurable*

La entidad de corresponde a la siguiente: 

```vhdl
entity parpadeo1S_8Bits is
Port ( clk : in std_logic;
rst : in std_logic;
btn: in std_logic;
led : out std_logic_vector (7 downto 0));
end parpadeo1S_8Bits;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia03/src/guiaDeClase03_05.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia02/test_bench/guiaDeClase03_05_tb.vhd)

Captura del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia03/capturas/screenGuiaDeClase03_05.PNG?raw=true "Logo Title Text 1")