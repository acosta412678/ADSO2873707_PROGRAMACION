Proceso ejercicio25
	// Definir variables
    Definir  nota Como Real;
	
    // Solicitar al usuario que ingrese una nota entre 0 y 5
    Escribir "Ingrese una nota entre 0 y 5:";
    Leer nota;
	
    // Verificar en qu� categor�a se encuentra la nota
    Si nota >= 0 Y nota < 3 Entonces
        Escribir "Calificaci�n: Insuficiente";
    Sino
        Si nota >= 3 Y nota <= 4.5 Entonces
            Escribir "Calificaci�n: Suficiente";
        Sino
            Si nota > 4.5 Y nota <= 5 Entonces
                Escribir "Calificaci�n: Bien";
            Sino
                Escribir "Nota fuera del rango permitido.";
            Fin Si
        Fin Si
    Fin Si
FinProceso
