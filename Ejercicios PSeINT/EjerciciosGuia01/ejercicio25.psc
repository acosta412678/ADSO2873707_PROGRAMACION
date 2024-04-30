Proceso ejercicio25
	// Definir variables
    Definir  nota Como Real;
	
    // Solicitar al usuario que ingrese una nota entre 0 y 5
    Escribir "Ingrese una nota entre 0 y 5:";
    Leer nota;
	
    // Verificar en qué categoría se encuentra la nota
    Si nota >= 0 Y nota < 3 Entonces
        Escribir "Calificación: Insuficiente";
    Sino
        Si nota >= 3 Y nota <= 4.5 Entonces
            Escribir "Calificación: Suficiente";
        Sino
            Si nota > 4.5 Y nota <= 5 Entonces
                Escribir "Calificación: Bien";
            Sino
                Escribir "Nota fuera del rango permitido.";
            Fin Si
        Fin Si
    Fin Si
FinProceso
