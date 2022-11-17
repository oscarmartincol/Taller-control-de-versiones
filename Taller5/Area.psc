
// Programa correspondiente al punto 9 del taller 2 organizado en funciones.
// Funci�n para calcular �rea de un tri�ngulo.
Subproceso areaF <- areaTriangulo(base, altura)
	Definir areaF Como Real;
	areaF <- (base * altura)/2;
FinSubProceso

// Funci�n para calcular �rea de un trapecio
SubProceso areaF <- areaTrapecio(base, base2, altura)
	Definir areaF Como Real;
	areaF <- ((base + base2) * altura) / 2;
FinSubProceso

// Funci�n para calcular �rea de un rect�ngulo
Subproceso areaF <- areaRectangulo(base, altura)
	Definir areaF Como Real;
	areaF <- base * altura;
FinSubProceso

// Programa principal.
Proceso Area
	Definir areaFigura Como Real;
	Definir base, altura, base2 Como Real;
	Definir opc Como Entero;
	areaFigura <- 0;
	Escribir "�De qu� figura desea calcular el �rea?, digite el n�mero de la opci�n deseada";
	Escribir "1.Rect�ngulo";
	Escribir "2.Tri�ngulo";
	Escribir "3.Trapecio";
	Leer opc;
	
	Si opc = 1 O opc = 2 Entonces
		Escribir "Inserte la base: ";
		Leer base;
		Escribir "Inserte la altura: ";
		Leer altura;
		Si opc = 1 Entonces
			areaFigura <- areaRectangulo(base, altura);
		SiNo
			areaFigura <- areaTriangulo(base, altura);
		FinSi
	SiNo
		Si opc = 3 Entonces
			Escribir "Inserte la base superior: ";
			Leer base;
			Escribir "Inserte la base inferior: ";
			Leer base2;
			Escribir "Inserte la altura: ";
			Leer altura;
			areaFigura <- areaTrapecio(base, base2, altura);
		SiNo
			Escribir "Opci�n no valida.";
		FinSi
	FinSi
	Si (areaFigura > 0) Entonces
		Escribir "El �rea es: ", areaFigura;
	FinSi
FinProceso
