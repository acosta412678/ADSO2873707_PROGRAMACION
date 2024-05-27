/*
Almacenar 15 numeros en un vector, imprimir cuantos ceros, cuantos son negativos,
cuantos postivos. Imprimir ademas la suma de los negativos, la suma de los ceros
y la suma de los positivos.
*/
import 'dart:io';

void main(List<String> args) {
 List<int> numeros = [];

  for (int i = 0; i < 15; i++) {
    stdout.write("Ingrese el número ${i + 1}: ");
    int numero = int.parse(stdin.readLineSync()!);
    numeros.add(numero);
  }

  int ceros = 0;
  int positivos = 0;
  int negativos = 0;
  int sumaCeros = 0;
  int sumaPositivos = 0;
  int sumaNegativos = 0;

  for (int num in numeros) {
    if (num == 0) {
      ceros++;
      sumaCeros += num;
    } else if (num > 0) {
      positivos++;
      sumaPositivos += num;
    } else {
      negativos++;
      sumaNegativos += num;
    }
  }

  print("Cantidad de ceros: $ceros");
  print("Cantidad de positivos: $positivos");
  print("Cantidad de negativos: $negativos");
  print("Suma de ceros: $sumaCeros");
  print("Suma de positivos: $sumaPositivos");
  print("Suma de negativos: $sumaNegativos");
}