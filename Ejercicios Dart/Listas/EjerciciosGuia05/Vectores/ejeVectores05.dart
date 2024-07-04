import 'dart:io';

void main(List<String> args) {
  /**Diseñe un algoritmo que lea un número cualquiera y lo busque en el vector X, el cual tiene
  almacenados 12 elementos. Escribir la posición donde se encuentra almacenado el número en el
  vector o el mensaje “NO” si no lo encuentra.
   */
  List<int> X = [];
  bool encontrado = false;

  print('Ingrese 12 números para el vector X:');
  for (int i = 0; i < 12; i++) {
    print('Número ${i + 1}: ');
    int numero = int.parse(stdin.readLineSync()!);
    X.add(numero);
  }

  print('Ingrese el número a buscar en el vector X: ');
  int numeroBuscado = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < X.length; i++) {
    if (X[i] == numeroBuscado) {
      print('El número $numeroBuscado se encuentra en la posición $i del vector X.');
      encontrado = true;
      break;
    }
  }

  if (!encontrado) {
    print('El número $numeroBuscado no se encuentra en el vector X.');
  }
}
