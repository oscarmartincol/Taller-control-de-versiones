Proceso Punto_4
	Definir matriz, fila, columna, num Como Entero;
	Dimension matriz[4,5];
	num <- 1;
	// llenado del arreglo y impresión de la matriz inicial
	Escribir "Matriz dada: ";
	Para fila <- 0 Hasta 3 Con Paso 1 Hacer
		Para columna <- 0 Hasta 4 Hacer
			Si num < 10 Entonces
				Si columna <> 4 Entonces
					Escribir Sin Saltar "0", num, " ";
					matriz[fila,columna] <- num;
				SiNo
					Escribir "0", num;
					matriz[fila,columna] <- num;
				FinSi
			SiNo
				Si columna <> 4 Entonces
					Escribir Sin Saltar num, " ";
					matriz[fila,columna] <- num;
				SiNo
					Escribir num;
					matriz[fila,columna] <- num;
				FinSi
			FinSi
			num <- num + 1;
		FinPara
	FinPara
	
	// Impresión de la matriz con modificación de orden
	Escribir "";
	Escribir "Matriz solicitada:";
	Para fila <- 0 Hasta 3 Con Paso 1 Hacer
		Si fila % 2 = 0 Entonces
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
		SiNo
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
		FinSi
	FinPara
FinProceso
