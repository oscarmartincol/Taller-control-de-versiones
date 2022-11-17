Proceso punto_7
	Definir nombre Como Caracter;
	Definir peso Como Real;
	Definir estatura Como Real;
	Definir estado Como Caracter;
	Definir imc Como Real;
	
	Escribir "Secretaria de Salud Municipal";
	Escribir "Nombre del paciente: ";
	Leer nombre;
	Escribir "Peso en kilogramos: ";
	Leer peso;
	Escribir "Estatura en metros: ";
	Leer estatura;
	si estatura > 0 Entonces
		imc <- peso / (estatura ^ 2);
		Si imc <= 18.5 Entonces
			estado <- "Bajo peso";
		SiNo
			Si imc > 18.5 && imc <= 24.9 Entonces
				estado <- "Normal";
			SiNo
				Si imc > 24.9 && imc <= 29.9 Entonces
					estado <- "Sobrepeso";
				SiNo
					estado <- "Obeso";
				FinSi
			FinSi
		FinSi
		Limpiar Pantalla;
		Escribir "Secretaria de Salud Municipal";
		Escribir "Nombre del paciente: ", nombre;
		Escribir "Peso en kilogramos: ",peso;
		Escribir "Estatura en metros: ", estatura;
		Escribir "IMC(Índice de masa corporal):", imc;
		Escribir "Clasificación: ", estado;
	SiNo
		Escribir "La estatura debe ser mayor a cero.";
	FinSi
	
FinProceso
