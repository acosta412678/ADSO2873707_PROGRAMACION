import 'dart:io';

void main() {
/*  LUIS MIGUEL ACOSTA  - Condicionales Dobles - EJE_03
Hacer un algoritmo que calcule el total a pagar por la compra de camisas. Si se compran tres camisas o mas se
aplica un descuento del 20% sobre el total de la compra y si son menos de tres camisas un descuento del 10%
*/
// DEFICIÓN variables
  double precioCamisas, camisas, precioDescuento, descuento, precioTotal;
  // ENTRADA
  print("Ingrese el precio de las camisas");
  precioCamisas = double.parse(stdin.readLineSync()!);
  print("Ingrese la cantidad de camisas");
  camisas = double.parse(stdin.readLineSync()!);
  //PROCESO
  precioTotal = precioCamisas * camisas;
  if (camisas >= 3) {
    descuento = precioTotal * 0.2;
    precioDescuento = precioTotal - descuento;
  } else {
    descuento = precioTotal * 0.1;
    precioDescuento = precioTotal - descuento;
  }
  //SALIDA
  print("El total a pagar es: $precioDescuento");
}
