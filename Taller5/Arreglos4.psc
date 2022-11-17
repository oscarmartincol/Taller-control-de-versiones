// Código correspondiente al punto 4 del taller de arreglos
// Función Para imprimir la matriz de forma ordenada.
SubProceso numR <- llenarMatriz(Fila, matriz, num)
	Definir columna, numR Como Entero;
	numR <- num;
	Para columna <- 0 Hasta 4 Con Paso 1 Hacer
		matriz[Fila, columna] <- numR; // Almacenar número en el arreglo.
		Si columna <> 4 Entonces
			Si matriz[fila, columna] < 10 Entonces
				Escribir Sin Saltar "0", matriz[fila, columna], " ";
			SiNo
				Escribir Sin Saltar matriz[fila, columna], " ";
			FinSi
		SiNo
			Si matriz[fila, columna] >= 10 Entonces
				Escribir matriz[fila, columna];
			SiNo
				Escribir "0", matriz[fila, columna];
			FinSi
		FinSi
		numR <- numR + 1;
	FinPara
FinSubProceso
//Funciones para imprimir contenido de la matriz ordenado
Subproceso imprimirOrdenado(fila, matriz)
	Definir columna Como Entero;
	Para columna <- 0 Hasta 4 Con Paso 1 Hacer
		Si columna <> 4 Entonces
			Si matriz[fila, columna] < 10 Entonces
				Escribir Sin Saltar "0",matriz[fila, columna], " ";
			SiNo
				Escribir Sin Saltar matriz[fila, columna], " ";
			FinSi
		SiNo
			Si matriz[fila, columna] < 10 Entonces
				Escribir "0",matriz[fila, columna], " ";
			SiNo
				Escribir matriz[fila, columna];
			FinSi
		FinSi
	FinPara
FinSubProceso
// Imprimir contenido de la matriz con orden invertido.
SubProceso imprimirInvertido(fila, matriz)
	Definir columna Como Entero;
	Para columna <- 4 Hasta 0 Con Paso -1 Hacer
		Si columna <> 0 Entonces
			Si matriz[fila, columna] < 10 Entonces
				Escribir Sin Saltar "0",matriz[fila, columna], " ";
			SiNo
				Escribir Sin Saltar matriz[fila, columna], " ";
			FinSi
		SiNo
			Si matriz[fila, columna] < 10 Entonces
				Escribir "0",matriz[fila, columna], " ";
			SiNo
				Escribir matriz[fila, columna];
			FinSi
		FinSi
	FinPara
FinSubProceso
// Función principal
Proceso Arreglos4
	Definir matriz, fila, num Como Entero;
	Dimension matriz[4,5];
	num <- 1;
	Escribir "Matriz dada: ";
	Para fila <- 0 Hasta 3 Con Paso 1 Hacer
		num <- llenarMatriz(Fila, matriz, num);
	FinPara
	Escribir "";
	Escribir "Matriz solicitada:";
	// Ciclo para imprimir matriz solicitada
	Para fila <- 0 Hasta 3 Con Paso 1 Hacer
		Si fila % 2 = 0 Entonces
			imprimirOrdenado(fila, matriz);
		SiNo
			imprimirInvertido(fila, matriz);
		FinSi
	FinPara
	
FinProceso
