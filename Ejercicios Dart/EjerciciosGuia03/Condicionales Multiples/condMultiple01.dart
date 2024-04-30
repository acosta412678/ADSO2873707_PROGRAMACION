import 'dart:io';

void main() {
/*  LUIS MIGUEL ACOSTA  - Condicionales Multiples - EJE_01
  La empresa comercializadora Solva vende escobas, recogedores y aromatizantes, clasifica a sus
clientes de acuerdo a la frecuencia de compras con las condiciones siguientes:
 Si el cliente es de la categoría 1 se le descuenta el 5%
 Si el cliente es de la categoría 2 se le descuenta el 8%
 Si el cliente de de la categoría 3 se le descuenta el 12%
 Si el cliente es de la categoría 4 se le descuenta el 15%

 Cuando el cliente realiza una compra se generan los siguientes datos:
 Nombre del cliente
 Tipo de cliente
 Cantidad comprada de escobas, recogedores y aromatizantes.
Los precios de estos elementos son.
• Escobas. 3000.
• Recogedores. 2000
• Aromatizantes. 1000
Desarrollar un programa en que lea estos datos y calcule y muestre en pantalla:
 Nombre del cliente
 Subtotal a pagar
 Descuento
 Total a pagar.
*/

// DEFICIÓN variables
  String nombreCliente;
  int categoria, cantEscobas, cantRecogedores, cantAromatizantes;
  double totalEscobas, totalRecogedores, totalAromatizantes, descuento;
  int precioEscoba = 3000, precioRecogedor = 2000, precioAromatizante = 1000;
  double subTotalCompra, totalCompra;

  //ENTRADA
  stdout.writeln("Ingrese su nombre");
  nombreCliente = stdin.readLineSync()!;
  stdout.writeln("Ingrese la cantidad de escobas, recogedores y aromatizantes");
  cantEscobas = int.parse(stdin.readLineSync()!);
  cantRecogedores = int.parse(stdin.readLineSync()!);
  cantAromatizantes = int.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese la categoria del cliente");
  categoria = int.parse(stdin.readLineSync()!);

  // PROCESO
  totalCompra = 0;
  if (categoria < 1 || categoria > 4) {
    print("La categoria es incorrecta");
  } else {
    totalEscobas = cantEscobas.toDouble() * precioEscoba;
    totalRecogedores = cantRecogedores.toDouble() * precioRecogedor;
    totalAromatizantes = cantAromatizantes.toDouble() * precioAromatizante;
    subTotalCompra = totalEscobas + totalRecogedores + totalAromatizantes;
    switch (categoria) {
      case 1:
        descuento = subTotalCompra * 0.05;
        totalCompra = subTotalCompra - descuento;
        break;
      case 2:
        descuento = subTotalCompra * 0.08;
        totalCompra = subTotalCompra - descuento;
        break;
      case 3:
        descuento = subTotalCompra * 0.12;
        totalCompra = subTotalCompra - descuento;
        break;
      case 4:
        descuento = subTotalCompra * 0.15;
        totalCompra = subTotalCompra - descuento;
        break;
      default:
      totalCompra = 0;
    }
  }
  // Salida
  print("El nombre del cliente es: $nombreCliente");
  print("El subtotal a pagar es: $nombreCliente");
  print("El descuento es: $nombreCliente");
  print("El total a pagar es: $totalCompra");
}
