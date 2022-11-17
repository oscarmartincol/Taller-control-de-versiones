Proceso Punto_7
	//Atributos del vehiculo
	Definir placa, placaTemporal, marca, nombre, telefono Como Caracter;
	Dimension placa[5], marca[5], nombre[5], telefono[5];
	Definir opc,i,j Como Entero;
	//Inicializar valores de los arreglos
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		placa[i] <- "";
		marca[i] <- "";
		nombre[i] <- "";
		telefono[i] <- "";
	FinPara
	//Ciclo para controlar hasta cuando se ejecuta el programa
	
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
			1:// Lineas de código para ingresar vehículo
				
				Si placa[4] <> "" Entonces
					Escribir "No hay lugares disponibles en el parqueadero.";
					placaTemporal <- "";
				SiNo
					Escribir "Ingrese la placa de vehículo";
					Leer placaTemporal;
				FinSi
				Si placaTemporal <> "" Y (Longitud(placaTemporal) = 6 O Longitud(placaTemporal) = 7) Entonces
					
					//Ciclo para confirmar si el vehículo ya esta registrado, en caso negativo pide datos faltantes del vehículo y usuario.
					
					Para i<- 0 Hasta 4 Con Paso 1 Hacer
						Si placaTemporal = placa[i] Entonces
							Escribir "Ya se encuentra registado un vehículo con la placa ", placaTemporal;
							Escribir "Datos del vehículo:";
							Escribir "Placa: ", placa[i];
							Escribir "Marca: ", marca[i];
							Escribir "Nombre del propietario: ", nombre[i];
							Escribir "Teléfono: ", telefono[i];
							Escribir "";
							Escribir "Oprima enter para volver al menú principal";
							i <- 4;
							Esperar Tecla;
							Limpiar Pantalla;
						SiNo
							Si placa[i] = "" Entonces
								placa[i] <- placaTemporal;
								Escribir "Ingrese la marca del vehículo: ";
								Leer marca[i];
								Escribir "Ingrese el nombre del propietario: ";
								Leer nombre[i];
								Escribir "Ingrese número de teléfono";
								Leer telefono[i];
								Escribir "Vehiculo ingresado con éxito";
								Escribir "Oprima enter para volver al menú principal";
								i <- 4;
								Esperar Tecla;
								Limpiar Pantalla;
							FinSi
						FinSi
					FinPara
				SiNo
					Si placa[4] = "" Entonces
						Escribir "La placa debe ser de seis o siete caracteres.";
					FinSi
					Esperar 2 Segundos;
					Limpiar Pantalla;
				FinSi
			2:// Lineas de código para buscar vehículo
				Escribir "Ingrese la placa del vehículo";
				Leer placaTemporal;
				Si placaTemporal <> "" Y (Longitud(placaTemporal) = 6 O Longitud(placaTemporal) = 7) Entonces
					Para i <- 0 Hasta 4 Con Paso 1 Hacer
						Si placa[i] = placaTemporal Entonces
							Escribir "Datos del vehiculo con placa ", placa[i],":";
							Escribir "Marca: ", marca[i];
							Escribir "Nombre del propietario:", nombre[i];
							Escribir "Telefono: ", telefono[i];
							Escribir "Número de estacionamiento: ", i;
							Escribir "";
							Escribir "Oprima enter para volver al menú principal.";
							Esperar Tecla;
							i <- 4;
							Limpiar Pantalla;
						SiNo
							Si i = 4 O placa[i] = "" Entonces
								Escribir "No se encuentra ningun vehículo en el estacionamiento con la placa ", placaTemporal;
								Escribir "Oprima enter para volver al menú principal.";
								Esperar Tecla;
								i <- 4;
								Limpiar Pantalla;
							FinSi
						FinSi
					FinPara
				SiNo
					Escribir "La placa debe ser de seis o siete caracteres.";
					Esperar 2 Segundos;
					Limpiar Pantalla;
				FinSi
			3:// Lineas de código para retirar vehículo
				Escribir "Ingrese la placa del vehículo";
				Leer placaTemporal;
				Si placaTemporal <> "" Y (Longitud(placaTemporal) = 6 O Longitud(placaTemporal) = 7 )Entonces
					Para i<- 0 Hasta 4 Con Paso 1 Hacer
						Si placaTemporal = placa[i] Entonces
							Si i=4 Entonces
								placa[i] <- "";
								marca[i] <- "";
								nombre[i] <- "";
								telefono[i] <- "";
							SiNo
								j <- i;
								Mientras j < 4 Hacer
									Si placa[j+1] <> "" Entonces
										placa[j] <- placa[j+1];
										marca[j] <- marca[j+1];
										nombre[j] <- nombre[j+1];
										telefono[j] <- telefono[j+1];
										Si j = 3 Entonces
											placa[4] <- "";
											marca[4] <- "";
											nombre[4] <- "";
											telefono[4] <- "";
										FinSi
									SiNo
										placa[j] <- "";
										marca[j] <- "";
										nombre[j] <- "";
										telefono[j] <- "";
										j <- 4;
									FinSi
									j <- j + 1;
								FinMientras
								i <- 4;
								Limpiar Pantalla;
								Escribir "El vehículo de placa ", placaTemporal, " ha salido del parqueadero.";
								Esperar 2 Segundos;
							FinSi
						SiNo
							Si i=4 Entonces
								Escribir "No hay ningun vehículo con la placa ", placaTemporal;
								Escribir "Oprima enter para volver al menú principal";
								Esperar Tecla;
							FinSi
						FinSi
					FinPara
				SiNo
					Escribir "La placa debe tener entre seis y siete caracteres.";
					Esperar 2 Segundos;
				FinSi
			4:// Salir del programa
				Limpiar Pantalla;
				Escribir "Ha salido del programa";
			De Otro Modo:
				Escribir "Ingrese una opción válida";
				Esperar 2 Segundos;
				Limpiar Pantalla;
		FinSegun
	Hasta Que opc = 4 
	
FinProceso
