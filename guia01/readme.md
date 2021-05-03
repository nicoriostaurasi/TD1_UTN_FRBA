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
entity myAnd2 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end myAnd2;
```
En donde podemos encontrar su correspondiente archivo [fuente](/guia01/src/guiaDeClase00_01.vhd) y podemos ver una pequeña simulación en el siguiente [test bench](/guia01/test_bench/guiaDeClase00_01_tb.vhd)

Captura del Test Bench:
![alt text](https://github.com/nicoriostaurasi/TD1_UTN_FRBA/blob/master/guia01/capturas/screenguiaDeClase01_01.PNG?raw=true "Logo Title Text 1")

* **Ejercicio 02**: *4 Buffers Tri-State*

* **Ejercicio 03**: *N Buffers Tri-State*

* **Ejercicio 04**: *Sumador completo de 4 bits*

* **Ejercicio 05**: *Sumador completo de N bits*

* **Ejercicio 06**: *Conversor de Gray a Binario de N bits*

* **Ejercicio 07**: *Conversor de Binario a Gray de N bits*

* **Ejercicio 08**: *Conversor Binario a Gray y Gray a Binario*

* **Ejercicio 09**: *Incrementador Gray*
