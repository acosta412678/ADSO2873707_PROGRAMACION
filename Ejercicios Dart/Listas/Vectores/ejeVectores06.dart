/*
Diseñe un algoritmo que lea dos vectores A y B de 7 elementos cada uno y multiplique el primer
elemento de A con el último elemento de B y luego el segundo elemento de A por el sexto elemento
de B y así sucesivamente hasta llegar al séptimo elemento de A por el primer elemento de B. El
resultado de la multiplicación almacenarlo en un vector C. Mostrar el resultado.
*/
import 'dart:io';

void main(List<String> args) {
  List<double> vectorA = []; 
  List<double> vectorB = [];
  List<double> vectorC = [];

  print("Ingrese los 7 elementos del vector A:");
  for (int i = 0; i < 7; i++) {
    stdout.write("Elemento ${i + 1}: ");
    double elementoA = double.parse(stdin.readLineSync()!);
    vectorA.add(elementoA);
  }
  print("Ingrese los 7 elementos del vector B");
  for (int i = 0; i <7; i++) {
    stdout.write('Elemento ${i + 1}:');
    double elementoB = double.parse(stdin.readLineSync()!);
    vectorB.add(elementoB);
  }

  for (int i = 0; i < vectorA.length; i++) {
    vectorC.add(vectorA[i] * vectorB[vectorB.length - 1 - i]);
  }

  print("El vector resultante C es: $vectorC");

}