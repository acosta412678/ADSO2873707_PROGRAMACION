/*
almacenar 8 numeros en un vector, almacenarlos en otro vector en orden
inverso al vector original e imprimir el vector resultante
*/
import 'dart:io';

void main(List<String> args) {
  List<int> numeros = [];
  List<int> inverso = [];
  

  print('Ingrese 8 números:');
  for (int i = 0; i < 8; i++) {
    stdout.write('Número ${i + 1}: ');
    int numero = int.parse(stdin.readLineSync()!);
    numeros.add(numero);
  }

  

  
  for (int i = numeros.length - 1; i >= 0; i--) {
    inverso.add(numeros[i]);
  }

  
  print('Vector original: $numeros');
  print('Vector en orden inverso: $inverso');

}