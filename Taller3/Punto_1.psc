Proceso Punto_1
	Definir controlI Como Entero;
	Definir controlJ Como Entero;
	Definir filas Como Entero;
	filas <- 10;
	Para controlI <-1 Hasta filas Con Paso 1 Hacer
		Para controlJ <-1 Hasta controlI Con Paso 1 Hacer
			Si controlI = controlJ Entonces
				Escribir "*";
			SiNo
				Escribir Sin Saltar "*";
			FinSi
		FinPara
	FinPara
FinProceso
