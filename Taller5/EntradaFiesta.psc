// Ejercicio correspondiente al punto 3 del taller 2 organizado en funciones.
SubProceso ImprimirDatos(nombre, apellidos, edad)
	Si edad >= 18 Entonces
		Escribir nombre, " ", apellidos, " usted es mayor de edad, por lo tanto, puede entrar a la fiesta.";
	SiNo
		Escribir nombre, " ", apellidos, " usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devuélvase a su casa.";
	FinSi
FinSubProceso

Proceso EntradaFiesta
	Definir nombre Como Caracter;
	Definir apellidos Como Caracter;
	Definir edad Como Entero;
	Escribir "¿Cuál es su nombre?";
	Leer nombre;
	Escribir "¿Cuales son sus apellidos?";
	Leer apellidos;
	Escribir "Cuál es su edad";
	Leer edad;
	
	ImprimirDatos(nombre, apellidos, edad);
FinProceso
