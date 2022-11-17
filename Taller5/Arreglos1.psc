// Codigo correspondiente al punto 1 del taller 4 de arreglos.
// Función para ingresar valores al arreglo.
SubProceso llenarArreglo(vector)
	Definir i Como Entero;
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir "Escriba el número para la posicion ", i;
		Leer vector[i];
	FinPara
FinSubProceso
// Función para imprimir contenido del arreglo.
SubProceso imprimir(vector)
	Definir i Como Entero;
	Para i<- 0 Hasta 4 Con Paso 1 Hacer
		Escribir "[",i,"] = ", vector[i];
	FinPara
FinSubProceso
// Proceso principal.
Proceso Arreglos1
	Definir vector Como Entero;
	Dimension vector[5];
	llenarArreglo(vector);
	Limpiar Pantalla;
	imprimir(vector);
FinProceso
