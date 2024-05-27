import 'dart:io';

void main(List<String> args) {
  // Desarrolar un algoritmo que lea n números positivos, determine y muestre el promedio de los n números postivos
  int cant, num, suma = 0, contador = 0;
  double promedio;
  print("Ingrese la cantidad de números");
  cant = int.parse(stdin.readLineSync()!);
  while (contador < cant) {
    print("Ingrese un número positivo");
    num = int.parse(stdin.readLineSync()!);
    suma = suma + num;
    contador++;
  }
  print("La suma de los números es: $suma");
  promedio = suma / cant;
  print("El promedio es: $promedio");
}
