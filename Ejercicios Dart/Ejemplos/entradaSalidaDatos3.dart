import 'dart:io';

void main() {
  // DEFINICIÓN vbles
  double num1, num2, suma;
  String? teclado;

  // ENTRADA Datos
  print("Ingrese el valor del número 1");
  teclado = stdin.readLineSync();
  num1 = double.parse(teclado!);
  print("Ingrese el valor del número 2");
  teclado = stdin.readLineSync();
  num2 = double.parse(teclado!);
  suma = num1 + num2;
  // SALIDA
  print("La suma de los números es: $suma");
}
