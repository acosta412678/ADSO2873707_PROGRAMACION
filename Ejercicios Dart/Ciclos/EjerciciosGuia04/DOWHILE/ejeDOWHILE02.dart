import 'dart:io';

void main(List<String> args) {
  /**Un alumno de la clase de lógica matemática desea desarrollar un algoritmo y diagrama de flujo en el
cual introduzca un número entero positivo e invierta los dígitos del número. Mostrar el número
invertido. */
  print("Ingrese un número entero positivo:");
  int numero = int.parse(stdin.readLineSync()!);

  if (numero <= 0) {
    print("El número ingresado no es positivo.");
    return;
  }

  String numeroString = numero.toString();
  String numeroInvertido = numeroString.split('').reversed.join('');
  int numeroInvertidoInt = int.parse(numeroInvertido);

  print("El número invertido es: $numeroInvertidoInt");
}
