// Ejercicio correspondiente al punto 2 del taller 2 organizado en funciones.
SubProceso Validaredad(edad)
	Si edad >= 18 Entonces
		Escribir "Usted es ya una persona adulta";
	SiNo
		Escribir "Usted aun es un niño(a)";
	FinSi
FinSubProceso

Proceso VerificarEtapa
	Definir edad Como Entero;
	Escribir"Ingrese su edad: ";
	Leer edad;
	Validaredad(edad);
FinProceso
