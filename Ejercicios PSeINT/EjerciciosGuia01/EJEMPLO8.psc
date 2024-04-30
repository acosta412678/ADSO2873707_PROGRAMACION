Proceso ejemplo8
	definir estrato Como Entero;
	Escribir  "Ingrese su estrato";
	leer estrato;
	Escribir "CONDICIONAL 1 - (estrato > 2)";
	si (estrato > 2) Entonces
		Escribir "No aplica para apoyos de sostenimiento";
	SiNo
		Escribir "Si aplica para apoyos";
	FinSi
	Escribir "____________________________________";
	Escribir "CONDICIONAL 2 - (estrato -- 1) o (estrato == 2)";
	si (estrato == 1) y (estrato == 2) Entonces
		Escribir "Si aplica para apoyos";
	SiNo
		Escribir "No aplica para apoyos de sostenimiento";
	FinSi
FinProceso
