import 'dart:io';

void main() {
/*  LUIS MIGUEL ACOSTA  - Condicionales Dobles - EJE_02
Un obrero necesita calcular su salario semanal, el cual se obtiene de la sig. manera:
• Si trabaja 40 horas o menos se le paga $16 por hora
• Si trabaja más de 40 horas se le paga $16 por cada una de las primeras 40 horas y $20 por cada hora
extra.
*/
// DEFICIÓN variables
  double salario,horas, horasExtra, sueldoExtra;
  // ENTRADA
  print("Ingrese las horas trabajadas");
  horas = double.parse(stdin.readLineSync()!);
  // PROCESO-SALIDA
  salario = 16;
  horasExtra = horas - 40;
  sueldoExtra = 20;
  if (horas <= 40) {
    salario = horas * salario;
    print("Su sueldo es: $salario");
  } else {
    salario = salario + (horasExtra * sueldoExtra);
    print("Su sueldo es: $salario");
  }
}
