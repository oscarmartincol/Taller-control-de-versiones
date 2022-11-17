// Código correspondiente al punto 8 del taller 3 de ciclos, organizado en funciones.

// Función para inicializar valores de arreglos.
SubProceso inicializarArreglos(ids, nombres, notas, aprobados, tamanio)
	Definir i Como Entero;
	Para i <- 0 Hasta tamanio - 1 Con Paso 1 Hacer
		ids[i] <- "";
		nombres[i] <- "";
		notas[i] <- -1;
		aprobados[i] <- Falso;
	FinPara
FinSubProceso
// Función para registrar usuarios verificando si hay cupo disponible y que no se ha registrado previamente.
SubProceso registrarUsuario(idTemporal, ids, nombres, tamanio)
	Definir i Como Entero;
	Para i <- 0 Hasta tamanio -1 Con Paso 1 Hacer
		Si ids[i] <> "" Entonces
			Si ids[i] = idTemporal Entonces
				Escribir "Ya se encuentra un usuario registrado con número de identificación: ", idTemporal;
				i <- 8;
			SiNo
				Si i = 7 Entonces
					Escribir "No hay cupos disponibles para nuevos usuarios.";
				FinSi
			FinSi
		SiNo
			ids[i] <- idTemporal;
			Escribir "Ingrese el nombre completo: ";
			Leer nombres[i];
			i <- 8;
			Escribir "Nuevo usuario registrado con éxito";
		FinSi
	FinPara
FinSubProceso
// Función para verificar si el usuario ya puede comenzar el trámite de su licencia
SubProceso verificarEstado(idTemporal, ids, nombres, notas, aprobados, tamanio)
	Definir i Como Entero;
	Para i <- 0 Hasta tamanio - 1 Con Paso 1 Hacer
		Si idTemporal = ids[i] Entonces
			Limpiar Pantalla;
			Escribir "Identificación: ", ids[i];
			Escribir "Nombre: ", nombres[i];
			Escribir Sin Saltar"Nota de la prueba(%): ";
			Si notas[i] > -1 Entonces
				Escribir notas[i];
			SiNo
				Escribir "No se ha presentado";
			FinSi
			Escribir "Aprobado: ", aprobados[i];
			Escribir Sin Saltar "Observaciones: ";
			Si aprobados[i] Entonces
				Escribir "El usuario puede trámitar su licencia de conducción.";
			SiNo
				Escribir "El usuario no cumple los requisitos para trámitar su licencia de conducción.";
			FinSi
			i <- 8;
		Sino
			Si i = 7 Entonces
				Escribir "No hay ningún usuario con número de identificación ", idTemporal;
			FinSi
		FinSi
	FinPara
FinSubProceso
// Función para ingresar la nota del examen y definir si aprobo o no.
Subproceso ingresarNota(idTemporal, ids, notas, aprobados, tamanio)
	Definir i Como Entero;
	Para i <- 0 Hasta tamanio - 1 Con Paso 1 Hacer
		Si ids[i] = idTemporal Entonces
			Escribir "Ingrese la nota del usuario en porcentaje(1-100): ";
			Leer notas[i];
			Si notas[i] >= 80 Entonces
				aprobados[i] <- Verdadero;
			SiNo
				aprobados[i] <- Falso;
			FinSi
			i <- 8;
			Escribir "Nota registrada.";
		SiNo
			Si i = 7 O (ids[i] = "") Entonces
				Escribir "El número de identificación ingresado no se encuentra registrado.";
				i <- 8;
			FinSi
		FinSi
	FinPara
FinSubProceso
// Proceso principal.
Proceso EscuelaAutomovilistica
	Definir ids, nombres, idTemporal Como Caracter;
	Definir notas Como Real;
	Definir aprobados Como Logico;
	Dimension ids[8], nombres[8], notas[8], aprobados[8];
	Definir opc Como Entero;
	inicializarArreglos(ids, nombres, notas, aprobados, 8);
	
	// Ciclo para controlar la ejecución del programa.
	Repetir
		Escribir "Seleccione el número de la opción que quiere realizar:";
		Escribir "1. Registrar nuevo usuario.";
		Escribir "2. Verificar estado del usuario.";
		Escribir "3. Ingresar nota de un usuario.";
		Escribir "4. Salir del sistema.";
		Leer opc;
		Segun opc Hacer
			1:// Opción para registrar un nuevo estudiante.
				Escribir "Ingrese el número de identificación";
				Leer idTemporal;
				Si idTemporal <> "" Entonces
					registrarUsuario(idTemporal, ids, nombres, 8);
					Escribir "Oprima enter para volver al menú principal";
					Esperar Tecla;
					Limpiar Pantalla;
				SiNo
					Escribir "Debe ingresar el número de identificación.";
					Esperar 2 Segundos;
					Limpiar Pantalla;
				FinSi
			2:// Opción para verificar si ya se puede tramitar la licencia.
				Escribir "Ingrese el número de identificación: ";
				Leer idTemporal;
				Si idTemporal <> "" Entonces
					verificarEstado(idTemporal, ids, nombres, notas, aprobados, 8);
					Escribir "Oprima enter para volver al menú principal.";
					Esperar Tecla;
					Limpiar Pantalla;
				SiNo
					Escribir "Debe ingresar un número de identificación.";
					Esperar 2 Segundos;
					Limpiar Pantalla;
				FinSi
			3:// Opción para ingresar la nota del examen y definir si aprobo o no.
				Escribir "Ingrese el número de identificación del usuario: ";
				Leer idTemporal;
				Si idTemporal <> "" Entonces
					ingresarNota(idTemporal, ids, notas, aprobados, 8);
					Escribir "Oprima enter para volver al menú principal";
					Esperar Tecla;
				SiNo
					Escribir "Debe ingresar un número de identificación.";
					Esperar 2 Segundos;
					Limpiar Pantalla;
				FinSi
			4:// Opción para salir.
				Limpiar Pantalla;
				Escribir "Ha salido del sistema.";
			De Otro Modo:
				Escribir "Seleccione una opción válida.";
				Esperar 2 Segundos;
				Limpiar Pantalla;
		FinSegun
	Hasta Que opc = 4 
FinProceso
