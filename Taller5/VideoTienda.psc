// Ejercicio correspondiente al punto 4 del taller 2 organizado en funciones.
SubProceso opcion <- imprimirMenu()
	Definir opcion Como Entero;
	Escribir "Seleccione el número de la operación que desea realizar hoy, de las que se encuentran a continuación: ";
	Escribir "1. Alquilar una película";
	Escribir "2. Consultar películas disponibles.";
	Escribir "3. Recibir película en la videotienda.";
	Escribir "4. Salir";
	Leer opcion;
FinSubProceso

SubProceso opcion <- seleccionPelicula()
	Definir opcion Como Entero;
	Escribir "¿Qué película desea alquilar?";
	Escribir "1. El señor de los anillos: La comunidad del anillo";
	Escribir "2. El Hobbit: La desolación de Smaug";
	Escribir "3. Transformers: El lado oscuro de la luna";
	Escribir "4. Batman VS Superman";
	Escribir "5. Avengers: Endgame";
	Leer opcion;
FinSubProceso

SubProceso ListaPeliculas(copiasESA, copiasEH, copiasT, copiasBvsS, copiasAV)
	Escribir "nombre de película                                copias disponibles";
	Escribir "El señor de los anillos: La comunidad del anillo        ", copiasESA;
	Escribir "El Hobbit: La desolación de Smaug                       ", copiasEH;
	Escribir "Transformers: El lado oscuro de la luna                 ", copiasT;
	Escribir "Batman VS Superman                                      ", copiasBvsS;
	Escribir "Avengers: Endgame                                       ", copiasAV;
	Escribir "Oprima una tecla para volver al menú inicial";
	Esperar Tecla;
FinSubProceso

SubProceso generarRecibo(nombre, numeroPeliculas, observaciones)
	Escribir "********** Video Tienda El Porvenir **********";
	Escribir "Nombre del cliente: ", nombre;
	Escribir "Numero de películas alquiladas: ", numeroPeliculas;
	Escribir "Valor a pagar $", numeroPeliculas*3000;
	Escribir "Observaciones: ", observaciones;
	Escribir "        Gracias por su visita. ";
FinSubProceso

Proceso VideoTienda
	Definir nombre Como Caracter;
	Definir edad, opc, opcion, seleccion Como Entero;
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
	opcion <- 0;
	observaciones <- "";
	Escribir "Digite su nombre completo";
	Leer nombre;
	Escribir "********** Video Tienda El Porvenir **********";
	Escribir "Bienvenido ", nombre;
	
	Mientras opcion <> 4 Hacer
		opcion <- imprimirMenu();
		Segun opcion Hacer
			1:
				Limpiar Pantalla;
				seleccion <- seleccionPelicula();
				Segun seleccion Hacer
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
			2:
				ListaPeliculas(copiasESA, copiasEH, copiasT, copiasBvsS, copiasAV);
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
		
	FinMientras
	generarRecibo(nombre, numeroPeliculas, observaciones);
FinProceso
