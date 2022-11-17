//Código correspondiente al punto 3 del taller de arreglos.
// Función para verificar si el número es primo.
SubProceso esPrimo <- verificarNumero(num)
	Definir esPrimo Como Logico;
	Definir j Como Entero;
	j <- 2;
	Mientras j <= num Hacer
		Si num % j = 0 Entonces
			Si num = j Entonces
				esPrimo <- Verdadero;
			SiNo
				esPrimo <- Falso;
				j <- num + 1;
			FinSi
		FinSi
		j <- j + 1;
	FinMientras	
FinSubProceso
//Función para imprimir los números primos almacenados en el arreglo.
SubProceso imprimir(primos)
	Definir i, finFila Como Entero;
	finFila <- 23;
	Para i <- 0 Hasta 167 Con Paso 1 Hacer
		Si i % finFila = 0 Y i <> 0 Entonces
			Si primos[i] < 100 Entonces
				Escribir "| ", primos[i], "|";
			SiNo
				Escribir "|", primos[i], "|";
			FinSi
			finFila <- finFila + 24;
		SiNo
			Si primos[i] < 100 Entonces
				Si primos[i] < 10 Entonces
					Escribir Sin Saltar"| ", primos[i], " |";
				SiNo
					Escribir Sin Saltar"| ", primos[i], "|";
				FinSi
			SiNo
				Escribir Sin Saltar"|", primos[i], "|";
			FinSi
		FinSi
	FinPara
FinSubProceso

Proceso Arreglos3
	Definir primos, i, posicion Como Entero;
	Dimension primos[168]; // Tamaño del arreglo para guardar números primos en el rango de 1 - 1000
	posicion <- 0;
	Para i <- 2 Hasta 1000 Con Paso 1 Hacer
		Si verificarNumero(i) Entonces
			primos[posicion] <- i;
			posicion <- posicion + 1;
		FinSi
	FinPara
	Escribir "**** Números primos entre 1 y 1000 ****";
	imprimir(primos);
FinProceso
