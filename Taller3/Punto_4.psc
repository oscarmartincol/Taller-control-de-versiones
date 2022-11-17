Proceso Punto_4
	Definir multiplicando, multiplicador, producto Como Entero;
	Escribir "Ingrese un número para obtener su tabla de multiplicar: ";
	Leer multiplicando;
	Para multiplicador <- 1 Hasta 10 Con Paso 1 Hacer
		producto <- multiplicando * multiplicador;
		Escribir multiplicador, " X ", multiplicando, " = ", producto;
	FinPara
FinProceso
