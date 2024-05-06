import 'dart:io';

void main(List<String> args) {
  int num, suma = 0;
  do {
    print("Ingrese un número para sumar (0 para salir)");
    num = int.parse(stdin.readLineSync()!);
    if (num % 2 == 0) {
      suma = suma + num;
    } else {
      print("No es par");
      print("No sera tomado en cuenta para la suma final");
    }
  } while (num != 0);
  print("El valor de la suma es: $suma");
}
