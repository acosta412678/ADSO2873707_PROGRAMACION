Proceso ejercicio28
	// Definir variables;
    Definir  horasTrabajadas, valorHora, salario Como Real;
	
    // Solicitar al usuario que ingrese las horas trabajadas y el valor de la hora;
    Escribir "Ingrese las horas trabajadas:";
    Leer horasTrabajadas;
	
    Escribir "Ingrese el valor de la hora:";
    Leer valorHora;
	
    // Calcular el salario considerando horas extras;
    Si horasTrabajadas > 40 Entonces
        salario <- 40 * valorHora + (horasTrabajadas - 40) * (valorHora + 10000);
    Sino
        salario <- horasTrabajadas * valorHora;
    Fin Si;
	
    // Mostrar el salario del trabajador;
    Escribir "El salario del trabajador es:", salario;

FinProceso
