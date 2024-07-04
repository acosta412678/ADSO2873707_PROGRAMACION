import 'dart:io';

void main(List<String> args) {
  /**Hacer un algoritmo que almacene números en una matriz de 5 * 6. Imprimir la suma de los números
  almacenados en la matriz.
  */
  List<List<int>> matriz = List.generate(5, (_) => List<int>.filled(6, 0));

  print('Ingrese los números para llenar la matriz (5 filas x 6 columnas):');
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 6; j++) {
      print('Valor en la posición [$i][$j]: ');
      matriz[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  int suma = 0;
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 6; j++) {
      suma += matriz[i][j];
    }
  }

  print('\nMatriz ingresada:');
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 6; j++) {
      print('${matriz[i][j]}\t');
    }
    print('');
  

  print('\nLa suma de todos los números en la matriz es: $suma');
}
}