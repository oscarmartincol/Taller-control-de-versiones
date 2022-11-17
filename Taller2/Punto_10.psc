Proceso Punto_10
	Definir usuario Como Caracter;
	Definir saldo, deposito, retiro Como Real;
	definir opc Como Entero;
	opc <- 0;
	Escribir "Ingrese su nombre:";
	Leer usuario;
	saldo <- 1000000;
	Escribir "Bienvenido a Su banco fiel ", usuario;
	Mientras opc <> 4 Hacer
		Si opc = 0 Entonces
			Escribir "¿Qué operación desea realizar?";
			Escribir "1.Realizar depósito.";
			Escribir "2.Realizar retiro.";
			Escribir "3.Consultar saldo.";
			Escribir "4. Cancelar.";
			Leer opc;
		FinSi
		
		Segun opc Hacer
			1:
				Escribir "Ingrese el monto que desea depositar: ";
				Leer deposito;
				Si deposito > 0 Entonces
					saldo <- saldo + deposito;
					Limpiar Pantalla;
					Escribir "Depósito realizado con éxito";
					Escribir "Nombre del cliente: ", usuario;
					Escribir "Valor del depósito: $", deposito;
					Escribir "Saldo disponible: $", saldo;
					opc <- 4;
				SiNo
					Escribir "El valor del depósito debe ser mayor a cero.";
					opc <- 0;
					Esperar 3 Segundos;
					Limpiar Pantalla;
				FinSi
			2:
				Escribir "Ingrese el monto que desea retirar: ";
				Leer retiro;
				Si retiro > 0 Entonces
					Si retiro <= saldo Entonces
						saldo <- saldo - retiro;
						Limpiar Pantalla;
						Escribir "Retiro realizado con éxito";
						Escribir "Nombre del cliente: ", usuario;
						Escribir "Valor del retiro: $", retiro;
						Escribir "Saldo disponible: $", saldo;
						opc <- 4;
					SiNo
						Escribir "Saldo insuficiente";
						opc <- 0;
						Esperar 2 Segundos;
						Limpiar Pantalla;
					FinSi
				SiNo
					Escribir "Monto del retiro debe ser mayor a cero;";
					opc <- 0;
				FinSi
			3:
				Escribir "Nombre del cliente: ", usuario;
				Escribir "Saldo disponible: ", saldo;
				Escribir "Presione una tecla para volver al menú pricipal. ";
				Esperar Tecla;
				Limpiar Pantalla;
				opc <- 0;
			4:
				Escribir "Sesión finalizada.";
			De Otro Modo:
				Escribir "Opción no valida";
				opc <- 0;
				Esperar 2 Segundos;
				Limpiar Pantalla;
		FinSegun
	FinMientras
FinProceso
