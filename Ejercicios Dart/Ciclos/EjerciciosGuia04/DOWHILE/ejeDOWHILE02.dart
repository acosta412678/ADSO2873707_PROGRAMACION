import 'dart:io';

void main(List<String> args) {
  /**Un alumno de la clase de lógica matemática desea desarrollar un algoritmo y diagrama de flujo en el
cual introduzca un número entero positivo e invierta los dígitos del número. Mostrar el número
invertido. */
  print("Ingresa un número entero positivo: ");
  int numero = int.parse(stdin.readLineSync()!);
  int numeroInvertido = 0;

  do {
    int digito = numero % 10;
    numeroInvertido = numeroInvertido * 10 + digito;
    numero ~/= 10;
  } while (numero > 0);

  print("Número invertido: $numeroInvertido");
}
