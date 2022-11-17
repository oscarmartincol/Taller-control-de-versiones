// Ejercicio correspondiente al punto 8 del taller número 2 de condicionales organizado en funciones.
// Función para seleccionar el número de porciones de la torta.

SubProceso opcPorciones <- tortaChocolate(cantidadChocolate, cantidadChocolate5, cantidadChocolate10, cantidadChocolate20) 
	Definir opcPorciones Como Entero;
	Si cantidadChocolate > 0 Entonces
		Si cantidadChocolate5 > 0 y cantidadChocolate10 > 0 y cantidadChocolate20 > 0 Entonces
			Escribir "Seleccione el número de porciones de la torta: ";
			Escribir "1. 5 porciones";
			Escribir "2. 10 porciones";
			Escribir "3. 20 porciones";
			Leer opcPorciones;
		SiNo
			Si cantidadChocolate5 > 0 y cantidadChocolate10 > 0 Entonces
				Escribir "Seleccione el número de porciones de la torta: ";
				Escribir "1. 5 porciones";
				Escribir "2. 10 porciones";
				Leer opcPorciones;
			SiNo
				Si cantidadChocolate5 > 0 y cantidadChocolate20 > 0 Entonces
					Escribir "Seleccione el número de porciones de la torta: ";
					Escribir "1. 5 porciones";
					Escribir "3. 20 porciones";
					Leer opcPorciones;
				SiNo
					Si cantidadChocolate10 > 0 y cantidadChocolate20 > 0 Entonces
						Escribir "Seleccione el número de porciones de la torta: ";
						Escribir "2. 10 porciones";
						Escribir "3. 20 porciones";
						Leer opcPorciones;
					SiNo
						Si cantidadChocolate5 > 0 Entonces
							Escribir "tenemos ", cantidadChocolate5, " unidades de torta de 5 porciones";
							opcPorciones <- 1;
						SiNo
							Si cantidadChocolate10 > 0 Entonces
								Escribir "tenemos ", cantidadChocolate10, " unidades de torta de 10 porciones";
								opcPorciones <- 2;
							SiNo
								Si cantidadChocolate20 > 0 Entonces
									Escribir "tenemos ", cantidadChocolate20, " unidades de torta de 20 porciones";
									opcPorciones <- 3;
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	SiNo
		Escribir "No tenemos nunguna torta de chocolate disponible.";
		opcPorciones <- 0;
	FinSi
FinSubProceso

// Función para calcular el precio de las tortas de chocolate del pedido
SubProceso totalCompra <- calcularTotalClienteChocolate(opcPorciones, unidades, cantidadChocolate, cantidadChocolate5, cantidadChocolate10, cantidadChocolate20)
	Definir totalCompra Como Real;
	Segun opcPorciones Hacer
		1:
			Si unidades <= cantidadChocolate5 Entonces
				totalCompra <- unidades * 37900;
			SiNo
				Escribir "Solo tenemos ", cantidadChocolate5, "tortas de 5 porciones disponibles";
				unidades <- cantidadChocolate5;
				totalCompra <- unidades * 37900;
			FinSi
		2:
			Si unidades <= cantidadChocolate10 Entonces
				totalCompra <- unidades * 61800;
			SiNo
				Escribir "Solo tenemos ", cantidadChocolate10, "tortas de 10 porciones disponibles";
				unidades <- cantidadChocolate10;
				totalCompra <- unidades * 61800;
			FinSi
		3:
			Si unidades <= cantidadChocolate20 Entonces
				totalCompra <- unidades * 95300;
			SiNo
				Escribir "Solo tenemos ", cantidadChocolate20, "tortas de 20 porciones disponibles";
				unidades <- cantidadChocolate20;
				totalCompra <- unidades * 95300;
			FinSi
	FinSegun
FinSubProceso

// Función para calcular el precio de las tortas Shortcake del pedido
SubProceso totalCompra <- calcularTotalClienteShortcake(opcPorciones, unidades, cantidadShortcake, cantidadShortcake10, cantidadShortcake20)
	Definir totalCompra Como Real;
	Si opcPorciones = 1 Entonces
		Si unidades <= cantidadShortcake10 Entonces
			totalCompra <- unidades * 88100;
		SiNo
			Escribir "Solo tenemos ", cantidadShortcake10, "tortas de 10 porciones disponibles";
			unidades <- cantidadShortcake10;
			totalCompra <- unidades * 88100;
		FinSi
	SiNo
		Si opcPorciones = 2 Entonces
			Si unidades <= cantidadShortcake20 Entonces
				totalCompra <- unidades * 126600;
			SiNo
				Escribir "Solo tenemos ", cantidadShortcake20, "tortas de 20 porciones disponibles";
				unidades <- cantidadShortcake20;
				totalCompra <- unidades * 126600;
			FinSi
		FinSi
	FinSi
FinSubProceso
// Función para calcular el precio de las tortas de tres leches del pedido
SubProceso totalCompra <- calcularTotalClienteTresLeches(opcPorciones, unidades, cantidadTresLeches, cantidadTresLeches8, cantidadTresLeches12)
	Definir totalCompra Como Real;
	Si opcPorciones = 1 Entonces
		Si unidades <= cantidadTresLeches8 Entonces
			totalCompra <- unidades * 27500;
		SiNo
			Escribir "Solo tenemos ", cantidadTresLeches8, "tortas de 8 porciones disponibles";
			unidades <- cantidadTresLeches8;
			totalCompra <- unidades * 27500;
		FinSi
	SiNo
		Si opcPorciones = 2 Entonces
			Si unidades <= cantidadTresLeches12 Entonces
				totalCompra <- unidades * 74700;
			SiNo
				Escribir "Solo tenemos ", cantidadTresLeches12, "tortas de 12 porciones disponibles";
				unidades <- cantidadTresLeches12;
				totalCompra <- unidades * 74700;
			FinSi
		FinSi
	FinSi
FinSubProceso

SubProceso cantidadDisponible <- actualizarInventario(totalFactura, cantidadPorciones, opcSabor, opcPorciones)
	Definir cantidadDisponible Como Entero;
	Definir unidades Como Entero;
	Segun opcSabor Hacer
		1:
			Segun opcPorciones Hacer
				1:
					unidades <- totalFactura / 37900;
				2:
					unidades <- totalFactura / 61800;
				3:
					unidades <- totalFactura / 95300;
			FinSegun
		2:
			Si opcPorciones = 1 Entonces
				unidades <- totalFactura / 88100;
			SiNo
				Si opcPorciones = 2 Entonces
					unidades <- totalFactura / 126600;
				FinSi
			FinSi
		3:
			Si opcPorciones = 1 Entonces
				unidades <- totalFactura / 27500;
			SiNo
				Si opcPorciones = 2 Entonces
					unidades <- totalFactura / 74700;
				FinSi
			FinSi
	FinSegun
	cantidadDisponible <- cantidadPorciones - unidades;
FinSubProceso

// Función para imprimir el recibo de compra
SubProceso imprimirRecibo(opcSabor, nombre, decoracion, totalCliente)
	Limpiar Pantalla;
	Definir sabor Como Caracter;
	Segun opcSabor Hacer
		1:
			sabor <- "Chocolate";
		2:
			sabor <- "Shortcake";
		3:
			sabor <- "Tres Leches";
	FinSegun
	Escribir "Nombre del cliente: ", nombre;
	Escribir "Sabor de la torta: ", sabor;
	Escribir "Decoración: ", decoracion;
	Escribir "Total a pagar: ", totalCliente;
FinSubProceso

SubProceso opcPorciones <- shortcake(cantidadShortcake, cantidadShortcake10, cantidadShortcake20)
	Definir opcPorciones Como Entero;
	Si cantidadShortcake > 0 Entonces
		Si cantidadShortcake10 > 0 y cantidadShortcake20 > 0 Entonces
			Escribir "Seleccione la opción para el número de porciones de la torta: ";
			Escribir "1. 10 porciones";
			Escribir "2. 20 porciones";
			Leer opcPorciones;
		SiNo
			Si cantidadShortcake10 > 0 Entonces
				opcPorciones <- 1;
				Escribir "Tenemos ", cantidadShortcake10, " unidades de Shortcake de 10 porciones disponibles.";
			SiNo
				Si cantidadShortcake20 > 0 Entonces
					opcPorciones <- 2;
					Escribir "Tenemos ", cantidadShortcake20, " unidades de Shortcake de 20 porciones disponibles.";
				FinSi
			FinSi
		FinSi
	SiNo
		Escribir "No hay tortas Shortcake disponibles.";
		opcPorciones <- 0;
	FinSi
	
FinSubProceso

Subproceso opcPorciones <- tresLeches(cantidadTresLeches, cantidadTresLeches8, cantidadTresLeches12)
	Definir opcPorciones Como Entero;
	Si cantidadTresLeches > 0 Entonces
		Si cantidadTresLeches8 > 0 y cantidadTresLeches12 > 0 Entonces
			Escribir "Seleccione la opción para el número de porciones de la torta: ";
			Escribir "1. 8 porciones";
			Escribir "2. 12 porciones";
			Leer opcPorciones;
		SiNo
			Si cantidadTresLeches8 > 0 Entonces
				opcPorciones <- 1;
				Escribir "Tenemos ", cantidadTresLeches8, " unidades de torta de tres leches de 8 porciones disponibles.";
			SiNo
				Si cantidadTresLeches12 > 0 Entonces
					opcPorciones <- 2;
					Escribir "Tenemos ", cantidadTresLeches12, " unidades de torta de tres leches de 12 porciones disponibles.";
				FinSi
			FinSi
		FinSi
	SiNo
		Escribir "No hay tortas de tres leches disponibles.";
		opcPorciones <- 0;
	FinSi
FinSubProceso

// Función para escoger la decoracion de la torta.
SubProceso decoracion <- escogerDecoracion(opcSabor)
	Definir decoracion Como Caracter;
	Definir opcDecoracion Como Entero;
	Segun opcSabor Hacer
		1:
			Escribir "Seleccione un recubrimiento";
			Escribir "1.Cubierta de crema de chocolate, decorada con hojuelas de chocolate y fresas.";
			Escribir "2.Cubierta con crema de leche, decorada con hojuelas de chocolate y trozos de durazno.";
			Escribir "Otra opción. Sin recubrimiento.";
			Leer opcDecoracion;
			Si opcDecoracion = 1 Entonces
				decoracion <- "Cubierta de crema de chocolate, decorada con hojuelas de chocolate y fresas.";
			SiNo
				Si opcDecoracion = 2 Entonces
					decoracion <- "Cubierta con crema de leche, decorada con hojuelas de chocolate y trozos de durazno.";
				SiNo
					decoracion <- "Sin recubrimiento";
				FinSi
			FinSi
		2:
			Escribir "Seleccione un recubrimiento";
			Escribir "1.Cubierta de crema de leche decorada con macarrones.";
			Escribir "2.Cubierta de crema de leche decorada con merengues.";
			Escribir "Otra opción. Sin recubrimiento.";
			Leer opcDecoracion;
			Si opcDecoracion = 1 Entonces
				decoracion <- "Cubierta de crema de leche decorada con macarrones.";
			SiNo
				Si opcDecoracion = 2 Entonces
					decoracion <- "Cubierta de crema de leche decorada con merengues";
				SiNo
					decoracion <- "Sin recubrimiento.";
				FinSi
			FinSi
		3:
			Escribir "Seleccione un recubrimiento";
			Escribir "1.Decorada con  whip topping y viruta de chocolate blanco.";
			Escribir "2.Crema de leche mezclada con mermelada de maracuyá.";
			Escribir "Otra opción. Sin recubrimiento.";
			Leer opcDecoracion;
			Si opcDecoracion = 1 Entonces
				decoracion <- "Decorada con  whip topping y viruta de chocolate blanco.";
			SiNo
				Si opcDecoracion = 2 Entonces
					decoracion <- "Crema de leche mezclada con mermelada de maracuyá.";
				SiNo
					decoracion <- "Sin recubrimiento";
				FinSi
			FinSi
	FinSegun
	
FinSubProceso

Proceso Pastelero
	Definir opc, opcSabor, opcPorciones, opcDecoracion, unidades Como Entero;
	Definir cantidadChocolate5, cantidadChocolate10, cantidadChocolate20, cantidadChocolate Como Entero;
	Definir cantidadShortcake10, cantidadShortcake20, cantidadShortcake Como Entero;
	Definir cantidadTresLeches8, cantidadTresLeches12, cantidadTresLeches Como Entero;
	Definir totalCliente, totalVenta Como Real;
	Definir nombre, decoracion Como Caracter;
	opc <- 0;
	cantidadChocolate5 <- 3;
	cantidadChocolate10 <- 5;
	cantidadChocolate20 <- 1;
	cantidadChocolate <- cantidadChocolate10 + cantidadChocolate20 + cantidadChocolate5;
	cantidadShortcake10 <- 2;
	cantidadShortcake20 <- 3;
	cantidadShortcake <- cantidadShortcake10 + cantidadShortcake20;
	cantidadTresLeches8 <- 2;
	cantidadTresLeches12 <- 1;
	cantidadTresLeches <- cantidadTresLeches8 + cantidadTresLeches12;
	totalCliente <- 0;
	totalVenta <- 0;
	Mientras opc <> 4 Hacer
		Si opc = 0 Entonces
			Escribir "Seleccione la operación que desea realizar: ";
			Escribir "1. Registrar pedido";
			Escribir "2. Mostrar tortas disponibles";
			Escribir "3. Mostrar ventas del dia";
			Leer opc;
		FinSi
		Segun opc Hacer
			1:// Registrar un pedido
				Escribir "¿Qué torta desea ordenar?";
				Escribir "1. Torta de chocolate";
				Escribir "2. Shortcake";
				Escribir "3. Torta de tres leches";
				leer opcSabor;
				Segun opcSabor Hacer
					1: // Registrar pedido de torta con sabor a chocolate
						opcPorciones <- tortaChocolate(cantidadChocolate, cantidadChocolate5, cantidadChocolate10, cantidadChocolate20);
						Si opcPorciones <> 0 Y opcPorciones < 4 Entonces
							Escribir "¿Cuantas tortas va a llevar?";
							Leer unidades;
							Escribir "Nombre del cliente: ";
							Leer nombre;
							totalCliente <- calcularTotalClienteChocolate(opcPorciones, unidades, cantidadChocolate, cantidadChocolate5, cantidadChocolate10, cantidadChocolate20);
							
							Segun opcPorciones Hacer
								1:
									cantidadChocolate5 <- actualizarInventario(totalCliente, cantidadChocolate5, opcSabor, opcPorciones);
								2:
									cantidadChocolate10 <- actualizarInventario(totalCliente, cantidadChocolate10, opcSabor, opcPorciones);
								3:
									cantidadChocolate20 <- actualizarInventario(totalCliente, cantidadChocolate20, opcSabor, opcPorciones);
							FinSegun
							cantidadChocolate <- cantidadChocolate5 + cantidadChocolate10 + cantidadChocolate20;
							decoracion <- escogerDecoracion(opcSabor);
							Si totalCliente > 0 Entonces
								imprimirRecibo(opcSabor, nombre, decoracion, totalCliente);
								totalVenta <- totalVenta + totalCliente;
							FinSi
							totalCliente <- 0;
							opc <- 0;
							Escribir "Digite enter para volver al menú principal.";
							Esperar Tecla;
							Limpiar Pantalla;
						SiNo
							Escribir "Opción no válida";
							opc <- 0;
							Limpiar Pantalla;
						FinSi
						
					2:// Registrar pedido de torta shortcake
						opcPorciones <- shortcake(cantidadShortcake, cantidadShortcake10, cantidadShortcake20);
						Si opcPorciones <> 0 Y opcPorciones < 3 Entonces
							Escribir "¿Cuantas tortas va a llevar?";
							Leer unidades;
							Escribir "Nombre del cliente: ";
							Leer nombre;
							totalCliente <- calcularTotalClienteShortcake(opcPorciones, unidades, cantidadShortcake, cantidadShortcake10, cantidadShortcake20);
							Si opcPorciones = 1 Entonces
								cantidadShortcake10 <- actualizarInventario(totalCliente, cantidadShortcake10, opcSabor, opcPorciones);
							SiNo
								Si opcPorciones = 2 Entonces
									cantidadShortcake20 <- actualizarInventario(totalCliente, cantidadShortcake20, opcSabor, opcPorciones);
								FinSi
							FinSi
							cantidadShortcake <- cantidadShortcake10 + cantidadShortcake20;
							decoracion <- escogerDecoracion(opcSabor);
							Si totalCliente > 0 Entonces
								imprimirRecibo(opcSabor, nombre, decoracion, totalCliente);
								totalVenta <- totalVenta + totalCliente;
							FinSi
							totalCliente <- 0;
							opc <- 0;
							Escribir "Digite enter para volver al menú principal.";
							Esperar Tecla;
							Limpiar Pantalla;
						Sino 
							Escribir "Opción no válida";
							opc <- 0;
							Limpiar Pantalla;
						FinSi
						
					3:// Registrar pedido de torta de tres leches
						opcPorciones <- tresLeches(cantidadTresLeches, cantidadTresLeches8, cantidadTresLeches12);
						Si opcPorciones <> 0 y opcPorciones < 3 Entonces
							Escribir "¿Cuantas tortas va a llevar?";
							Leer unidades;
							Escribir "Nombre del cliente: ";
							Leer nombre;
							totalCliente <- calcularTotalClienteTresLeches(opcPorciones, unidades, cantidadTresLeches, cantidadTresLeches8, cantidadTresLeches12);
							Si opcPorciones = 1 Entonces
								cantidadTresLeches8 <- actualizarInventario(totalCliente, cantidadTresLeches8, opcSabor, opcPorciones);
							SiNo
								Si opcPorciones = 2 Entonces
									cantidadTresLeches12 <- actualizarInventario(totalCliente, cantidadTresLeches12, opcSabor, opcPorciones);
								FinSi
							FinSi
							cantidadTresLeches <- cantidadTresLeches12 + cantidadTresLeches8;
							decoracion <- escogerDecoracion(opcSabor);
							Si totalCliente > 0 Entonces
								imprimirRecibo(opcSabor, nombre, decoracion, totalCliente);
								totalVenta <- totalVenta + totalCliente;
							FinSi
							totalCliente <- 0;
							opc <- 0;
							Escribir "Digite enter para volver al menú principal.";
							Esperar Tecla;
							Limpiar Pantalla;
						Sino 
							Escribir "Opción no válida";
							opc <- 0;
							Limpiar Pantalla;
						FinSi
					De Otro Modo:
						
				FinSegun
				
			2:// Revisar las tortas disponibles
				Limpiar Pantalla;
				Escribir "Tortas disponibles:";
				Escribir "";
				Si cantidadChocolate > 0 Entonces
					Escribir "Torta de chocolate de cinco pociones:    ", cantidadChocolate5;
					Escribir "Torta de chocolate de diez pociones:     ", cantidadChocolate10;
					Escribir "Torta de chocolate de veinte pociones:   ", cantidadChocolate20;
				FinSi
				Escribir "";
				Si cantidadShortcake > 0 Entonces
					Escribir "Torta Shortcake de diez porciones:      ", cantidadShortcake10;
					Escribir "Torta Shortcake de veinte porciones:    ", cantidadShortcake20;
				FinSi
				Escribir "";
				Si cantidadTresLeches > 0 Entonces
					Escribir "Torta de tres leches de ocho porciones: ", cantidadTresLeches8;
					Escribir "Torta de tres leches de doce porciones: ", cantidadTresLeches12;
				FinSi
				Escribir "";
				Escribir "Oprima enter para volver al menú principal";
				Esperar Tecla;
				opc <- 0;
			3:// Mostrar ventas realizadas en el dia
				Limpiar Pantalla;
				Escribir "Tortas en inventario: ";
				Escribir"";
				Escribir "Torta de chocolate de cinco pociones:    ", cantidadChocolate5;
				Escribir "Torta de chocolate de diez pociones:     ", cantidadChocolate10;
				Escribir "Torta de chocolate de veinte pociones:   ", cantidadChocolate20;
				Escribir "";
				Escribir "Torta Shortcake de diez porciones:      ", cantidadShortcake10;
				Escribir "Torta Shortcake de veinte porciones:    ", cantidadShortcake20;
				Escribir "";
				Escribir "Torta de tres leches de ocho porciones: ", cantidadTresLeches8;
				Escribir "Torta de tres leches de doce porciones: ", cantidadTresLeches12;
				Escribir "";
				
				Escribir "Venta total del dia: $",totalVenta;
				opc <- 4;
			De Otro Modo:
				Escribir "Seleccione una opción válida";
				Esperar 2 Segundos;
				Limpiar Pantalla;
			De Otro Modo:
				Escribir "Seleccione una opción válida";
				Esperar 2 Segundos;
				Limpiar Pantalla;
		FinSegun
	FinMientras
FinProceso
