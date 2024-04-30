import 'dart:io';

void main() {
/*  LUIS MIGUEL ACOSTA  - Condicionales Anidados - EJE_04
En un montallantas se ha establecido una promoción de las llantas marca “Ponchadas”, dicha
promoción consiste en lo siguiente:
Si se compran menos de cinco llantas el precio es de $90000 cada una, de $80000 si se compran de
cinco a 10 y de $70000 si se compran más de 10. Obtener la cantidad de dinero que una persona
tiene que pagar por cada una de las llantas que compra y la que tiene que pagar por el total de la
compra
*/
// Definición de variables
  int cantidadLlantas;
  double precioUnitario, totalCompra;

  // Entrada
  stdout.write("Ingrese la cantidad de llantas a comprar: ");
  cantidadLlantas = int.parse(stdin.readLineSync()!);

  // Proceso
  if (cantidadLlantas < 5) {
    precioUnitario = 90000; 
  } else if (cantidadLlantas <= 10) {
    precioUnitario = 80000; 
  } else {
    precioUnitario = 70000; 
  }
  totalCompra = cantidadLlantas * precioUnitario;

  // Salida
  print("El precio por cada llanta es: $precioUnitario");
  print("El total de la compra es: $totalCompra");
}
