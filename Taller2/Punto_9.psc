Proceso Punto_9
	
	Definir base, altura, baseSuperior, baseInferior, area Como Real;
	Definir opc Como Entero;
	Escribir "�De qu� figura desea calcular el �rea?, digite el n�mero de la opci�n deseada";
	Escribir "1.Rect�ngulo";
	Escribir "2.Tri�ngulo";
	Escribir "3.Trapecio";
	Leer opc;
	
	Segun opc Hacer
		1:
			Escribir "Inserte la base: ";
			Leer base;
			Escribir "Inserte la altura: ";
			Leer altura;
			area <- base * altura;
			Escribir "El �rea del rect�ngulo es : ", area;
		2:
			Escribir "Inserte la base: ";
			Leer base;
			Escribir "Inserte la altura: ";
			Leer altura;
			area <- (base * altura)/2;
			Escribir "El �rea del Tri�ngulo es : ", area;
		3:
			Escribir "Inserte la base superior: ";
			Leer baseSuperior;
			Escribir "Inserte la base inferior: ";
			Leer baseInferior;
			Escribir "Inserte la altura: ";
			Leer altura;
			area <- ((baseInferior + baseSuperior) * altura)/2;
			Escribir "El �rea del Trapecio es : ", area;

		De Otro Modo:
			Escribir "Opci�n no valida.";
	FinSegun
FinProceso
