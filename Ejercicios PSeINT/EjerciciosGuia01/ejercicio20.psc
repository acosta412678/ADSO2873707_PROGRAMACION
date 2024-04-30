Proceso ejercicio20
	// Declarar variables
    Definir numero1, numero2 Como Real;
	
    // Solicitar al usuario que ingrese dos números
    Imprimir "Ingrese el primer número:";
    Leer numero1;
	
    Imprimir "Ingrese el segundo número:";
    Leer numero2;
	
    // Determinar cuál es el mayor
    Si numero1 > numero2 Entonces
        Imprimir "El primer número es mayor que el segundo.";
    Sino
        Si numero2 > numero1 Entonces
            Imprimir "El segundo número es mayor que el primero.";
        Sino
            Imprimir "Ambos números son iguales.";
        Fin Si
    Fin Si

FinProceso
