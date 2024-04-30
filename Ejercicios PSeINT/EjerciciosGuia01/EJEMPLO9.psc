Proceso ejemplo9
	//solicitar al usuario la calificacion de una nota entre  1 y 100 si la nota es mayor a 75, indicar que gano la nota, de lo contrario decir que la perdio//
	definir nota Como Real;
	Escribir "Ingrese la nota";
	leer nota;
	si (nota >= 75) Entonces
		escribir "Ganó la nota";
	SiNo
		escribir "Perdió la nota";
	FinSi

FinProceso
