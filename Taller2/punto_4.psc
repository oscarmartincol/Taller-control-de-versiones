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
		Escribir "Seleccione el número de la operación que desea realizar hoy, de las que se encuentran a continuación: ";
		Escribir "1. Alquilar una película";
		Escribir "2. Consultar películas disponibles.";
		Escribir "3. Recibir película en la videotienda.";
		Escribir "4. Salir";
		Leer opcion;
		Segun opcion Hacer
			1:
				Escribir "¿Qué película desea alquilar?";
				Escribir "1. El señor de los anillos: La comunidad del anillo";
				Escribir "2. El Hobbit: La desolación de Smaug";
				Escribir "3. Transformers: El lado oscuro de la luna";
				Escribir "4. Batman VS Superman";
				Escribir "5. Avengers: Endgame";
				Leer opc;
				Escribir "Recuerde que todas nuestras películas son reconmendadas para personas mayores de 12 años";
				Escribir "¿Cual es su edad?";
				Leer edad;
				Si edad > 12 Entonces
					Segun opc Hacer
						1:
							Si copiasESA > 0 Entonces
								Escribir "El señor de los anillos: la comunidad del anillo, ha sido agregado a la cesta";
								numeroPeliculas <- numeroPeliculas + 1;
								copiasESA <- copiasESA - 1;
							SiNo
								Escribir "No hay copias disponibles de la película seleccionada";
							FinSi
						2:
							Si copiasEH > 0 Entonces
								Escribir "El Hobbit: La desolación de Smaug, ha sido agregado a la cesta";
								numeroPeliculas <- numeroPeliculas + 1;
								copiasEH <- copiasEH - 1;
							SiNo
								Escribir "No hay copias disponibles de la película seleccionada";
							FinSi
						3:
							Si copiasT > 0 Entonces
								Escribir "Transformers: El lado oscuro de la luna, ha sido agregado a la cesta";
								numeroPeliculas <- numeroPeliculas + 1;
								copiasT <- copiasT - 1;
							SiNo
								Escribir "No hay copias disponibles de la película seleccionada";
							FinSi
						4:
							Si copiasBvsS > 0 Entonces
								Escribir "Batman VS Superman, ha sido agregado a la cesta";
								numeroPeliculas <- numeroPeliculas + 1;
								copiasBvsS <- copiasBvsS - 1;
							SiNo
								Escribir "No hay copias disponibles de la película seleccionada";
							FinSi
						5:
							Si copiasAv > 0 Entonces
								Escribir "Avengers: Endgame, ha sido agregado a la cesta";
								numeroPeliculas <- numeroPeliculas + 1;
								copiasAV <- copiasAV - 1;
							SiNo
								Escribir "No hay copias disponibles de la película seleccionada";
							FinSi
						De Otro Modo:
							Escribir "Elección no válida";
					FinSegun
				FinSi
			2:
				Escribir "nombre de película                                copias disponibles";
				Escribir "El señor de los anillos: La comunidad del anillo        ", copiasESA;
				Escribir "El Hobbit: La desolación de Smaug                       ", copiasEH;
				Escribir "Transformers: El lado oscuro de la luna                 ", copiasT;
				Escribir "Batman VS Superman                                      ", copiasBvsS;
				Escribir "Avengers: Endgame                                       ", copiasAV;
				Escribir "Oprima una tecla para volver al menú inicial";
				Esperar Tecla;
			3:
				Escribir "Sus películas estan listas, esperamos que disfrute un buen rato de entretenimiento.";
				Escribir "oprima 1 si desea hacer observaciones";
				Escribir "oprima cualquier otra tecla para continuar";
				Leer opc;
				Si opc = 1 Entonces
					Escribir "Digite sus observaciones a continuación: ";
					Leer observaciones;
				FinSi
			4: 
				Escribir "Generando ticket de la operación";
			De Otro Modo:
				Escribir "La opción seleccionada no es válida";
		FinSegun
		
		Limpiar Pantalla;
	FinMientras
	
	Escribir "********** Video Tienda El Porvenir **********";
	Escribir "Nombre del cliente: ", nombre;
	Escribir "Numero de películas alquiladas: ", numeroPeliculas;
	Escribir "Valor a pagar $", numeroPeliculas*3000;
	Escribir "Observaciones: ", observaciones;
	Escribir "        Gracias por su visita. ";
	
FinProceso
