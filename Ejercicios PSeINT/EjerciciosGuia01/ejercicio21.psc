Proceso ejercicio21
	// Declarar variables
    Definir  numero1, numero2 Como Real;
	
    // Solicitar al usuario que ingrese dos n�meros
    Escribir  "Ingrese el primer n�mero:";
    Leer numero1;
	
    Escribir  "Ingrese el segundo n�mero:";
    Leer numero2;
	
    // Determinar cu�l es el mayor o si son iguales
    Si (numero1 > numero2) Entonces
        Imprimir "El primer n�mero es mayor que el segundo.";
    Sino
        Si (numero2 > numero1) Entonces
            Imprimir "El segundo n�mero es mayor que el primero.";
        Sino
            Imprimir "Ambos n�meros son iguales.";
        Fin Si
    Fin Si
FinProceso
