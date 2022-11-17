Proceso Punto_6_SinArreglos
	Definir nombre1, nombre2, nombre3, telefono1, telefono2, telefono3, telefonoTemporal, organizacion1, organizacion2, organizacion3 Como Caracter;
	Definir opc, i, numeroRegistro Como Entero;
	
	nombre1 <- "";
	nombre2 <- "";
	nombre3 <- "";
	telefono1 <- "";
	telefono2 <- "";
	telefono3 <- "";
	organizacion1 <- "";
	organizacion2 <- "";
	organizacion3 <- "";
	opc <- 0;
	numeroRegistro <- 0;
	
	Mientras opc <> 4 Hacer
		Escribir "Men� principal";
		Escribir "1.A�adir nuevo contacto";
		Escribir "2.Ver contactos almacenados";
		Escribir "3.Eliminar contacto";
		Escribir "4.Salir";
		Leer opc;
		Segun opc Hacer
			1:// A�adir nuevo contacto verificando que n�mero de telefono no este almacenado.
				Si numeroRegistro < 3 Entonces
					Escribir "Ingrese el n�mero de tel�fono: ";
					Leer telefonoTemporal;
					Si numeroRegistro = 0 Entonces
						Si telefonoTemporal <> "" Y Longitud(telefonoTemporal) = 10 Entonces
							telefono1 <- telefonoTemporal;
							Escribir "Ingrese el nombre del contacto: ";
							Leer nombre1;
							Escribir "Ingrese el nombre de la organizaci�n: ";
							Leer organizacion1;
							Limpiar Pantalla;
							Escribir "Contacto guardado con �xito";
							Escribir "Datos almacenados:";
							Escribir "Nombre: ", nombre1, " Tel�fono: ", telefono1, " Organizac�n: ", organizacion1;
							Escribir "Oprima enter para volver al men� principal.";
							Esperar Tecla;
							Limpiar Pantalla;
							numeroRegistro <- numeroRegistro + 1;
						SiNo
							Escribir "Debe ingresar un n�mero de contacto v�lido de diez d�gitos.";
							Esperar 3 Segundos;
							Limpiar Pantalla;
						FinSi
					SiNo
						Si numeroRegistro = 1 Entonces
							Si telefonoTemporal <> "" Y Longitud(telefonoTemporal) = 10 Entonces
								Si telefono1 <> telefonoTemporal Entonces
									telefono2 <- telefonoTemporal;
									Escribir "Ingrese el nombre del contacto: ";
									Leer nombre2;
									Escribir "Ingrese el nombre de la organizaci�n: ";
									Leer organizacion2;
									Limpiar Pantalla;
									Escribir "Contacto guardado con �xito";
									Escribir "Datos almacenados:";
									Escribir "Nombre: ", nombre2, " Tel�fono: ", telefono2, " Organizac�n: ", organizacion2;
									Escribir "Oprima enter para volver al men� principal.";
									Esperar Tecla;
									Limpiar Pantalla;
									numeroRegistro <- numeroRegistro + 1;
								SiNo
									Escribir "Ya existe un contacto con ese n�mero de tel�fono";
									Escribir "Datos registrados: ";
									Escribir "Nombre: ", nombre1, " Tel�fono: ", telefono1, " Organizac�n: ", organizacion1;
									Escribir "Oprima enter para volver al men� principal.";
									Esperar Tecla;
									Limpiar Pantalla;
								FinSi
							SiNo
								Escribir "Debe ingresar un n�mero de contacto v�lido de diez d�gitos.";
								Esperar 3 Segundos;
								Limpiar Pantalla;
							FinSi
						SiNo
							Si numeroRegistro = 2 Entonces
								Si telefonoTemporal <> "" Y Longitud(telefonoTemporal) = 10 Entonces
									Si telefono1 = telefonoTemporal O telefono2 = telefonoTemporal Entonces
										Escribir "Ya existe un contacto con ese n�mero de tel�fono";
										Escribir "Datos registrados: ";
										Si telefono1 = telefonoTemporal Entonces
											Escribir "Nombre: ", nombre1, " Tel�fono: ", telefono1, " Organizac�n: ", organizacion1;
										SiNo
											Escribir "Nombre: ", nombre2, " Tel�fono: ", telefono2, " Organizac�n: ", organizacion2;
										FinSi
										Escribir "Oprima enter para volver al men� principal.";
										Esperar Tecla;
										Limpiar Pantalla;
									SiNo
										telefono3 <- telefonoTemporal;
										Escribir "Ingrese el nombre del contacto: ";
										Leer nombre3;
										Escribir "Ingrese el nombre de la organizaci�n: ";
										Leer organizacion3;
										Limpiar Pantalla;
										Escribir "Contacto guardado con �xito";
										Escribir "Datos almacenados:";
										Escribir "Nombre: ", nombre3, " Tel�fono: ", telefono3, " Organizac�n: ", organizacion3;
										Escribir "Oprima enter para volver al men� principal.";
										Esperar Tecla;
										Limpiar Pantalla;
										numeroRegistro <- numeroRegistro + 1;
									FinSi
								SiNo
									Escribir "Debe ingresar un n�mero de contacto v�lido de diez d�gitos.";
									Esperar 3 Segundos;
									Limpiar Pantalla;
								FinSi
							FinSi
						FinSi
					FinSi
				Sino
					Escribir "Agenda llena, debe eliminar un contacto para guardar uno nuevo.";
					telefonoTemporal <- "";
				FinSi
			2:// Ver contactos almacenados
				Para i <- 1 Hasta 3 Hacer
					Escribir "Registro ", i, ":";
					Si i = 1 Entonces
						Si telefono1 <> "" Entonces
							Escribir "Nombre del contacto: ", nombre1;
							Escribir "N�mero celular: ", telefono1;
							Escribir "Organizaci�n:", organizacion1;
							Escribir "";
						SiNo
							Escribir "Registro vacio.";
							Escribir "";
						FinSi
					FinSi
					Si i = 2 Entonces
						Si telefono2 <> "" Entonces
							Escribir "Nombre del contacto: ", nombre2;
							Escribir "N�mero celular: ", telefono2;
							Escribir "Organizaci�n:", organizacion2;
							Escribir "";
						SiNo
							Escribir "Registro vacio.";
							Escribir "";
						FinSi
					FinSi
					Si i = 3 Entonces
						Si telefono3 <> "" Entonces
							Escribir "Nombre del contacto: ", nombre3;
							Escribir "N�mero celular: ", telefono3;
							Escribir "Organizaci�n:", organizacion3;
							Escribir "";
						SiNo
							Escribir "Registro vacio.";
							Escribir "";
						FinSi
					FinSi
				FinPara
			3: // Eliminar contactos.
				Escribir "Ingrese el n�mero de tel�fono: ";
				Leer telefonoTemporal;
				Si Longitud(telefonoTemporal) = 10 Entonces
					Si telefono1 = telefonoTemporal Entonces
						Si telefono2 <> "" Entonces
							telefono1 <- telefono2;
							nombre1 <- nombre2;
							organizacion1 <- organizacion2;
							Si telefono3 <> "" Entonces
								telefono2 <- telefono3;
								nombre2 <- nombre3;
								organizacion2 <- organizacion3;
								telefono3 <- "";
								nombre3 <- "";
								organizacion3 <- "";
							SiNo
								telefono2 <- "";
								nombre2 <- "";
								organizacion2 <- "";
							FinSi
						SiNo
							telefono1 <- "";
							nombre1 <- "";
							organizacion1 <- "";
						FinSi
						Escribir "Contacto eliminado con �xito";
						Escribir "Oprima enter para volver al men� principal";
						numeroRegistro <- numeroRegistro - 1;
						Esperar Tecla;
						Limpiar Pantalla;
					SiNo
						Si telefono2 = telefonoTemporal Entonces
							Si telefono3 <> "" Entonces
								telefono2 <- telefono3;
								nombre2 <- nombre3;
								organizacion2 <- organizacion3;
								telefono3 <- "";
								nombre3 <- "";
								organizacion3 <- "";
							SiNo
								telefono2 <- "";
								nombre2 <- "";
								organizacion2 <- "";
							FinSi
							Escribir "Contacto eliminado con �xito";
							Escribir "Oprima enter para volver al men� principal";
							numeroRegistro <- numeroRegistro - 1;
							Esperar Tecla;
							Limpiar Pantalla;
						SiNo
							Si telefono3 = telefonoTemporal Entonces
								telefono3 <- "";
								nombre3 <- "";
								organizacion3 <- "";
								Escribir "Contacto eliminado con �xito";
								Escribir "Oprima enter para volver al men� principal";
								numeroRegistro <- numeroRegistro - 1;
								Esperar Tecla;
								Limpiar Pantalla;
							SiNo
								Escribir "El n�mero ingresado no se encuentra almacenado.";
								Esperar 2 Segundos;
								Limpiar Pantalla;
							FinSi
						FinSi
					FinSi
				SiNo
					Escribir "Debe ingresar un n�mero de contacto v�lido de diez d�gitos.";
					Esperar 3 Segundos;
					Limpiar Pantalla;
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
