// Ejercicio correspondiente al punto 6 del taller 2 organizado en funciones.
SubProceso registrarDatos(opc, nombre)
	Definir marca, cilindraje, modelo, observaciones Como Caracter;
	Escribir "Marca de motocicleta: ";
	Leer marca;
	Escribir "Cilindraje:";
	Leer cilindraje;
	Escribir "Modelo: ";
	Leer modelo;
	Segun opc Hacer
		1:
			Escribir "Observaciones del cliente: ";
			Leer observaciones;
		2:
			Escribir "Novedades sobre la motocicleta: ";
			Leer observaciones;
		3:
			Escribir "Reparaciones realizadas: ";
			Leer observaciones;
		De Otro Modo:
			Escribir "Opción no válida";
	FinSegun
	Limpiar Pantalla;
	imprimirDatos(opc, nombre, marca, cilindraje, modelo, observaciones);
FinSubProceso

SubProceso imprimirDatos(opc, nombre, marca, cilindraje, modelo, observaciones)
	Escribir "          El Maquinista";
	Escribir "Nombre del cliente: ", nombre;
	Escribir "Marca de motocicleta: ", marca;
	Escribir "Cilindraje: ", cilindraje;
	Escribir "Modelo: ", modelo;
	Segun opc Hacer
		1:
			Escribir "Observaciones del cliente: ", observaciones;
		2:
			Escribir "Novedades de salida: ", observaciones;
		3:
			Escribir "Reparaciones: ", observaciones;
	FinSegun
FinSubProceso

Proceso Taller
	Definir nombre Como Caracter;
	Definir opc Como Entero;
	Escribir "          El Maquinista";
	Escribir "Ingrese el nombre del cliente: ";
	Leer nombre;
	Escribir "Seleccione la opción de la operación que desea realizar: ";
	Escribir "1. Registrar ingreso de motocicleta";
	Escribir "2. Registrar novedades de motocicleta";
	Escribir "3. Registrar reparaciones de motocicleta";
	Leer opc;
	Si opc > 0 Y opc < 4 Entonces
		registrarDatos(opc, nombre);
	SiNo
		Escribir "Opción no válida";
	FinSi
	
FinProceso
