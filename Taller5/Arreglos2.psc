// 	C�digo correspondiente al punto 2 del taller 4 de arreglos.
// Funci�n para llenar arreglo con numeros aleatorios de 1 a 100. 
SubProceso llenarArreglo(nums)
	Definir i Como Entero;
	Para i <- 0 Hasta 19 Con Paso 1 Hacer
		nums[i] <- Azar(100)+1;
	FinPara
FinSubProceso
//Funci�n para imprimir n�meros pares
SubProceso j <- imprimirPares(num, j)
	Si  num % 2 = 0 Entonces
		Si j Entonces
			Escribir Sin Saltar ", ";
		FinSi
		Escribir Sin Saltar num;
		j <- Verdadero;
	FinSi
FinSubProceso
// Funci�n para imprimir n�meros impares.
SubProceso j <- imprimirImpares(num, j)
	Si  num % 2 <> 0 Entonces
		Si j Entonces
			Escribir Sin Saltar ", ";
		FinSi
		Escribir Sin Saltar num;
		j <- Verdadero;
	FinSi
FinSubProceso
// Proceso principal
Proceso Arreglos2
	Definir nums, i Como Entero;
	Definir j Como Logico;
	Escribir Sin Saltar "N�meros pares:";
	Dimension nums[20];
	j <- Falso;
	llenarArreglo(nums);
	Para i <- 0 Hasta 19 Con Paso 1 Hacer
		j <- imprimirPares(nums[i],j);
		Si i = 19 Entonces
			Escribir "";
			j <- Falso;
		FinSi
	FinPara
	Escribir Sin Saltar "N�meros impares:";
	Para i <- 0 Hasta 19 Con Paso 1 Hacer
		j <- imprimirImpares(nums[i],j);
	FinPara
FinProceso
