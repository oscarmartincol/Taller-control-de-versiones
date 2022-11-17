Proceso punto_8
	Definir opc, opcSabor, opcPorciones, opcDecoracion, unidades Como Entero;
	Definir precioChocolate5, precioChocolate10, precioChocolate20 Como Real;
	Definir cantidadChocolate5, cantidadChocolate10, cantidadChocolate20, cantidadChocolate Como Entero;
	Definir precioShortcake10, precioShortcake20 Como Real;
	Definir cantidadShortcake10, cantidadShortcake20, cantidadShortcake Como Entero;
	Definir precioTresLeches8, precioTresLeches12 Como Real;
	Definir cantidadTresLeches8, cantidadTresLeches12, cantidadTresLeches Como Entero;
	Definir totalCliente, totalVenta Como Real;
	Definir nombre, decoracion Como Caracter;
	opc <- 0;
	precioChocolate5 <- 37900;
	precioChocolate10 <- 61800;
	precioChocolate20 <- 95300;
	cantidadChocolate5 <- 3;
	cantidadChocolate10 <- 5;
	cantidadChocolate20 <- 1;
	cantidadChocolate <- cantidadChocolate10 + cantidadChocolate20 + cantidadChocolate5;
	precioShortcake10 <- 88100;
	precioShortcake20 <- 126600;
	cantidadShortcake10 <- 2;
	cantidadShortcake20 <- 3;
	cantidadShortcake <- cantidadShortcake10 + cantidadShortcake20;
	precioTresLeches8 <- 27500;
	precioTresLeches12 <- 74700;
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
			1:
				Escribir "¿Qué torta desea ordenar?";
				Escribir "1. Torta de chocolate";
				Escribir "2. Shortcake";
				Escribir "3. Torta de tres leches";
				Leer opcSabor;
				Segun opcSabor Hacer
					1:
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
							Escribir "¿Cuantas tortas va a llevar?";
							Leer unidades;
							Escribir "Nombre del cliente: ";
							Leer nombre;
							Segun opcPorciones Hacer
								1:
									Si unidades <= cantidadChocolate5 Entonces
										totalCliente <- precioChocolate5 * unidades;
										totalVenta <- totalVenta + totalCliente;
										cantidadChocolate5 <- cantidadChocolate5 - unidades;
										cantidadChocolate <- cantidadChocolate - unidades;
									SiNo
										Escribir "Solo tenemos ", cantidadChocolate5, "tortas de 5 porciones disponibles";
										unidades <- cantidadChocolate5;
										totalCliente <- precioChocolate5 * unidades;
										totalVenta <- totalVenta + totalCliente;
										cantidadChocolate5 <- 0;
										cantidadChocolate <- cantidadChocolate - unidades;
									FinSi
									
								2:
									Si unidades <= cantidadChocolate10 Entonces
										totalCliente <- precioChocolate10 * unidades;
										totalVenta <- totalVenta + totalCliente;
										cantidadChocolate10 <- cantidadChocolate10 - unidades;
										cantidadChocolate <- cantidadChocolate - unidades;
									SiNo
										Escribir "Solo tenemos ", cantidadChocolate10, "tortas de 5 porciones disponibles";
										unidades <- cantidadChocolate10;
										totalCliente <- precioChocolate10 * unidades;
										totalVenta <- totalVenta + totalCliente;
										cantidadChocolate10 <- 0;
										cantidadChocolate <- cantidadChocolate - unidades;
									FinSi
								3:
									Si unidades <= cantidadChocolate20 Entonces
										totalCliente <- precioChocolate20 * unidades;
										totalVenta <- totalVenta + totalCliente;
										cantidadChocolate20 <- cantidadChocolate20 - unidades;
										cantidadChocolate <- cantidadChocolate - unidades;
									SiNo
										Escribir "Solo tenemos ", cantidadChocolate20, "tortas de 5 porciones disponibles";
										unidades <- cantidadChocolate20;
										totalCliente <- precioChocolate20 * unidades;
										totalVenta <- totalVenta + totalCliente;
										cantidadChocolate10 <- 0;
										cantidadChocolate <- cantidadChocolate - unidades;
									FinSi
								De Otro Modo:
									Escribir "Opción no valida";
							FinSegun
							Si totalCliente > 0 Entonces
								Escribir "Seleccione un recubrimiento";
								Escribir "1.Cubierta de crema de chocolate, decorada con hojuelas de chocolate y fresas.";
								Escribir "2.Cubierta con crema de leche, decorada con hojuelas de chocolate y trozos de durazno.";
								Escribir "Otra opción. Sin recubrimiento.";
								Leer opcDecoracion;
								Segun opcDecoracion Hacer
									1:
										Limpiar Pantalla;
										decoracion <- "Cubierta de crema de chocolate, decorada con hojuelas de chocolate y fresas.";
										Escribir "Nombre del cliente: ", nombre;
										Escribir "Sabor de la torta: Chocolate";
										Escribir "Decoración: ", decoracion;
										Escribir "Total a pagar: ", totalCliente;
									2:
										Limpiar Pantalla;
										decoracion <- "Cubierta con crema de leche, decorada con hojuelas de chocolate y trozos de durazno.";
										Escribir "Nombre del cliente: ", nombre;
										Escribir "Sabor de la torta: Chocolate";
										Escribir "Decoración: ", decoracion;
										Escribir "Total a pagar: ", totalCliente;
									De Otro Modo:
										Limpiar Pantalla;
										decoracion <- "Sin recubrimiento";
										Escribir "Nombre del cliente: ", nombre;
										Escribir "Sabor de la torta: Chocolate";
										Escribir "Decoración: ", decoracion;
										Escribir "Total a pagar: ", totalCliente;
								FinSegun
							FinSi
							
						SiNo
							Escribir "No tenemos nunguna torta de chocolate disponible.";
						FinSi
						totalCliente <- 0;
						opc <- 0;
						Escribir "Digite enter para volver al menú principal.";
						Esperar Tecla;
						Limpiar Pantalla;
					2:
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
							Escribir "¿Cuantas tortas va a llevar?";
							Leer unidades;
							Escribir "Nombre del cliente: ";
							Leer nombre;
							Segun opcPorciones Hacer
								1:
									Si unidades <= cantidadShortcake10 Entonces
										totalCliente <- precioShortcake10 * unidades;
										totalVenta <- totalVenta + totalCliente;
										cantidadShortcake10 <- cantidadShortcake10 - unidades;
										cantidadShortcake <- cantidadShortcake - unidades;
									SiNo
										Escribir "Solo tenemos ", cantidadShortcake10, "tortas de 10 porciones disponibles";
										unidades <- cantidadShortcake10;
										totalCliente <- precioShortcake10 * unidades;
										totalVenta <- totalVenta + totalCliente;
										cantidadShortcake10 <- 0;
										cantidadShortcake <- cantidadShortcake - unidades;
									FinSi
								2:
									Si unidades <= cantidadShortcake20 Entonces
										totalCliente <- precioShortcake20 * unidades;
										totalVenta <- totalVenta + totalCliente;
										cantidadShortcake20 <- cantidadShortcake20 - unidades;
										cantidadShortcake <- cantidadShortcake - unidades;
									SiNo
										Escribir "Solo tenemos ", cantidadShortcake20, "tortas de 20 porciones disponibles";
										unidades <- cantidadShortcake20;
										totalCliente <- precioShortcake20 * unidades;
										totalVenta <- totalVenta + totalCliente;
										cantidadShortcake20 <- 0;
										cantidadShortcake <- cantidadShortcake - unidades;
									FinSi
								De Otro Modo:
									Escribir "Opción no valida";
							FinSegun
							Si totalCliente > 0 Entonces
								Escribir "Seleccione un recubrimiento";
								Escribir "1.Cubierta de crema de leche decorada con macarrones.";
								Escribir "2.Cubierta de crema de leche decorada con merengues.";
								Escribir "Otra opción. Sin recubrimiento.";
								Leer opcDecoracion;
								Segun opcDecoracion Hacer
									1:
										Limpiar Pantalla;
										decoracion <- "Cubierta de crema de leche decorada con macarrones.";
										Escribir "Nombre del cliente: ", nombre;
										Escribir "Sabor de la torta: Shortcake";
										Escribir "Decoración: ", decoracion;
										Escribir "Total a pagar: ", totalCliente;
									2:
										Limpiar Pantalla;
										decoracion <- "Cubierta de crema de leche decorada con merengues.";
										Escribir "Nombre del cliente: ", nombre;
										Escribir "Sabor de la torta: Shortcake";
										Escribir "Decoración: ", decoracion;
										Escribir "Total a pagar: ", totalCliente;
									De Otro Modo:
										Limpiar Pantalla;
										decoracion <- "Sin recubrimiento";
										Escribir "Nombre del cliente: ", nombre;
										Escribir "Sabor de la torta: Shortcake";
										Escribir "Decoración: ", decoracion;
										Escribir "Total a pagar: ", totalCliente;
								FinSegun
							FinSi
						SiNo
							Escribir "No hay ninguna torta Shortcake disponible";
						FinSi
						totalCliente <- 0;
						opc <- 0;
						Escribir "Digite enter para volver al menú principal.";
						Esperar Tecla;
						Limpiar Pantalla;
					3:
						Si cantidadTresLeches > 0 Entonces
							Si cantidadTresLeches8 > 0 y cantidadTresLeches12 > 0 Entonces
								Escribir "Seleccione la opción para el número de porciones de la torta: ";
								Escribir "1. 8 porciones";
								Escribir "2. 12 porciones";
								Leer opcPorciones;
							SiNo
								Si cantidadTresLeches8 > 0 Entonces
									opcPorciones <- 1;
									Escribir "Tenemos ", cantidadTresLeches8, " tortas de ocho porciones.";
								SiNo
									Si cantidadTresLeches12 > 0 Entonces
										opcPorciones <- 2;
										Escribir "Tenemos ", cantidadTresLeches12, " tortas de doce porciones.";
									FinSi
								FinSi
							FinSi
							Escribir "¿Cuantas tortas va a llevar?";
							Leer unidades;
							Escribir "Nombre del cliente: ";
							Leer nombre;
							Segun opcPorciones Hacer
								1:
									Si unidades <= cantidadTresLeches8 Entonces
										totalCliente <- precioTresLeches8 * unidades;
										totalVenta <- totalVenta + totalCliente;
										cantidadTresLeches8 <- cantidadTresLeches8 - unidades;
										cantidadTresLeches <- cantidadTresLeches - unidades;
									SiNo
										Escribir "Solo tenemos ", cantidadTresLeches8, "tortas de ocho porciones disponibles";
										unidades <- cantidadTresLeches8;
										totalCliente <- precioTresLeches8 * unidades;
										totalVenta <- totalVenta + totalCliente;
										cantidadTresLeches8 <- 0;
										cantidadTresLeches <- cantidadTresLeches - unidades;
									FinSi
								2:
									Si unidades <= cantidadTresLeches12 Entonces
										totalCliente <- precioTresLeches12 * unidades;
										totalVenta <- totalVenta + totalCliente;
										cantidadTresLeches12 <- cantidadTresLeches12 - unidades;
										cantidadTresLeches <- cantidadTresLeches - unidades;
									SiNo
										Escribir "Solo tenemos ", cantidadTresLeches12, "tortas de 12 porciones disponibles";
										unidades <- cantidadTresLeches12;
										totalCliente <- precioTresLeches12 * unidades;
										totalVenta <- totalVenta + totalCliente;
										cantidadTresLeches12 <- 0;
										cantidadTresLeches <- cantidadTresLeches - unidades;
									FinSi
								De Otro Modo:
									Escribir "Selección no válida";
							FinSegun
							Si totalCliente > 0 Entonces
								Escribir "Seleccione un recubrimiento";
								Escribir "1.Decorada con  whip topping y viruta de chocolate blanco.";
								Escribir "2.Crema de leche mezclada con mermelada de maracuyá.";
								Escribir "Otra opción. Sin recubrimiento.";
								Leer opcDecoracion;
								Segun opcDecoracion Hacer
									1:
										Limpiar Pantalla;
										decoracion <- "Decorada con  whip topping y viruta de chocolate blanco.";
										Escribir "Nombre del cliente: ", nombre;
										Escribir "Sabor de la torta: Tres leches.";
										Escribir "Decoración: ", decoracion;
										Escribir "Total a pagar: ", totalCliente;
									2:
										Limpiar Pantalla;
										decoracion <- "Crema de leche mezclada con mermelada de maracuyá.";
										Escribir "Nombre del cliente: ", nombre;
										Escribir "Sabor de la torta: Tres leches.";
										Escribir "Decoración: ", decoracion;
										Escribir "Total a pagar: ", totalCliente;
									De Otro Modo:
										Limpiar Pantalla;
										decoracion <- "Sin recubrimiento";
										Escribir "Nombre del cliente: ", nombre;
										Escribir "Sabor de la torta: Tres leches.";
										Escribir "Decoración: ", decoracion;
										Escribir "Total a pagar: ", totalCliente;
								FinSegun
							FinSi
						SiNo
							Escribir "No hay tortas de tres leches disponibles.";
						FinSi
						totalCliente <- 0;
						opc <- 0;
						Escribir "Digite enter para volver al menú principal.";
						Esperar Tecla;
						Limpiar Pantalla;
					De Otro Modo:
						Escribir "Seleccione una opción válida";
						opc <- 1;
						Limpiar Pantalla;
				FinSegun
			2:
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
				
			3:
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
		FinSegun
	FinMientras
FinProceso
