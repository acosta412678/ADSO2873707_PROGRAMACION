import 'dart:io';

void main(List<String> args) {
  /**Diseñe un algoritmo que lea dos vectores A y B de 7 elementos cada uno y multiplique el primer
  elemento de A con el último elemento de B y luego el segundo elemento de A por el sexto elemento
  de B y así sucesivamente hasta llegar al séptimo elemento de A por el primer elemento de B. El
  resultado de la multiplicación almacenarlo en un vector C. Mostrar el resultado. */
  List<int> A = [];
  List<int> B = [];
  List<int> C = [];

  print('Ingrese 7 números para el vector A:');
  for (int i = 0; i < 7; i++) {
    print('Elemento A${i + 1}: ');
    int elemento = int.parse(stdin.readLineSync()!);
    A.add(elemento);
  }

  print('Ingrese 7 números para el vector B:');
  for (int i = 0; i < 7; i++) {
   print('Elemento B${i + 1}: ');
    int elemento = int.parse(stdin.readLineSync()!);
    B.add(elemento);
  }

  for (int i = 0; i < 7; i++) {
    int resultado = A[i] * B[6 - i]; 
    C.add(resultado);
  }

  print('Vector C (resultados de las multiplicaciones): $C');
}
