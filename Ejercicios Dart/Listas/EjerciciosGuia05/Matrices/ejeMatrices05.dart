import 'dart:io';

void main(List<String> args) {
  /**Hacer un algoritmo que solicite los valores para llenar dos matrices de 3 * 3 y las multiplique,
  almacenando el resultado en otra matriz de 3 * 3.
  Se debe consultar el método para multiplicar matrices.
  Como resultado de la ejecución del programa, además del mensaje correspondiente, deberás mostrar en
  pantalla el arreglo de entrada (el cuadro), la suma de cada renglón y la suma de cada columna. */
  List<List<int>> matrizA = List.generate(3, (_) => List.filled(3, 0));
  List<List<int>> matrizB = List.generate(3, (_) => List.filled(3, 0));
  List<List<int>> matrizC = List.generate(3, (_) => List.filled(3, 0));

  print('Ingrese los valores para la matriz A:');
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      print('A[$i][$j]: ');
      matrizA[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  print('Ingrese los valores para la matriz B:');
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      print('B[$i][$j]: ');
      matrizB[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      for (int k = 0; k < 3; k++) {
        matrizC[i][j] += matrizA[i][k] * matrizB[k][j];
      }
    }
  }

  print('La matriz resultante C es:');
  for (int i = 0; i < 3; i++) {
    print(matrizC[i]);
  }

  for (int i = 0; i < 3; i++) {
    int sumaRenglon = 0;
    for (int j = 0; j < 3; j++) {
      sumaRenglon += matrizC[i][j];
    }
    print('Suma del renglón $i: $sumaRenglon');
  }

  for (int j = 0; j < 3; j++) {
    int sumaColumna = 0;
    for (int i = 0; i < 3; i++) {
      sumaColumna += matrizC[i][j];
    }
    print('Suma de la columna $j: $sumaColumna');
  }
}