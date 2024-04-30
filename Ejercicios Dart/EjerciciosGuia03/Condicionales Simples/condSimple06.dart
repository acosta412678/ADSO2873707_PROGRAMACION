import 'dart:io';

void main() {
/*  LUIS MIGUEL ACOSTA  - Condicionales Simples - EJE_06
En un supermercado se hace una promoción, mediante la cual el cliente obtiene un descuento
dependiendo de un número que se escoge al azar. Si el numero escogido es menor que 74 el
descuento es del 15% sobre el total de la compra, si es mayor o igual a 74 el descuento es del 20%.
Obtener cuánto dinero se le descuenta.
*/
// DEFICIÓN variables
  double descuento, totalCompra, precioDescuento;
  int numero;
  // ENTRADA
  print("Ingrese un numero");
  numero = int.parse(stdin.readLineSync()!);
  print("Ingrese el total de la compra");
  totalCompra = double.parse(stdin.readLineSync()!);
  //PROCESO
  descuento = totalCompra * 0.15;
  if (numero >= 74) {
    descuento = totalCompra * 0.20;
  }
  precioDescuento = totalCompra - descuento;
  // SALIDA
  stdout.writeln("El dinero que se le descuenta es: $descuento");
  stdout.write("y su total a pagar es de: $precioDescuento");
}
