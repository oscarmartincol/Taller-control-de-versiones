Proceso punto_4
	Definir nombre Como Caracter;
	Definir opcion Como Entero;
	Definir opc Como Entero;
	Definir edad Como Entero;
	Definir copiasESA Como Entero;
	Definir copiasEH Como Entero;
	Definir copiasT Como Entero;
	Definir copiasBvsS Como Entero;
	Definir copiasAv Como Entero;
	Definir numeroPeliculas Como Entero;
	Definir observaciones Como Caracter;
	copiasESA <- 2;
	copiasEH <- 3;
	copiasT <- 0;
	copiasBvsS <- 1;
	copiasAv <- 3;
	numeroPeliculas <- 0;
	
	Escribir "Digite su nombre completo";
	Leer nombre;
	Escribir "********** Video Tienda El Porvenir **********";
	Escribir "Bienvenido ", nombre;
	opcion <- 0;
	
	Mientras opcion <> 4 Hacer
		Escribir "Seleccione el n�mero de la operaci�n que desea realizar hoy, de las que se encuentran a continuaci�n: ";
		Escribir "1. Alquilar una pel�cula";
		Escribir "2. Consultar pel�culas disponibles.";
		Escribir "3. Recibir pel�cula en la videotienda.";
		Escribir "4. Salir";
		Leer opcion;
		Segun opcion Hacer
			1:
				Escribir "�Qu� pel�cula desea alquilar?";
				Escribir "1. El se�or de los anillos: La comunidad del anillo";
				Escribir "2. El Hobbit: La desolaci�n de Smaug";
				Escribir "3. Transformers: El lado oscuro de la luna";
				Escribir "4. Batman VS Superman";
				Escribir "5. Avengers: Endgame";
				Leer opc;
				Escribir "Recuerde que todas nuestras pel�culas son reconmendadas para personas mayores de 12 a�os";
				Escribir "�Cual es su edad?";
				Leer edad;
				Si edad > 12 Entonces
					Segun opc Hacer
						1:
							Si copiasESA > 0 Entonces
								Escribir "El se�or de los anillos: la comunidad del anillo, ha sido agregado a la cesta";
								numeroPeliculas <- numeroPeliculas + 1;
								copiasESA <- copiasESA - 1;
							SiNo
								Escribir "No hay copias disponibles de la pel�cula seleccionada";
							FinSi
						2:
							Si copiasEH > 0 Entonces
								Escribir "El Hobbit: La desolaci�n de Smaug, ha sido agregado a la cesta";
								numeroPeliculas <- numeroPeliculas + 1;
								copiasEH <- copiasEH - 1;
							SiNo
								Escribir "No hay copias disponibles de la pel�cula seleccionada";
							FinSi
						3:
							Si copiasT > 0 Entonces
								Escribir "Transformers: El lado oscuro de la luna, ha sido agregado a la cesta";
								numeroPeliculas <- numeroPeliculas + 1;
								copiasT <- copiasT - 1;
							SiNo
								Escribir "No hay copias disponibles de la pel�cula seleccionada";
							FinSi
						4:
							Si copiasBvsS > 0 Entonces
								Escribir "Batman VS Superman, ha sido agregado a la cesta";
								numeroPeliculas <- numeroPeliculas + 1;
								copiasBvsS <- copiasBvsS - 1;
							SiNo
								Escribir "No hay copias disponibles de la pel�cula seleccionada";
							FinSi
						5:
							Si copiasAv > 0 Entonces
								Escribir "Avengers: Endgame, ha sido agregado a la cesta";
								numeroPeliculas <- numeroPeliculas + 1;
								copiasAV <- copiasAV - 1;
							SiNo
								Escribir "No hay copias disponibles de la pel�cula seleccionada";
							FinSi
						De Otro Modo:
							Escribir "Elecci�n no v�lida";
					FinSegun
				FinSi
			2:
				Escribir "nombre de pel�cula                                copias disponibles";
				Escribir "El se�or de los anillos: La comunidad del anillo        ", copiasESA;
				Escribir "El Hobbit: La desolaci�n de Smaug                       ", copiasEH;
				Escribir "Transformers: El lado oscuro de la luna                 ", copiasT;
				Escribir "Batman VS Superman                                      ", copiasBvsS;
				Escribir "Avengers: Endgame                                       ", copiasAV;
				Escribir "Oprima una tecla para volver al men� inicial";
				Esperar Tecla;
			3:
				Escribir "Sus pel�culas estan listas, esperamos que disfrute un buen rato de entretenimiento.";
				Escribir "oprima 1 si desea hacer observaciones";
				Escribir "oprima cualquier otra tecla para continuar";
				Leer opc;
				Si opc = 1 Entonces
					Escribir "Digite sus observaciones a continuaci�n: ";
					Leer observaciones;
				FinSi
			4: 
				Escribir "Generando ticket de la operaci�n";
			De Otro Modo:
				Escribir "La opci�n seleccionada no es v�lida";
		FinSegun
		
		Limpiar Pantalla;
	FinMientras
	
	Escribir "********** Video Tienda El Porvenir **********";
	Escribir "Nombre del cliente: ", nombre;
	Escribir "Numero de pel�culas alquiladas: ", numeroPeliculas;
	Escribir "Valor a pagar $", numeroPeliculas*3000;
	Escribir "Observaciones: ", observaciones;
	Escribir "        Gracias por su visita. ";
	
FinProceso
