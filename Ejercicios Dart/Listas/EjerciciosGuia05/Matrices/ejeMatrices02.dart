import 'dart:io';

void main(List<String> args) {
  /**Hacer un algoritmo que llene una matriz de 10 * 10 y determine la posición [fila, columna] del número
mayor almacenado en la matriz. Los números son diferentes */
  List<List<int>> matriz = List.generate(10, (_) => List.filled(10, 0));
  int maxValor = -999999;
  int maxFila = 0;
  int maxColumna = 0;

  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      print('Ingrese el elemento [$i, $j]: ');
      matriz[i][j] = int.parse(stdin.readLineSync()!);
      if (matriz[i][j] > maxValor) {
        maxValor = matriz[i][j];
        maxFila = i;
        maxColumna = j;
      }
    }
  }

  print('El número mayor es $maxValor y se encuentra en la posición [$maxFila, $maxColumna]');
}
