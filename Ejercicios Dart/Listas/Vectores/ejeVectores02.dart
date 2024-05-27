/*
Llenar dos vectores A y B de 10 elementos cada uno, sumar el elemnto uno del vector A con el elemento
uno del vector B y asi sucesivamente hasta 10, almacenar el resultado de un vector C, e
Imprimir el vector resultante.
*/
import 'dart:io';

void main(List<String> args) {
  List<double> vectorA = [];
  List<double> vectorB = [];
  List<double> vectorC = [];
  double a, b, cantNumeros=10;
  double suma=0;

   for (int i = 0; i < cantNumeros; i++) {
    print("Ingrese el valor de la lista Vector A: ${i+i}");
    a = double.parse(stdin.readLineSync()!);
    vectorA.add(a);

    print("Ingrese el valor de la lista Vector B: ${i+i}");
    b = double.parse(stdin.readLineSync()!);
    vectorB.add(b);
}

for (int i = 0; i < cantNumeros; i++ ) {
  suma = vectorA[i] + vectorB[i];
  vectorC.add(suma);
}
print("La lista A es: $vectorA");
print("La lista B es: $vectorB");
print("La lista A es: $suma");



}