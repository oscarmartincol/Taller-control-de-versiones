// Código correspondiente al punto 6 del taller 3 de ciclos organizado en funciones.
// Funición para verificar si el número de contacto ya esta almacenado.
SubProceso almacenar <- verificarTelefonoAlmacenado(telefonoTemporal, telefonos)
	Definir almacenar Como Logico;
	Definir i Como Entero;
	Para i <- 0 Hasta 2 Con Paso 1 Hacer
		Si telefonoTemporal = telefonos[i] Entonces
			almacenar <- Verdadero;
			i <- 3;
		SiNo
			almacenar <- Falso;
		FinSi
	FinPara
FinSubProceso

SubProceso dato <- solicitarDato(datoRequerido)
	Definir dato Como Caracter;
	Si datoRequerido = "Nombre" Entonces
		Escribir "Ingrese el nombre del contacto: ";
		Leer dato;
	SiNo
		Si datoRequerido = "Organizacion" Entonces
			Escribir "Ingrese el nombre de la organización: ";
			Leer dato;
		FinSi
	FinSi
FinSubProceso

SubProceso mostrarContactosAlmacenados(telefono, nombre, organizacion)
	Definir i Como Entero;
	Para i <- 0 Hasta 2 Hacer
		Escribir "Registro ",i+1, ":";
		Si telefono[i] <> "" Entonces
			Escribir "Nombre del contacto: ", nombre[i];
			Escribir "Número celular: ", telefono[i];
			Escribir "Organización:", organizacion[i];
			Escribir "";
		SiNo
			Escribir "Registro vacio.";
			Escribir "";
		FinSi
	FinPara
FinSubProceso

SubProceso eliminarContacto(telefonoTemporal, telefono, nombre, organizacion)
	Definir i Como Entero;
	Si Longitud(telefonoTemporal) = 10 Entonces
		Para i <- 0 Hasta 2 Con Paso 1 Hacer
			Si telefono[i] = telefonoTemporal Entonces
				Si i <> 2 Entonces
					Si i = 0 Entonces
						Si telefono[i+1] <> "" Entonces
							telefono[i] <- telefono[i+1];
							nombre[i] <- nombre[i+1];
							organizacion[i] <- organizacion[i+1];
							Si telefono[i+2] <> "" Entonces
								telefono[i+1] <- telefono[i+2];
								nombre[i+1] <- nombre[i+2];
								organizacion[i+1] <- organizacion[i+2];
								telefono[i+2] <- "";
								nombre[i+2] <- "";
								organizacion[i+2] <- "";
							SiNo
								telefono[i+1] <- "";
								nombre[i+1] <- "";
								organizacion[i+1] <- "";
							FinSi
						SiNo
							telefono[i] <- "";
							nombre[i] <- "";
							organizacion[i] <- "";	
						FinSi
					SiNo
						Si telefono[i+1] <> "" Entonces
							telefono[i] <- telefono[i+1];
							nombre[i] <- nombre[i+1];
							organizacion[i] <- organizacion[i+1];
							telefono[i+1] <- "";
							nombre[i+1] <- "";
							organizacion[i+1] <- "";
						SiNo
							telefono[i] <- "";
							nombre[i] <- "";
							organizacion[i] <- "";
						FinSi
					FinSi
				SiNo
					telefono[i] <- "";
					nombre[i] <- "";
					organizacion[i] <- "";
				FinSi
				Escribir "Contacto eliminado con éxito";
				i <- 3;
			SiNo
				Si i = 2 Entonces
					Escribir "El número ingresado no se encuentra en la base de datos";
					Esperar 2 Segundos;
				FinSi
			FinSi
		FinPara
	SiNo
		Escribir "El número de telefono debe tener diez digitos";
	FinSi
FinSubProceso

// Inicializar arreglo vacio.
SubProceso inicializarArreglo(arreglo, tamanio)
	Definir i Como Entero;
	Para i <- 0 Hasta tamanio - 1 Con Paso 1 Hacer
		arreglo[i] <- "";
	FinPara
FinSubProceso

//Proceso principal.
Proceso AlmacenarContactos
	
	Definir nombre, telefono, organizacion, telefonoTemporal Como Caracter;
	Dimension nombre[3],telefono[3], organizacion[3];
	Definir opc,i Como Entero;
	Definir confirmacion Como Logico;
	inicializarArreglo(nombre, 3);
	inicializarArreglo(telefono, 3);
	inicializarArreglo(organizacion, 3);
	
	Repetir
		Escribir "Menú principal";
		Escribir "1.Añadir nuevo contacto";
		Escribir "2.Ver contactos almacenados";
		Escribir "3.Eliminar contacto";
		Escribir "4.Salir";
		Leer opc;
		Segun opc Hacer
			1:// Añadir nuevo contacto
				Si telefono[2] <> "" Entonces
					Escribir "Agenda llena, debe eliminar un contacto para guardar uno nuevo.";
					telefonoTemporal <- "";
				SiNo
					Escribir "Ingrese el número de teléfono: ";
					Leer telefonoTemporal;
					Si telefonoTemporal <> "" Y Longitud(telefonoTemporal) = 10 Entonces
						confirmacion <- verificarTelefonoAlmacenado(telefonoTemporal, telefono);
						Si confirmacion Entonces
							Escribir "Ya existe un contacto con ese número de teléfono";
							Escribir "Oprima enter para volver al menú principal.";
							Esperar Tecla;
							Limpiar Pantalla;
						SiNo
							// Ciclo para guardar datos del contacto
							Para i <- 0 Hasta 2 Con Paso 1 Hacer
								Si telefono[i] = "" Entonces
									telefono[i] <- telefonoTemporal;
									nombre[i] <- solicitarDato("Nombre");
									organizacion[i] <- solicitarDato("Organizacion");
									Limpiar Pantalla;
									Escribir "Contacto guardado con éxito";
									Escribir "Datos almacenados:";
									Escribir "Nombre: ", nombre[i], " Teléfono: ", telefono[i], " Organizacón: ", organizacion[i];
									Escribir "Oprima enter para volver al menú principal.";
									Esperar Tecla;
									Limpiar Pantalla;
									i<-3;
								FinSi
							FinPara
						FinSi
					SiNo
						Escribir "Debe ingresar un número de contacto válido de diez dígitos.";
						Esperar 3 Segundos;
						Limpiar Pantalla;
					FinSi
				FinSi
			2:// Ver contactos almacenados 
				mostrarContactosAlmacenados(telefono, nombre, organizacion);
				Escribir "Oprima enter para volver al menú principal.";
				Esperar Tecla;
				Limpiar Pantalla;
			3:// Eliminar un contacto
				Escribir "Ingrese el número de teléfono: ";
				Leer telefonoTemporal;
				eliminarContacto(telefonoTemporal, telefono, nombre, organizacion);
				Escribir "Oprima enter para volver al menú principal";
				Esperar Tecla;
				Limpiar Pantalla;
			4:// Salir de la aplicación
				Limpiar Pantalla;
				Escribir "Ha salido del sistema";
			De Otro Modo:
				Escribir "Escoja una opción válida";
				Esperar 2 Segundos;
				Limpiar Pantalla;
		FinSegun
	Hasta Que opc = 4 
FinProceso
