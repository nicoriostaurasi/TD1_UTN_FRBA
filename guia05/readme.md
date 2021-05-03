# Guia 05

## Repositorio del TP#05

## Estructura de la carpeta

* ***Enunciado***: Se encuentra el enunciado del TP a desarrollar.

* ***Src***: Se encuentra el archivo fuente de los distintos TPS.

* ***Test_Bench***: Se encuentra el código fuente de los test bench realizados.

## Acceso rapido de la carpeta

* [Enunciado](/guia05/enunciado/guiaDeClase05.pdf)

* [Src](/guia05/src/)

* [Test_Bench](/guia05/test_bench/)

## Descripción de los Ejercicios

* **Ejercicio 01**: *Unidad Aritmética Lógica Serial (Serial ALU)*

La entidad de corresponde a la siguiente: 

```vhdl
entity mySerialALU is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           tx : out  STD_LOGIC;
           rx : in  STD_LOGIC);
end mySerialALU;
```

En donde podemos encontrar su correspondiente archivo [fuente](/guia05/src/guiaDeClase05_01.vhd) y podemos ver una simulación en el siguiente [test bench](/guia05/test_bench/guiaDeClase05_01_tb.vhd)

