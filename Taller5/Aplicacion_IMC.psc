// Ejercicio correspondiente al punto 7 del taller número 2 de condicionales organizado en funciones.
SubProceso imc <- calcularIMC(peso, estatura)
	Definir imc Como Real;
	imc <- peso / (estatura ^ 2);
FinSubProceso

SubProceso estado <- definirEstado(imc)
	Definir estado Como Caracter;
	Si imc <= 18.5 Entonces
		estado <- "Bajo peso";
	SiNo
		Si imc > 18.5 & imc <= 24.9 Entonces
			estado <- "Normal";
		SiNo
			Si imc > 24.9 & imc <= 29.9 Entonces
				estado <- "Sobrepeso";
			SiNo
				estado <- "Obeso";
			FinSi
		FinSi
	FinSi
FinSubProceso

SubProceso imprimirResultado(nombre, peso, estatura, imc, estado)
	Escribir "Secretaria de Salud Municipal";
	Escribir "Nombre del paciente: ", nombre;
	Escribir "Peso en kilogramos: ",peso;
	Escribir "Estatura en metros: ", estatura;
	Escribir "IMC(Índice de masa corporal):", imc;
	Escribir "Clasificación: ", estado;
FinSubProceso

Proceso Aplicacion_IMC
	Definir nombre, estado Como Caracter;
	Definir peso, estatura, imc Como Real;
	Escribir "Secretaria de Salud Municipal";
	Escribir "Ingrese los datos solicitados a continuación: ";
	Escribir "Nombre del paciente: ";
	Leer nombre;
	Escribir "Peso en kilogramos: ";
	Leer peso;
	Escribir "Estatura en metros: ";
	Leer estatura;
	Si estatura > 0 Entonces
		imc <- calcularIMC(peso, estatura);
		estado <- definirEstado(imc);
		Limpiar Pantalla;
		imprimirResultado(nombre, peso, estatura, imc, estado);
	SiNo
		Escribir "La estatura debe ser mayor a 0";
	FinSi
FinProceso
