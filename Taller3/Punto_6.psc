Proceso Punto_6
	Definir nombre, telefono, organizacion, telefonoTemporal Como Caracter;
	Dimension nombre[3],telefono[3], organizacion[3];
	Definir opc, i Como Entero;
	
	Para i<- 0 Hasta 2 Con Paso 1 Hacer
		telefono[i] <- "";
		nombre[i] <- "";
		organizacion[i] <- "";
	FinPara
	
	opc <- 0;
	Mientras opc <> 4 Hacer
		Escribir "Men� principal";
		Escribir "1.A�adir nuevo contacto";
		Escribir "2.Ver contactos almacenados";
		Escribir "3.Eliminar contacto";
		Escribir "4.Salir";
		Leer opc;
		Segun opc Hacer
			1: 
				//Agregar nuevo contacto
				
				Si telefono[2] <> "" Entonces
					Escribir "Agenda llena, debe eliminar un contacto para guardar uno nuevo.";
					telefonoTemporal <- "";
				SiNo
					Escribir "Ingrese el n�mero de tel�fono: ";
					Leer telefonoTemporal;
				FinSi	
				Si telefonoTemporal <> "" Y Longitud(telefonoTemporal) = 10 Entonces
					Para i <- 0 Hasta 2 Con Paso 1 Hacer
						Si telefono[i] <> "" Entonces
							Si telefonoTemporal = telefono[i] Entonces
								Escribir "Ya existe un contacto con ese n�mero de tel�fono";
								Escribir "Datos registrados: ";
								Escribir "Nombre: ", nombre[i], " Tel�fono: ", telefono[i], " Organizac�n: ", organizacion[i];
								i <- 3;
								Escribir "Oprima enter para volver al men� principal.";
								Esperar Tecla;
								Limpiar Pantalla;
							FinSi
						SiNo
							telefono[i] <- telefonoTemporal;
							Escribir "Ingrese el nombre del contacto: ";
							Leer nombre[i];
							Escribir "Ingrese el nombre de la organizaci�n: ";
							Leer organizacion[i];
							Limpiar Pantalla;
							Escribir "Contacto guardado con �xito";
							Escribir "Datos almacenados:";
							Escribir "Nombre: ", nombre[i], " Tel�fono: ", telefono[i], " Organizac�n: ", organizacion[i];
							Escribir "Oprima enter para volver al men� principal.";
							Esperar Tecla;
							Limpiar Pantalla;
							i<-3;
						FinSi
						
					FinPara
				SiNo
					Si telefonoTemporal <> "" Entonces
						Escribir "Debe ingresar un n�mero de contacto v�lido de diez d�gitos.";
						Esperar 3 Segundos;
					FinSi
					Esperar 3 Segundos;
					Limpiar Pantalla;
				FinSi
				
			2:
				// Mostar contactos almacenados
				
				Para i<-0 Hasta 2 Con Paso 1 Hacer
					
					Escribir "Registro ",i+1, ":";
					Si telefono[i] <> "" Entonces
						Escribir "Nombre del contacto: ", nombre[i];
						Escribir "N�mero celular: ", telefono[i];
						Escribir "Organizaci�n:", organizacion[i];
						Escribir "";
					SiNo
						Escribir "Registro vacio.";
						Escribir "";
					FinSi
					
				FinPara
				Escribir "Oprima enter para volver al men� principal.";
				Esperar Tecla;
				Limpiar Pantalla;
			3:
				// Eliminar contacto
				Escribir "Ingrese el n�mero de tel�fono: ";
				Leer telefonoTemporal;
				Si Longitud(telefonoTemporal) = 10 Entonces
					Para i<-0 Hasta 2 Con Paso 1 Hacer
							Si telefonoTemporal = telefono[i] Entonces
								Si i < 2 Y telefono[i+1] <> "" Entonces
									Si i = 0 Entonces
										telefono[0] <- telefono[1];
										telefono[1] <- telefono[2];
										telefono[2] <- "";
										nombre[0] <- nombre[1];
										nombre[1] <- nombre[2];
										nombre[2] <- "";
										organizacion[0] <- organizacion[1];
										organizacion[2] <- organizacion[2];
										organizacion[2] <- "";
									SiNo
										telefono[1] <- telefono[2];
										telefono[2] <- "";
										nombre[1] <- nombre[2];
										nombre[2] <- "";
										organizacion[1] <- organizacion[2];
										organizacion[2] <- "";
									FinSi
								SiNo
									telefono[i] <- "";
								FinSi
								Escribir "Contacto eliminado con �xito";
								Escribir "Oprima enter para volver al men� principal";
								Esperar Tecla;
								Limpiar Pantalla;
								i <- 3;
							SiNo
								Si i = 2 Entonces
									Escribir "El n�mero ingresado no se encuentra en la base de datos";
									Esperar 2 Segundos;
									Limpiar Pantalla;
								FinSi
							FinSi
					FinPara
				SiNo
					Escribir "El n�mero de telefono debe tener diez digitos";
				FinSi
			4:
				Limpiar Pantalla;
				Escribir "Ha salido del sistema";
			De Otro Modo:
				Escribir "Escoja una opci�n v�lida";
				Esperar 2 Segundos;
				Limpiar Pantalla;
		FinSegun
	FinMientras
FinProceso
