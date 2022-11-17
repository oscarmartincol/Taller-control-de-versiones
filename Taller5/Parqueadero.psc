// Código correspondiente al punto 7 del taller 3 de ciclos organizado en funciones.

SubProceso inicializarArreglos(arreglo1, arreglo2, arreglo3, arreglo4, tamanio)
	Definir i Como Entero;
	Para i<- 0 Hasta (tamanio - 1) Hacer
		arreglo1[i] <- "";
		arreglo2[i] <- "";
		arreglo3[i] <- "";
		arreglo4[i] <- "";
	FinPara
FinSubProceso

// Función para verificar que la placa del vehiculo no este registrada, y agregarla en caso de que no lo este.
SubProceso agregarVehiculo(placaTemporal, placas, marcas, nombres, telefonos)
	Definir i Como Entero;
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Si placas[i] = placaTemporal Entonces
			Escribir "Ya se encuentra registado un vehículo con la placa ", placaTemporal;
			Escribir "Datos del vehículo:";
			Escribir "Placa: ", placas[i];
			Escribir "Marca: ", marcas[i];
			Escribir "Nombre del propietario: ", nombres[i];
			Escribir "Teléfono: ", telefonos[i];
			Escribir "";
			i <- 4;
		SiNo
			Si placas[i] = "" Entonces
				placas[i] <- placaTemporal;
				Escribir "Ingrese la marca del vehículo: ";
				Leer marcas[i];
				Escribir "Ingrese el nombre del propietario: ";
				Leer nombres[i];
				Escribir "Ingrese número de teléfono";
				Leer telefonos[i];
				Escribir "Vehiculo ingresado con éxito";
				i <- 4;
			FinSi
		FinSi
	FinPara
FinSubProceso

SubProceso buscarVehiculo(placaTemporal, placas, nombres, marcas, telefonos)
	Definir i Como Entero;
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Si placaTemporal = placas[i] Entonces
			Escribir "Datos del vehiculo con placa ", placas[i],":";
			Escribir "Marca: ", marcas[i];
			Escribir "Nombre del propietario:", nombres[i];
			Escribir "Telefono: ", telefonos[i];
			Escribir "Número de estacionamiento: ", i;
			Escribir "";
			i <- 4;
		SiNo
			Si i = 4 O placas[i] = "" Entonces
				Escribir "No se encuentra ningun vehículo en el estacionamiento con la placa ", placaTemporal;
				i <- 4; 
			FinSi
		FinSi
	FinPara
FinSubProceso

SubProceso retirarVehiculo(placaTemporal, placas, marcas, nombres, telefonos)
	Definir i, j Como Entero;
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Si placaTemporal = placas[i] Entonces
			Si i = 4 Entonces
				placas[i] <- "";
				marcas[i] <- "";
				nombres[i] <- "";
				telefonos[i] <- "";
			SiNo
				j <- i;
				Mientras j < 4 Hacer
					Si placas[j+1] <> "" Entonces
						placas[j] <- placas[j+1];
						nombres[j] <- nombres[j+1];
						marcas[j] <- marcas[j+1];
						telefonos[j] <- telefonos[j+1];
						Si j = 3 Entonces
							placas[4] <- "";
							marcas[4] <- "";
							nombres[4] <- "";
							telefonos[4] <- "";
						FinSi
					SiNo
						placas[j] <- "";
						marcas[j] <- "";
						nombres[j] <- "";
						telefonos[j] <- "";
						j <- 4;
					FinSi
					j <- j + 1;
				FinMientras
				i <- 4;
				Limpiar Pantalla;
				Escribir "El vehículo de placa ", placaTemporal, " ha salido del parqueadero.";
			FinSi
		SiNo
			Si i=4 Entonces
				Escribir "No hay ningun vehículo con la placa ", placaTemporal;
			FinSi
		FinSi
		
	FinPara
FinSubProceso

Proceso Parqueadero
	Definir placas, marcas, nombres, telefonos, placaTemporal Como Caracter;
	Definir opc Como Entero;
	Dimension placas[5], marcas[5], nombres[5], telefonos[5];
	
	inicializarArreglos(placas, marcas, nombres, telefonos, 5);
	
	// Ciclo Repetir para controlar la ejecución del programa.
	Repetir
		Escribir "Bienvenido al parqueadero El guardián";
		Escribir "";
		Escribir "Seleccione una de las opciones a continuación: ";
		Escribir "1. Ingresar vehículo.";
		Escribir "2. Buscar vehículo.";
		Escribir "3. Retirar vehículo del parqueadero.";
		Escribir "4. Salir del sistema";
		Leer opc;
		Segun opc Hacer
			1:// Ingresar vehiculo al parqueadero
				Si placas[4] <> "" Entonces
					Escribir "No hay lugares disponibles en el parqueadero.";
					placaTemporal <- "";
				SiNo
					Escribir "Ingrese la placa de vehículo";
					Leer placaTemporal;
					Si Longitud(placaTemporal) = 6 O Longitud(placaTemporal) = 7 Entonces
						agregarVehiculo(placaTemporal, placas, marcas, nombres, telefonos);
						Escribir "Oprima enter para volver al menú principal";
						Esperar Tecla;
						Limpiar Pantalla;
						
					Sino
						Escribir "La placa debe ser de seis o siete caracteres.";
						Esperar 2 Segundos;
						Limpiar Pantalla;
					FinSi
				FinSi
			2:// Buscar vehiculo en el parqueadero
				Escribir "Ingrese la placa del vehículo";
				Leer placaTemporal;
				Si Longitud(placaTemporal) = 6 O Longitud(placaTemporal) = 7 Entonces
					buscarVehiculo(placaTemporal, placas, nombres, marcas, telefonos);
					Escribir "Oprima enter para volver al menú principal.";
					Esperar Tecla;
					Limpiar Pantalla;
				SiNo
					Escribir "La placa debe ser de seis o siete caracteres.";
					Esperar 2 Segundos;
					Limpiar Pantalla;
				FinSi
			3:// Retirar vehiculo del parqueadero
				Escribir "Ingrese la placa del vehículo";
				Leer placaTemporal;
				Si Longitud(placaTemporal) = 6 O Longitud(placaTemporal) = 7 Entonces
					retirarVehiculo(placaTemporal, placas, marcas, nombres, telefonos);
					Escribir "Oprima enter para volver al menú principal";
					Esperar Tecla;
				SiNo
					Escribir "La placa debe ser de seis o siete caracteres.";
					Esperar 2 Segundos;
					Limpiar Pantalla;
				FinSi
			4:// Salir del sistema
				Limpiar Pantalla;
				Escribir "Ha salido del programa";
			De Otro Modo:
				Escribir "Ingrese una opción válida";
				Esperar 2 Segundos;
				Limpiar Pantalla;
		FinSegun
		
	Hasta Que opc = 4 
FinProceso
