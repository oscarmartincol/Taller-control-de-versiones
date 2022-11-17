// Ejercicio correspondiente al punto 5 del taller 2 organizado en funciones.
SubProceso imprimirMenuProducto() 
	Escribir "1.Champú anticaspa.";
	Escribir "2.Crema de dientes.";
	Escribir "3.Jarabe para la tos.";
	Escribir "4.Bebida energizante.";
	Escribir "5.Botella de agua 600 ml.";
FinSubProceso

SubProceso opc <- imprimirSubmenuCompra()
	Definir opc Como Entero;
	Escribir "Elija una opción a continuación: ";
	Escribir "0.Volver al menú principal.";
	Escribir "1.Agregar más productos a la cesta.";
	Escribir "2.Terminar compra.";
	Leer opc;
	si opc=2 Entonces
		opc <- 4;
	FinSi
FinSubProceso

SubProceso imprimirListaPrecios()
	Escribir " Producto                              valor unitario";
	Escribir "1.Champú anticaspa       *************    $ 10000";
	Escribir "2.Crema de dientes       *************    $ 3200.85";
	Escribir "3.Jarabe para la tos     *************    $ 5854.25";
	Escribir "4.Bebida energizante     *************    $ 9740.34";
	Escribir "5.Botella de agua 600 ml *************    $ 1200";
	Escribir "Elija una opción a continuación: ";
	Escribir "0.Volver al menú principal.";
	Escribir "1.Comprar productos.";
	Escribir "2.Terminar consulta.";
FinSubProceso

SubProceso imprimirTicketCambio(nombre, valorTicket, observaciones)
	Escribir "************* Droguería Mi Salud *************";
	Escribir "************* Ticket de cambio *************";
	Escribir "Nombre del cliente: ", nombre;
	Escribir "Valor del Ticket: ", valorTicket;
	Escribir "Observaciones: ", observaciones;
	Escribir "El presente ticket puede ser redimido en su próxima compra mayor o igual al valor descrito.";
FinSubProceso

SubProceso imprimirFactura(total, nombre, valorItemAg, valorItemBe, valorItemCd, valorItemJt, valorItemSh)
	Si total > 0 Entonces
		Limpiar Pantalla;
		Escribir "************* Droguería Mi Salud *************";
		Escribir "************* Factura de venta *************";
		Escribir "Nombre del cliente: ", nombre;
		Escribir "Producto         Cantidad           Valor ";
		Si valorItemAg > 0 Entonces
			Escribir "Agua 600ml          ",valorItemAg/1200, "               $",valorItemAg;
		FinSi
		Si valorItemBe > 0 Entonces
			Escribir "Bebida energizante  ",valorItemBe/9740.34, "               $",valorItemBe;
		FinSi
		Si valorItemCd > 0 Entonces
			Escribir "Crema de dientes    ",valorItemCd/3200.85, "               $",valorItemCd;
		FinSi
		Si valorItemJt > 0 Entonces
			Escribir "Jarabe para la tos  ",valorItemJt/5854.25, "               $",valorItemJt;
		FinSi
		Si valorItemSh > 0 Entonces
			Escribir "Champú              ",valorItemSh/10000, "               $",valorItemSh;
		FinSi
		Escribir "Total                               $",total;
	FinSi
	Escribir "******** Gracias por su visita. ********";
FinSubProceso

SubProceso valorItem <- calcularTotalItem(unidades, precio, valorItemInicial)
	Definir valorItem Como Real;
	valorItem <- (unidades * precio) + valorItemInicial;
FinSubProceso

Proceso Drogueria
	Definir opc, opcProduct, unidades Como Entero;
	Definir valorItemSh, valorItemCd, valorItemJt, valorItemBe, valorItemAg Como Real;
	Definir total, valorTicket Como Real;
	Definir nombre, observaciones Como Caracter;
	opc <- 0;
	valorItemSh <- 0;
	valorItemCd <- 0;
	valorItemJt <- 0;
	valorItemBe <- 0;
	valorItemAg <- 0;
	
	Escribir "Bienvenido a la droguería Mi Salud";
	Escribir "¿Cuál es su nombre?";
	Leer nombre;

	Mientras opc <> 4 Hacer
		Si opc=0 Entonces
			Escribir "Seleccione la operación que desea realizar de las que se encuentran a continuación: ";
			Escribir "1.Comprar productos.";
			Escribir "2.Consultar precios.";
			Escribir "3.Devoluciones.";
			Leer opc;
		SiNo
			Segun opc Hacer
				//  codigo para comprar productos
				1:Escribir "Digite la opción del producto que desea comprar: ";
					imprimirMenuProducto();
					Leer opcProduct;
					Si opcProduct <= 5 Y opcProduct > 0 Entonces
						Escribir "Digite las unidades que desea comprar del producto";
						Leer unidades;
					FinSi
					Segun opcProduct Hacer
						1:
							valorItemSh <- calcularTotalItem(unidades, 10000, valorItemSh);
							Escribir unidades," unidades de champú se han agregado a la cesta.";
							opc <- imprimirSubmenuCompra();
						2:
							valorItemCd <- calcularTotalItem(unidades, 3200.85, valorItemCd);
							Escribir unidades," unidades de crema dental se han agregado a la cesta.";
							opc <- imprimirSubmenuCompra();
						3:
							valorItemJt <- calcularTotalItem(unidades, 5854.25, valorItemJt);
							Escribir unidades," unidades de jarabe para la tos se han agregado a la cesta.";
							opc <- imprimirSubmenuCompra();
						4:
							valorItemBe <- calcularTotalItem(unidades, 9740.34, valorItemBe);
							Escribir unidades," unidades de bebida energizante se han agregado a la cesta";
							opc <- imprimirSubmenuCompra();
						5:
							valorItemAg <- calcularTotalItem(unidades, 1200, valorItemAg);
							Escribir unidades," unidades de agua se han agregado a la cesta";
							opc <- imprimirSubmenuCompra();
						De Otro Modo:
							Escribir "No existe un producto con la opción escogida";
							opc <- 1;
							Limpiar Pantalla;
					FinSegun
				2:
					imprimirListaPrecios();
					Leer opc;
					si opc=2 Entonces
						opc <- 4;
					FinSi
				3:	// Cambiar productos
					Escribir "Seleccione la opción del producto que desea cambiar (recuerde que puede cambiar solo un tipo de producto a la vez): ";
					imprimirMenuProducto();
					Leer opcProduct;
					Escribir "Digite las unidades del producto que necesitan cambio";
					Leer unidades;
					Escribir "Escriba a continuación los motivos del cambio: ";
					Leer observaciones;
					Segun opcProduct Hacer
						1:
							valorTicket <- (unidades * 10000);
						2:
							valorTicket <- (unidades * 3200.85) ;
							
						3:
							valorTicket <- (unidades * 5854.25);
							
						4:
							valorTicket <- (unidades * 9740.34);
							
						5:
							valorTicket <- (unidades * 1200);
						De Otro Modo:
							Escribir "No existe un producto con la opción seleccionada.";
							opc <- 3;
							Limpiar Pantalla;
					FinSegun
					Limpiar Pantalla;
					imprimirTicketCambio(nombre, valorTicket, observaciones);
					opc <- 4;
				De Otro Modo:
					Escribir "La opción escogida no es válida.";
			FinSegun
		FinSi
		
	FinMientras
	
	total <- valorItemAg + valorItemBe + valorItemCd + valorItemJt + valorItemSh;
	imprimirFactura(total, nombre, valorItemAg, valorItemBe, valorItemCd, valorItemJt, valorItemSh);
FinProceso
