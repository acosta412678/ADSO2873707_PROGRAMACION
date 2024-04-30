import 'dart:io';

void main() {
/*  LUIS MIGUEL ACOSTA  - Condicionales Anidados - EJE_01
 Dado tres números calcular el mayor
*/
  // Definición de variables
  int num1, num2, num3, numeroMayor;

  // Entrada de datos
  stdout.write("Ingrese el primer número: ");
  num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el segundo número: ");
  num2 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el tercer número: ");
  num3 = int.parse(stdin.readLineSync()!);

  // Proceso
  if (num1 >= num2 && num1 >= num3) {
    numeroMayor = num1;
  } else if (num2 >= num1 && num2 >= num3) {
    numeroMayor = num2;
  } else {
    numeroMayor = num3;
  }

  // Salida
  print("El mayor de los tres números es: $numeroMayor");
}
