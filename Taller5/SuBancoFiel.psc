// Ejercicio correspondiente al punto 10 del taller 2 organizado en funciones.

SubProceso agregarSaldo <- depositar(deposito)
	Definir agregarSaldo Como Real;
	Si deposito > 0 Entonces
		agregarSaldo <- deposito;
	SiNo
		Escribir "El deposito debe ser mayor a cero.";
		agregarSaldo <- 0;
	FinSi
FinSubProceso

SubProceso restarSaldo <- retirar(retiro, saldo)
	Definir restarSaldo Como Real;
	Si retiro > 0 Entonces
		Si retiro <= saldo Entonces
			restarSaldo <- retiro;
		SiNo
			Escribir "Saldo insuficiente";
			Esperar 2 Segundos;
			restarSaldo <- 0;
		FinSi
	SiNo
		Escribir "Monto del retiro no es v�lido";
		restarSaldo <- 0;
		Esperar 2 Segundos;
	FinSi
FinSubProceso

SubProceso imprimirRecibo(usuario, Transaccion, saldo, opc)
	Si opc = 1 Entonces
		Si Transaccion = 0 Entonces
			Escribir "Operaci�n rechazada.";
		SiNo
			Escribir "Dep�sito realizado con �xito";
		FinSi
	SiNo
		Si opc = 2 Entonces
			Si Transaccion = 0 Entonces
				Escribir "Operaci�n rechazada.";
			SiNo
				Escribir "Retiro realizado con �xito";
			FinSi
		FinSi
	FinSi
	Escribir "Nombre del cliente: ", usuario;
	Escribir "Valor de la operaci�n: $", transaccion;
	Escribir "Saldo disponible: $", saldo;
FinSubProceso

Proceso SuBancoFiel
	Definir usuario Como Caracter;
	Definir valorTransaccion, saldo Como Real;
	Definir opc Como Entero;
	opc <- 0;
	saldo <- 1000000;
	Escribir "Ingrese su nombre:";
	Leer usuario;
	
			Escribir "�Qu� operaci�n desea realizar?";
			Escribir "1.Realizar dep�sito.";
			Escribir "2.Realizar retiro.";
			Escribir "3.Consultar saldo.";
			Escribir "4. Cancelar.";
			Leer opc;
			
			Segun opc Hacer
				1:
					Escribir "Ingrese el monto que desea depositar: ";
					Leer valorTransaccion;
					valorTransaccion <- depositar(valorTransaccion);
					saldo <- saldo + valorTransaccion;
					imprimirRecibo(usuario, valorTransaccion, saldo, opc);
				2:
					Escribir "Ingrese el monto que desea retirar: ";
					Leer valorTransaccion;
					valorTransaccion <- retirar(valorTransaccion, saldo);
					saldo <- saldo - valorTransaccion;
					imprimirRecibo(usuario, valorTransaccion, saldo, opc);
				3:
					Escribir "Nombre del cliente: ", usuario;
					Escribir "Saldo disponible: ", saldo;
					Escribir "Presione una tecla para terminar. ";
					Esperar Tecla;
					Limpiar Pantalla;
				4:
					Escribir "Sesi�n finalizada.";
				De Otro Modo:
					Escribir "Opci�n no valida";
					Esperar 2 Segundos;
					Limpiar Pantalla;
			FinSegun
FinProceso
