/*
calcular el promedio de 50 valores almacenados en un vector.
Determinar ademasa cuantos son mayores que el
promedio, imprimir el promedio, el numero de datos
mayoeres que el promedio y una lista de valores
mayoeres que el promedio.
*/
import 'dart:io';

void main(List<String> args) {
List<double> numeros = [];
List<double> mayorPromedio = [];
int cantNumeros = 11;
double numero, promedio, sumaNumeros=0;
// Ciclo para llenar el vector
for (int i= 0; i < cantNumeros; i++) {
  print("Ingrese el numero #${i + 1}");
  numero = double.parse(stdin.readLineSync()!);
  numeros.add(numero);
  sumaNumeros += numeros [i];
}
promedio = sumaNumeros / cantNumeros;
// ciclo para recorrer el vector
for (var i = 0; i < cantNumeros; i++){
  if (numeros[i] > promedio) {
  mayorPromedio.add(numeros[i]);
  }

}
// Salida
print("El promedio es: $promedio");
print("La cantidad nums mayores a promedio es: ${mayorPromedio.length}");
print("La lista de mayores al promedio es $mayorPromedio");

}

