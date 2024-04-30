Proceso ejercicio23
	// Declarar variables
    definir numero1, numero2, numero3, numeroTemp como real;
	
    // Solicitar al usuario que ingrese tres números
    Escribir "Ingrese el primer número:";
    Leer numero1;
	
    Escribir "Ingrese el segundo número:";
    Leer numero2;
	
    Escribir "Ingrese el tercer número:";
    Leer numero3;
	
    // Ordenar los números de mayor a menor
    Si numero1 < numero2 Entonces
        // Intercambiar los valores
        numeroTemp <- numero1;
        numero1 <- numero2;
        numero2 <- numeroTemp;
    Fin Si
	
    Si numero2 < numero3 Entonces
        // Intercambiar los valores
        numeroTemp <- numero2;
        numero2 <- numero3;
        numero3 <- numeroTemp;
    FinSi
	
    Si numero1 < numero2 Entonces
        // Intercambiar los valores
        numeroTemp <- numero1;
        numero1 <- numero2;
        numero2 <- numeroTemp;
	finsi
    // Mostrar los números ordenados
    Escribir "Los números ordenados de mayor a menor son:", numero1, ",", numero2, " y", numero3;

	
FinProceso
