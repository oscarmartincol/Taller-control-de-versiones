// Ejercicio correspondiente al punto 1 del taller 2 organizado en funciones.
SubProceso Validaredad(edad)
	Si edad >= 18 Entonces
		Escribir "Usted es mayor de edad.";
	SiNo
		Escribir "Usted es menor de edad";
	FinSi
FinSubProceso

Proceso ValidacionEdad
	Definir edad Como Entero;
	Escribir"Ingrese su edad: ";
	Leer edad;
	Validaredad(edad);
FinProceso
