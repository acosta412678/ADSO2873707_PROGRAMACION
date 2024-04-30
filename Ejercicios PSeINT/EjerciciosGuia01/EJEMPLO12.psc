Proceso EJEMPLO12
	//Condicional doble 1
	//Solicitar al usuario la nota de un aprendiz entre 0 y 5.
	//Si el aprendiz obtiene una menor a 3, decir que perdió el examén. De lo contrario decir que la ganó.
	//Si la nota no esta en el rango de 0 a 5, decir al usuario que esta ingresando mal la nota.
	Definir nota Como Real;
	Escribir "Digite su nota";
	Leer nota;
	si (nota < 0 o nota > 5) Entonces
		Escribir "Esta ingresando mal la nota";
	SiNo
		Escribir "La nota esta bien";
	si (nota < 3 ) Entonces
		Escribir "Perdiste el examen";
	SiNo 
		Escribir "Ganó el examen";
	FinSi
	FinSi
	
FinProceso
