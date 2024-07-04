import 'dart:io';

void main(List<String> args) {
  /**Llenar dos vectores A y B de 10 elementos cada uno, sumar el elemento uno del vector A con el
  elemento uno del vector B y así sucesivamente hasta 10, almacenar el resultado en un vector C, e
  imprimir el vector resultante.
  */
  List<int> vectorA = [];
  List<int> vectorB = [];
  List<int> vectorC = [];

  print('Introduce 10 valores para el vector A:');
  for (int i = 0; i < 10; i++) {
    stdout.write('Valor A${i + 1}: ');
    int valor = int.parse(stdin.readLineSync()!);
    vectorA.add(valor);
  }

  print('Introduce 10 valores para el vector B:');
  for (int i = 0; i < 10; i++) {
    stdout.write('Valor B${i + 1}: ');
    int valor = int.parse(stdin.readLineSync()!);
    vectorB.add(valor);
  }

  for (int i = 0; i < 10; i++) {
    vectorC.add(vectorA[i] + vectorB[i]);
  }

  print('Vector A: $vectorA');
  print('Vector B: $vectorB');
  print('Vector C (resultado de la suma): $vectorC');
}
