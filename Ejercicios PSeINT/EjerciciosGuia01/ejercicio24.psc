Proceso ejercicio24
	// Definir variables
    Definir  numero, cifras Como Real;
	
    // Solicitar al usuario que ingrese un número
    Escribir "Ingrese un número entre 0 y 9,999:";
    Leer numero;
	
    // Verificar si el número está en el rango permitido
    Si numero >= 0 Y numero <= 9999 Entonces
        // Contar las cifras del número
        cifras <- 1; // Inicialmente asumimos que hay al menos una cifra
		
        si numero >= 10 Entonces
			
            numero <- numero / 10;
            cifras <- cifras + 1;
        Fin si
		
        // Mostrar la cantidad de cifras
        Escribir "El número tiene", cifras, " cifras.";
    Sino
        Escribir "Número fuera del rango permitido.";
    Fin Si
FinProceso
