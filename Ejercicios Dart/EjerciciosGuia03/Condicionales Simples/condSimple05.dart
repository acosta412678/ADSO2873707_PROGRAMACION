import 'dart:io';

void main() {
/*  LUIS MIGUEL ACOSTA  - Condicionales Simples - EJE_05
Calcular el total que una persona debe pagar en un almacén, si el precio de cada llanta es de $80000
si se compran menos de 5 llantas y de $70000 si se compran 5 o más.
*/
// DEFICIÓN variables
  double precioLlanta, precioFinal;
  int llantas;
  precioLlanta = 80000;
  // ENTRADA Algoritmo
  print("Ingrese el numero de llantas a comprar");
  llantas = int.parse(stdin.readLineSync()!);
  // PROCESO
  if (llantas >= 5) {
    precioLlanta = 70000;
  }
  precioFinal = llantas * precioLlanta;
  // SALIDA Algoritmo
  print("El precio a pagar es de: $precioFinal");
}
