//Código correspondiente al punto 5 del taller de arreglos.
SubProceso imprimirTabla()
	Escribir "      |                                              COLUMNAS                                             |";
	Escribir " __ __|    0    |    1    |    2    |    3    |    4    |    5    |    6    |    7    |    8    |    9    |";
	Escribir "|  |0 |   1x1   |   2x1   |   3x1   |   4x1   |   5x1   |   6x1   |   7x1   |   8x1   |   9x1   |  10x1   |";
	Escribir "|  |1 |   1x2   |   2x2   |   3x2   |   4x2   |   5x2   |   6x2   |   7x2   |   8x2   |   9x2   |  10x2   |";
	Escribir "|  |2 |   1x3   |   2x3   |   3x3   |   4x3   |   5x3   |   6x3   |   7x3   |   8x3   |   9x3   |  10x3   |";
	Escribir "| F|3 |   1x4   |   2x4   |   3x4   |   4x4   |   5x4   |   6x4   |   7x4   |   8x4   |   9x4   |  10x4   |";
	Escribir "| I|4 |   1x5   |   2x5   |   3x5   |   4x5   |   5x5   |   6x5   |   7x5   |   8x5   |   9x5   |  10x5   |";
	Escribir "| L|5 |   1x6   |   2x6   |   3x6   |   4x6   |   5x6   |   6x6   |   7x6   |   8x6   |   9x6   |  10x6   |";
	Escribir "| A|6 |   1x7   |   2x7   |   3x7   |   4x7   |   5x7   |   6x7   |   7x7   |   8x7   |   9x7   |  10x7   |";
	Escribir "| S|7 |   1x8   |   2x8   |   3x8   |   4x8   |   5x8   |   6x8   |   7x8   |   8x8   |   9x8   |  10x8   |";
	Escribir "|  |8 |   1x9   |   2x9   |   3x9   |   4x9   |   5x9   |   6x9   |   7x9   |   8x9   |   9x9   |  10x9   |";
	Escribir "|  |9 |   1x10  |   2x10  |   3x10  |   4x10  |   5x10  |   6x10  |   7x10  |   8x10  |   9x10  |  10x10  |";
	Escribir "";
FinSubProceso
// Función para calcular los resultados de la tabla.
SubProceso calcularResultados(fila, resultados)
	Definir columna Como Entero;
	Para columna <- 0 Hasta 9 Con Paso 1 Hacer
		resultados[fila, columna] <- (fila + 1) * (columna + 1);
	FinPara
FinSubProceso
// Función para mostrar el resultado solicitado por el usuario.
SubProceso mostrarResultado(fila, columna, resultados)
	Si (fila  > -1 Y fila < 10) Y (columna > -1 Y columna < 10) Entonces
		Escribir "El resultado en la posicion (",fila,",", columna,") es: ", resultados[fila,columna];
	SiNo
		Escribir "Los valores para la fila y la columna deben estar entre 0 y 9";
	FinSi
FinSubProceso
// Función principal
Proceso Arreglos5
	Definir resultados, fila, columna, opc Como Entero;
	Dimension resultados[10,10];
	// Llenar arreglo con los resultados
	Para fila <- 0 Hasta 9 Con Paso 1 Hacer
		calcularResultados(fila, resultados);
	FinPara
	Repetir
		imprimirTabla();
		Escribir "Ingrese la fila: ";
		Leer fila;
		Escribir "Ingrese la columna: ";
		Leer columna;
		mostrarResultado(fila, columna, resultados);
		Escribir "Para salir digite 2, para continuar con otra opción oprime enter";
		Leer opc;
	Hasta Que opc = 2 
	
FinProceso
