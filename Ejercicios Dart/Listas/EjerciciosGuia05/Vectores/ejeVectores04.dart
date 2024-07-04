import 'dart:io';

void main(List<String> args) {
  /**Almacenar 8 números en un vector, almacenarlos en otro vector en orden inverso al vector original
  e imprimir el vector resultante. */
  List<int> vectorOriginal = [];
  List<int> vectorInverso = [];

  print('Introduce 8 números:');
  for (int i = 0; i < 8; i++) {
    print('Número ${i + 1}: ');
    int numero = int.parse(stdin.readLineSync()!);
    vectorOriginal.add(numero);
  }
  for (int i = vectorOriginal.length - 1; i >= 0; i--) {
    vectorInverso.add(vectorOriginal[i]);
  }

  print('Vector original: $vectorOriginal');
  print('Vector inverso: $vectorInverso');
}
