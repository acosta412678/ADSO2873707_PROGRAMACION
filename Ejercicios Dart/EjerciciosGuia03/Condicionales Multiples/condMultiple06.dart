import 'dart:io';

void main() {
/*  LUIS MIGUEL ACOSTA  - Condicionales Multiples - EJE_06
Desarrollar un algoritmo que lea el nombre del mes y el año e imprima en pantalla cuantos días tiene.
Es necesario tener en cuenta si es año bisiesto o no.
*/
// Definicón de variables
  String nombreMes;
  int year, numeroDias;

  // Entrada
  print("Ingrese el nombre del mes:");
  nombreMes = stdin.readLineSync()!;
  print("Ingrese el año:");
  year = int.parse(stdin.readLineSync()!);

  // Proceso
  numeroDias = 0;
  switch (nombreMes) {
    case "enero":
      numeroDias = 31;
    case "febrero":
    if (year % 4 == 0) {
      numeroDias = 29;
      print("EL año es bisiesto");
    } else {
      numeroDias = 28;
      print("El año no es bisiesto");
    }
    case "marzo":
      numeroDias = 31;
    case "abril":
      numeroDias = 30;
    case "mayo":
      numeroDias = 31;
    case "junio":
      numeroDias = 30;
    case "julio":
      numeroDias = 31;
    case "agosto":
      numeroDias = 31;
    case "septiembre":
      numeroDias = 30;
    case "octubre":
      numeroDias = 31;
    case "noviembre":
      numeroDias = 30;
    case "diciembre":
      numeroDias = 31;
    default:
  }

// Salida
  print("El mes de $nombreMes en el año $year tiene $numeroDias días.");
}
