Proceso ejercicio18
	// Declarar variables
    Definir numero Como Real;
	
    // Pedir al usuario que ingrese un número
    Escribir"Ingrese un número:";
    Leer numero;
	
    // Verificar si el número es positivo, negativo o cero
    Si numero > 0 Entonces
        Escribir"El número ingresado es positivo.";
    Sino
        Si numero < 0 Entonces
            Escribir"El número ingresado es negativo.";
        Sino
            Escribir"El número ingresado es cero.";
        Fin Si
    Fin Si
	
Fin Algoritmo
