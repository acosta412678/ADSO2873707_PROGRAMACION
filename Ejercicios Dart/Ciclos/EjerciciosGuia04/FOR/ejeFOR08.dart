import 'dart:io';

void main(List<String> args) {
  // Calcular el factorial de un número N.

  print("Ingrese un número para calcular su factorial:");
  int numero = int.parse(stdin.readLineSync()!);

  int factorial = 1;

  for (int i = 1; i <= numero; i++) {
    factorial *= i;
  }

  print("El factorial de $numero es: $factorial");
}
