
// Programa correspondiente al punto 9 del taller 2 organizado en funciones.
// Función para calcular área de un triángulo.
Subproceso areaF <- areaTriangulo(base, altura)
	Definir areaF Como Real;
	areaF <- (base * altura)/2;
FinSubProceso

// Función para calcular área de un trapecio
SubProceso areaF <- areaTrapecio(base, base2, altura)
	Definir areaF Como Real;
	areaF <- ((base + base2) * altura) / 2;
FinSubProceso

// Función para calcular área de un rectángulo
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
	Escribir "¿De quá figura desea calcular el área?, digite el número de la opción deseada";
	Escribir "1.Rectángulo";
	Escribir "2.Triángulo";
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
			Escribir "Opción no valida.";
		FinSi
	FinSi
	Si (areaFigura > 0) Entonces
		Escribir "El área es: ", areaFigura;
	FinSi
FinProceso
