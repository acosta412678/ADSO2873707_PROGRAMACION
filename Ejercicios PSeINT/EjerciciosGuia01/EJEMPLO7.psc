Proceso ejemplo7
	definir edad como entero;
	Escribir "Ingrese su edad";
	leer edad;
	si (edad >= 18) Entonces
		escribir "Puede votar en las elecciones";
	FinSi 
	si (edad < 18) Entonces
		escribir "Tiene tarjeta de identidad";
	SiNo
		escribir "Tiene cédula";
	FinSi
FinProceso
