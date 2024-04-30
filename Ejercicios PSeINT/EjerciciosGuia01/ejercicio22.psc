Proceso ejercicio22
	// Declarar variables
    Definir  numero1, numero2, numeroTemp Como Real;
	
    // Solicitar al usuario que ingrese dos números
    Escribir  "Ingrese el primer número:";
    Leer numero1;
	
    Escribir  "Ingrese el segundo número:";
    Leer numero2;
	
    // Ordenar los números de mayor a menor
    Si numero1 < numero2 Entonces
        // Intercambiar los valores
        numeroTemp <- numero1;
        numero1 <- numero2;
        numero2 <- numeroTemp;
    Fin Si
	
    // Mostrar los números ordenados
    Escribir  "el numero mayor es ",numero1;
	Escribir  "el numero menor es ",numero2;

FinProceso

