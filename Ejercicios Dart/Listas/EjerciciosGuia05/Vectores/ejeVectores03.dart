import 'dart:io';

void main(List<String> args) {
  /*Almacenar 15 números en un vector, imprimir cuantos son ceros, cuántos son negativos, cuantos
  positivos. Imprimir además la suma de los negativos, la suma de los ceros y la suma de los positivos.*/
  List<int> numeros = [];
  int conteoCeros = 0;
  int conteoNegativos = 0;
  int conteoPositivos = 0;
  int sumaCeros = 0;
  int sumaNegativos = 0;
  int sumaPositivos = 0;

  print('Introduce 15 valores:');
  for (int i = 0; i < 15; i++) {
    print('Valor ${i + 1}: ');
    int valor = int.parse(stdin.readLineSync()!);
    numeros.add(valor);
    if (valor == 0) {
      conteoCeros++;
      sumaCeros += valor;
    } else if (valor < 0) {
      conteoNegativos++;
      sumaNegativos += valor;
    } else {
      conteoPositivos++;
      sumaPositivos += valor;
    }
  }

  print('Números: $numeros');
  print('Cantidad de ceros: $conteoCeros');
  print('Cantidad de negativos: $conteoNegativos');
  print('Cantidad de positivos: $conteoPositivos');
  print('Suma de ceros: $sumaCeros');
  print('Suma de negativos: $sumaNegativos');
  print('Suma de positivos: $sumaPositivos');
}
