Proceso Punto_5
	Definir opc Como Entero;
	Definir nombre Como Caracter;
	nombre <- "Nombre no ingresado";
	opc <- 0;
	Mientras opc <> 3 Hacer
		Escribir "Men� de usuario";
		Escribir "1. Captura de nombre";
		Escribir "2. Saludar persona";
		Escribir "3. Salir del sistema";
		Leer opc;
		Segun opc Hacer
			1:
				Limpiar Pantalla;
				Escribir "Ingrese su nombre: ";
				Leer nombre;
			2:
				Limpiar Pantalla;
				Escribir "Bienvenido ", nombre;
			3:
				Escribir "Usted ha salido del sistema.";
			De Otro Modo:
				Escribir "La opci�n seleccionada no es v�lida";
				Limpiar Pantalla;
		FinSegun
	FinMientras
FinProceso
