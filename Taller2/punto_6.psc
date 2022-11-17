Proceso punto_6
	Definir nombre Como Caracter;
	Definir marca Como Caracter;
	Definir cilindraje Como Caracter;
	Definir modelo Como Caracter;
	Definir observaciones Como Caracter;
	Definir opc Como Entero;
	Escribir "          El Maquinista";
	Escribir "Ingrese el nombre del cliente: ";
	Leer nombre;
	Escribir "Seleccione la opción de la operación que desea realizar: ";
	Escribir "1. Registrar ingreso de motocicleta";
	Escribir "2. Registrar novedades de motocicleta";
	Escribir "3. Registrar reparaciones de motocicleta";
	Leer opc;
	Segun opc Hacer
		1:
			Escribir "Marca de motocicleta: ";
			Leer marca;
			Escribir "Cilindraje:";
			Leer cilindraje;
			Escribir "Modelo: ";
			Leer modelo;
			Escribir "Observaciones del cliente: ";
			Leer observaciones;
		2:
			Escribir "Marca de motocicleta: ";
			Leer marca;
			Escribir "Cilindraje:";
			Leer cilindraje;
			Escribir "Modelo: ";
			Leer modelo;
			Escribir "Novedades sobre la motocicleta: ";
			Leer observaciones;
		3:
			Escribir "Marca de motocicleta: ";
			Leer marca;
			Escribir "Cilindraje:";
			Leer cilindraje;
			Escribir "Modelo: ";
			Leer modelo;
			Escribir "Reparaciones realizadas: ";
			Leer observaciones;
		De Otro Modo:
			Escribir "Opción no válida";
	FinSegun
	Segun opc Hacer
		1:
			Escribir "          El Maquinista";
			Escribir "Motoclicleta ingresada con exito";
			Escribir "Nombre del cliente: ", nombre;
			Escribir "Marca de motocicleta: ", marca;
			Escribir "Cilindraje: ", cilindraje;
			Escribir "Modelo: ", modelo;
			Escribir "Observaciones del cliente: ", observaciones;
		2:
			Escribir "          El Maquinista";
			Escribir "Novedades de motocicleta";
			Escribir "Nombre del cliente: ", nombre;
			Escribir "Marca de motocicleta: ", marca;
			Escribir "Cilindraje: ", cilindraje;
			Escribir "Modelo: ", modelo;
			Escribir "Novedades de salida: ", observaciones;
		3:
			Escribir "          El Maquinista";
			Escribir "Salida de motocicleta";
			Escribir "Nombre del cliente: ", nombre;
			Escribir "Marca de motocicleta: ", marca;
			Escribir "Cilindraje: ", cilindraje;
			Escribir "Modelo: ", modelo;
			Escribir "Reparaciones: ", observaciones;
	FinSegun
FinProceso
