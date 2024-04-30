Proceso ejercicio24
	// Definir variables
    Definir  numero, cifras Como Real;
	
    // Solicitar al usuario que ingrese un n�mero
    Escribir "Ingrese un n�mero entre 0 y 9,999:";
    Leer numero;
	
    // Verificar si el n�mero est� en el rango permitido
    Si numero >= 0 Y numero <= 9999 Entonces
        // Contar las cifras del n�mero
        cifras <- 1; // Inicialmente asumimos que hay al menos una cifra
		
        si numero >= 10 Entonces
			
            numero <- numero / 10;
            cifras <- cifras + 1;
        Fin si
		
        // Mostrar la cantidad de cifras
        Escribir "El n�mero tiene", cifras, " cifras.";
    Sino
        Escribir "N�mero fuera del rango permitido.";
    Fin Si
FinProceso
