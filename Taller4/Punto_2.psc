Proceso Punto_2
	Definir nums, i, j Como Entero;
	Dimension nums[20];
	// llenado del arreglo
	Para i<-0 Hasta 19 Con Paso 1 Hacer
		nums[i] <- Azar(100)+1;
	FinPara
	i <- 0;
	j <- 0;
	// Imprimir los n�meros pares
	Escribir Sin Saltar "N�meros pares: ";
	Mientras i < 20 Hacer
		Si nums[i] % 2 = 0 Entonces
			Si j <> 0 Entonces
				Escribir Sin Saltar ", ";
			FinSi
			Escribir Sin Saltar nums[i];
			j <- j+1;
		FinSi
		i <- i+1;
	FinMientras
	Escribir "";
	// imprimir n�meros impares
	i <- 0;
	j <- 0;
	Escribir Sin Saltar"N�meros impares: ";
	Mientras i < 20 Hacer
		Si nums[i] % 2 <> 0 Entonces
			Si j<>0 Entonces
				Escribir Sin Saltar ", ";
			FinSi
			Escribir Sin Saltar nums[i],", ";
		FinSi
		i <- i+1;
	FinMientras
FinProceso
