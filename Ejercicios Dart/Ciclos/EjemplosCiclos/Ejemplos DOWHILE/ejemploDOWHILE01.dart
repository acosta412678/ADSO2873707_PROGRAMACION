import 'dart:io';

void main(List<String> args) {
  int num, suma = 0;
  do {
    print("Ingrese un número para sumar (0 para salir)");
    num = int.parse(stdin.readLineSync()!);
    suma = suma + num;
  } while (num != 0);
  print("El valor de la suma es: $suma");
}
