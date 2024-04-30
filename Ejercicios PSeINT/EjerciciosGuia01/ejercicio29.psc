Proceso ejercicio29
	// Definir variables;
    Definir  monto, descuento Como Real;
	
    // Solicitar al usuario que ingrese el monto;
    Escribir "Ingrese el monto:";
    Leer monto;
	
    // Calcular el descuento;
    Si monto > 100 Entonces
        descuento <- monto * 0.10; // Descuento del 10% para montos mayores a 100
    Sino
        descuento <- monto * 0.02; // Descuento del 2% para montos iguales o menores a 100
    Fin Si;
	
    // Mostrar el descuento;
    Escribir "El descuento es:", descuento;
FinProceso
