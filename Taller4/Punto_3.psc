Proceso Punto_3
	Definir primos, posicion, divisor, i Como Entero;
	Dimension primos[168];
	posicion <- 0;
	// llenar arreglo con números primos entre 1 y 1000
	Para i <- 0 Hasta 1000 Con paso 1 Hacer
		divisor <- 2;
		Mientras divisor <= i Hacer
			Si i % divisor = 0 Entonces
				Si i = divisor Entonces
					primos[posicion] <- i;
					posicion <- posicion + 1;
				FinSi
				divisor <- i + 1;
			SiNo
				divisor <- divisor + 1;
			FinSi
		FinMientras
	FinPara
	
	// Imprimir los números primos almacenados en el arreglo
	Escribir "**** Números primos entre 1 y 1000 ****";
	Para i <- 0 Hasta 167 Con Paso 1 Hacer
		Si i % 23 <> 0 O i = 0 Entonces
			Escribir Sin Saltar "|", primos[i],"|";
		SiNo
			Escribir "|", primos[i], "|";
		FinSi
	FinPara
	
FinProceso
