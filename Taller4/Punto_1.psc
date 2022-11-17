Proceso Punto_1
	Definir vector, i Como Entero;
	Dimension vector[5];
	
	// Llenado del vector 
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir "Escriba el número para la posicion ", i;
		Leer vector[i];
	FinPara
	// Imprimir la información ingresada
	Limpiar Pantalla;
	Para i<- 0 Hasta 4 Con Paso 1 Hacer
		Escribir "[",i,"] = ", vector[i];
	FinPara
FinProceso
