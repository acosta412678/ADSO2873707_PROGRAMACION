Proceso EJEMPLO11
	//Condicional simple 2
	//Solicitar el estrato al usuario. Se debe saber si el aprendiz aplica a la convocatoria de apoyos de sostenimento de acuerdo a su estrato, ya que solo pueden participar estratos 1 y 2. Mostrar mensaje si el aprendiz aplica o no.
	
	//DECLARACION/DEFINICIÓN VBLES
	Definir estrato Como Entero;
	Escribir "Digite su estrato";
	Leer estrato;
	//PROCESO - SALIDA
	Escribir "Bienvenido al SENA Regional Caldas";
	si (estrato <= 2 ) Entonces
		Escribir "Si aplica para apoyos de sostenimiento";
	FinSi
FinProceso
