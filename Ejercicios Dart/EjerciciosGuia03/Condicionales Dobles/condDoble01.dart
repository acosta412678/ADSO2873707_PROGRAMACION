import 'dart:io';

void main() {
/*  LUIS MIGUEL ACOSTA  - Condicionales Dobles - EJE_01
Desarrollar un algoritmo que lea dos números y los imprima en forma ascendente.
*/
// DEFICIÓN variables
  int num1, num2;
  // ENTRADA
  print("Ingrese el numero 1");
  num1 = int.parse(stdin.readLineSync()!);
  print("Ingrese el numero 2");
  num2 = int.parse(stdin.readLineSync()!);
  // PROCESO/SALIDA
  if (num2 > num1) {
    print("$num1, $num2");
  } else {
    print("$num2, $num1");
  }
}
