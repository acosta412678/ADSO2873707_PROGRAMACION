void main(List<String> args) {
  //Consultar el método de ordenación por burbuja y ordenar un arreglo entero de 10 elementos
  List<int> arreglo = [5, 3, 8, 1, 2, 7, 10, 4, 6, 9];
  print('Arreglo original: $arreglo');

  for (int i = 0; i < arreglo.length - 1; i++) {
    for (int j = 0; j < arreglo.length - 1 - i; j++) {
      if (arreglo[j] > arreglo[j + 1]) {
        int temp = arreglo[j];
        arreglo[j] = arreglo[j + 1];
        arreglo[j + 1] = temp;
      }
    }
  }
  print('Arreglo ordenado: $arreglo');
}
