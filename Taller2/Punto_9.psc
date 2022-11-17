Proceso Punto_9
	
	Definir base, altura, baseSuperior, baseInferior, area Como Real;
	Definir opc Como Entero;
	Escribir "¿De quá figura desea calcular el área?, digite el número de la opción deseada";
	Escribir "1.Rectángulo";
	Escribir "2.Triángulo";
	Escribir "3.Trapecio";
	Leer opc;
	
	Segun opc Hacer
		1:
			Escribir "Inserte la base: ";
			Leer base;
			Escribir "Inserte la altura: ";
			Leer altura;
			area <- base * altura;
			Escribir "El área del rectángulo es : ", area;
		2:
			Escribir "Inserte la base: ";
			Leer base;
			Escribir "Inserte la altura: ";
			Leer altura;
			area <- (base * altura)/2;
			Escribir "El área del Triángulo es : ", area;
		3:
			Escribir "Inserte la base superior: ";
			Leer baseSuperior;
			Escribir "Inserte la base inferior: ";
			Leer baseInferior;
			Escribir "Inserte la altura: ";
			Leer altura;
			area <- ((baseInferior + baseSuperior) * altura)/2;
			Escribir "El área del Trapecio es : ", area;

		De Otro Modo:
			Escribir "Opción no valida.";
	FinSegun
FinProceso
