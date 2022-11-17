Proceso Punto_3
	Definir i, j, k, l Como Entero;
	i <- 0;
	j <- 0;
	k <- 0;
	l <- 1;
	Repetir
		Si i <> 10 Entonces
			Repetir
				Escribir Sin Saltar " ";
				j <- j + 1;
			Hasta Que j >= 10 - i
		FinSi
		
		Repetir
			Si k = 2*i Entonces
				Escribir "*";
			SiNo
				Escribir Sin Saltar "*";
			FinSi			
			k <- k + 1;
		Hasta Que k > 2 * i
		i <- i + 1;
		j <- 0;
		k <- 0;
	Hasta Que i > 10
	
	i <- 1;
	
	Repetir
		Repetir
			Escribir Sin Saltar " ";
			j <- j + 1;
		Hasta Que j >= 10 - i
		
		Repetir
			Si k = 2*i Entonces
				Escribir "*";
			SiNo
				Escribir Sin Saltar "*";
			FinSi			
			k <- k + 1;
		Hasta Que k > 2*i
		Si i <= 2 Entonces
			j <- 0;
			k <- 0;
		FinSi
		l <- l + 1;
		Si l=1 o l=2 Entonces
			i <- 1;
		SiNo
			Si l = 3 Entonces
				i <- 2;
			SiNo
				i <- 3;
			FinSi
		FinSi
	Hasta Que l > 4
FinProceso
