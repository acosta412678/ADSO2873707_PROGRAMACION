import 'dart:io';

void main() {
/*  LUIS MIGUEL ACOSTA  - Condicionales Anidados - EJE_03
En una fábrica de computadoras se planea ofrecer a los clientes un descuento que dependerá del
número de computadoras que compre. Si las computadoras son menos de cinco se les dará un 10%
de descuento sobre el total de la compra; si el número de computadoras es mayor o igual a cinco
pero menos de diez se le otorga un 20% de descuento; y si son 10 o más se les da un 40% de
descuento. El precio de cada computadora es de $1100000
*/
// Definición de variables
  int cantidadComputadoras;
  double precioComputadora = 1100000;
  double totalCompra, totalConDescuento, descuento;

  // Entrada
  stdout.write("Ingrese la cantidad de computadoras a comprar: ");
  cantidadComputadoras = int.parse(stdin.readLineSync()!);

  // Proceso
  totalCompra = cantidadComputadoras * precioComputadora;
  if (cantidadComputadoras < 5) {
    descuento = totalCompra * 0.1;
    totalConDescuento = totalCompra - descuento; 
  } else if (cantidadComputadoras < 10) {
    descuento = totalCompra * 0.2;
    totalConDescuento = totalCompra - descuento; 
  } else {
    descuento = totalCompra * 0.4;
    totalConDescuento = totalCompra - descuento; 
  }

  // Salida
  print("El total de la compra es: $totalCompra");
  print("El total con descuento es: $totalConDescuento");
}
