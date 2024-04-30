Proceso ejercicio19
	// Declarar variables
    Definir  numero1, numero2 Como Real;
	
    // Solicitar al usuario que ingrese dos números
    Imprimir "Ingrese el primer número:";
    Leer numero1;
	
    Imprimir "Ingrese el segundo número:";
    Leer numero2;
	
    // Verificar si uno es múltiplo del otro
    Si (numero1 MOD numero2 = 0) O (numero2 MOD numero1 = 0) Entonces
        Imprimir "Uno de los números es múltiplo del otro.";
    Sino
        Imprimir "Los números no son múltiplos entre sí.";
    Fin Si
FinProceso
