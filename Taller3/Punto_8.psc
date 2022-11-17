Proceso Punto_8
	Definir id, nombre, idTemporal Como Caracter;
	Definir nota Como Real;
	Definir aprobado Como Logico;
	Dimension id[8], nombre[8], nota[8], aprobado[8];
	Definir opc, i Como Entero;
	
	// Inicializaci�n de variables
	
	Para  i <- 0 Hasta 7 Con Paso 1 Hacer
		id[i] <- "";
		nombre[i] <- "";
		nota[i] <- -1;
		aprobado[i] <- Falso;
	FinPara
	
	// Ciclo que se repite hasta que el usuario indique que quiere salir.
	Repetir
		Escribir "Seleccione el n�mero de la opci�n que quiere realizar:";
		Escribir "1. Registrar nuevo usuario.";
		Escribir "2. Verificar estado del usuario.";
		Escribir "3. Ingresar nota de un usuario.";
		Escribir "4. Salir del sistema.";
		Leer opc;
		Segun opc Hacer
			1: // Registrar usuarios nuevos verificando que no se han registrado previamente.
				Escribir "Ingrese el n�mero de identificaci�n";
				Leer idTemporal;
				Si idTemporal <> "" Entonces
					Para i <- 0 Hasta 7 Con Paso 1 Hacer
						Si id[i] <> "" Entonces
							Si id[i] = idTemporal Entonces
								Escribir "Ya se encuentra un usuario registrado con n�mero de identificaci�n: ", idTemporal;
								Escribir "Oprima enter para volver al men� principal";
								Esperar Tecla;
								Limpiar Pantalla;
								i <- 8;
							SiNo
								Si i = 7 Entonces
									Escribir "No hay cupos disponibles para nuevos usuarios.";
									Escribir "Oprima enter para volver al men� principal";
									Esperar Tecla;
									Limpiar Pantalla;
								FinSi
							FinSi
						SiNo
							id[i] <- idTemporal;
							Escribir "Ingrese el nombre completo: ";
							Leer nombre[i];
							i <- 8;
							Escribir "Nuevo usuario registrado con �xito";
							Escribir "Oprima enter para volver al men� principal";
							Esperar Tecla;
							Limpiar Pantalla;
						FinSi
					FinPara
				SiNo
					Escribir "Debe ingresar el n�mero de identificaci�n.";
					Esperar 2 Segundos;
					Limpiar Pantalla;
				FinSi
			2:// Opci�n con la que se verifica si el usuario puede iniciar tr�mite para adquirir la licencia de conducci�n
				Escribir "Ingrese el n�mero de identificaci�n: ";
				Leer idTemporal;
				Si idTemporal <> "" Entonces
					Para i <- 0 Hasta 7 Con Paso 1 Hacer
						Si idTemporal = id[i] Entonces
							Limpiar Pantalla;
							Escribir "Identificaci�n: ", id[i];
							Escribir "Nombre: ", nombre[i];
							Escribir Sin Saltar"Nota de la prueba(%): ";
							Si nota[i] > -1 Entonces
								Escribir nota[i];
							SiNo
								Escribir "No se ha presentado";
							FinSi
							Escribir "Aprobado: ", aprobado[i];
							Escribir Sin Saltar "Observaciones: ";
							Si aprobado[i] Entonces
								Escribir "El usuario puede tr�mitar su licencia de conducci�n.";
							SiNo
								Escribir "El usuario no cumple los requisitos para tr�mitar su licencia de conducci�n.";
							FinSi
							i <- 8;
							Escribir "Oprima enter para volver al men� principal.";
							Esperar Tecla;
							Limpiar Pantalla;
						SiNo
							Si i = 7 Entonces
								Escribir "No hay ning�n usuario con n�mero de identificaci�n ", idTemporal;
								Escribir "Oprima enter para volver al men� principal.";
								Esperar Tecla;
								Limpiar Pantalla;
							FinSi
						FinSi
					FinPara
				SiNo
					Escribir "Debe ingresar un n�mero de identificaci�n.";
					Esperar 2 Segundos;
					Limpiar Pantalla;
				FinSi
			3:// Opci�n para ingresar la nota del usuario y verificar si aprobo o no
				Escribir "Ingrese el n�mero de identificaci�n del usuario: ";
				Leer idTemporal;
				Si idTemporal <> "" Entonces
					Para i <- 0 Hasta 7 Con Paso 1 Hacer
						Si id[i] = idTemporal Entonces
							Escribir "Ingrese la nota del usuario en porcentaje(1-100): ";
							Leer nota[i];
							Si nota[i] >= 80 Entonces
								aprobado[i] <- Verdadero;
							SiNo
								aprobado[i] <- Falso;
							FinSi
							i <- 8;
							Escribir "Nota registrada.";
							Escribir "Oprima enter para volver al men� principal";
							Esperar Tecla;
						SiNo
							Si i = 7 O (id[i] = "") Entonces
								Escribir "El n�mero de identificaci�n ingresado no se encuentra registrado.";
								Escribir "Oprima enter para volver al men� principal";
								i <- 8;
								Esperar Tecla;
							FinSi
						FinSi
					FinPara
				SiNo
					Escribir "Debe ingresar un n�mero de identificaci�n.";
					Esperar 2 Segundos;
					Limpiar Pantalla;
				FinSi
			4:// Opci�n con la que el usuario sale del sistema.
				Limpiar Pantalla;
				Escribir "Ha salido del sistema.";
			De Otro Modo:
				Escribir "Seleccione una opci�n v�lida.";
				Esperar 2 Segundos;
				Limpiar Pantalla;
		FinSegun
	Hasta Que opc = 4 
FinProceso
