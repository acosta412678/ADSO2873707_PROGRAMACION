import 'dart:io';

void main(List<String> args) {
  /**Calcular el promedio de 50 valores almacenados en un vector. Determinar además cuantos son
  mayores que el promedio, imprimir el promedio, el número de datos mayores que el promedio y una
  lista de valores mayores que el promedio.
  */
  List<int> valores = [];
  int suma = 0;

  print('Introduce 50 valores:');
  for (int i = 0; i < 50; i++) {
    stdout.write('Valor ${i + 1}: ');
    int valor = int.parse(stdin.readLineSync()!);
    valores.add(valor);
    suma += valor;
  }

  double promedio = suma / valores.length;
  List<int> mayoresQuePromedio = [];

  for (int valor in valores) {
    if (valor > promedio) {
      mayoresQuePromedio.add(valor);
    }
  }

  print('Valores: $valores');
  print('Promedio: $promedio');
  print('Número de valores mayores que el promedio: ${mayoresQuePromedio.length}');
  print('Valores mayores que el promedio: $mayoresQuePromedio');
}
