Proceso ejercicio19
	// Declarar variables
    Definir  numero1, numero2 Como Real;
	
    // Solicitar al usuario que ingrese dos n�meros
    Imprimir "Ingrese el primer n�mero:";
    Leer numero1;
	
    Imprimir "Ingrese el segundo n�mero:";
    Leer numero2;
	
    // Verificar si uno es m�ltiplo del otro
    Si (numero1 MOD numero2 = 0) O (numero2 MOD numero1 = 0) Entonces
        Imprimir "Uno de los n�meros es m�ltiplo del otro.";
    Sino
        Imprimir "Los n�meros no son m�ltiplos entre s�.";
    Fin Si
FinProceso
