Proceso Punto_2
	Definir controlI Como Entero;
	Definir controlJ Como Entero;
	controlI <- 10;
	
	Mientras controlI > 0 Hacer
		controlJ <- 1;
		Mientras controlJ <= 10 Hacer
			Si controlJ >= controlI Entonces
				Si controlJ <> 10 Entonces
					Escribir Sin Saltar "*";
				SiNo
					Escribir "*";
				FinSi
			SiNo
				Escribir Sin Saltar " ";
			FinSi
			controlJ <- controlJ + 1;
		FinMientras
		controlI <- controlI - 1;
	FinMientras
	
FinProceso
