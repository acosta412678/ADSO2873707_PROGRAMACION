import 'dart:io';

void main() {
/** LUIS MIGUEL ACOSTA  - Condicionales Simples - EJE_04 
*  Hacer un algoritmo que imprima el nombre de un artículo, clave, precio original y su precio con
*  descuento. El descuento lo hace en base a la clave, si la clave es 1 el descuento es del 10% y si la clave
* es 2 el descuento en del 20% (solo existen dos claves).
*/
// DECLARACIÓN vbles
  String? nombreArticulo;
  double descuento, precioOriginal, precioDescuento;
  int clave;
  // ENTRADA Algoritmo
  print("Ingrese el nombre del artículo");
  nombreArticulo = stdin.readLineSync();
  print("Ingrese la clave (1) o (2)");
  clave = int.parse(stdin.readLineSync()!);
  print("Ingrese el precio del articulo");
  precioOriginal = double.parse(stdin.readLineSync()!);
  // PROCESO Algoritmo
  descuento = precioOriginal * 0.10;
  if (clave == 2) {
    descuento = precioOriginal * 0.20;
  }
  precioDescuento = precioOriginal - descuento;
  // SALIDA Algoritmo
  stdout.writeln("EL articulo $nombreArticulo tiene un precio de $precioOriginal");
  stdout.write("El precio con descuento es de $precioDescuento");
}
