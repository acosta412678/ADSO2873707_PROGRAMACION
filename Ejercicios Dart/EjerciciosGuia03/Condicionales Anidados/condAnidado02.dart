import 'dart:io';

void main() {
/*  LUIS MIGUEL ACOSTA  - Condicionales Anidados - EJE_02
 Dado el monto de una compra calcular el descuento considerado
• Descuento es 20% si el monto es mayor a 20000 pesos.
• Descuento es 10% si el monto es mayor a 10000 pesos y menor o igual a 20000 pesos.
• no hay descuento si el monto es menor o igual a 10000 pesos.
*/
// Definición de variables
  double montoCompra, montoConDescuento, descuento;

  // Entrada
  stdout.write("Ingrese el monto de la compra en pesos: ");
  montoCompra = double.parse(stdin.readLineSync()!);

  // Proceso
  if (montoCompra > 20000) {
    descuento = montoCompra * 0.2;
    montoConDescuento = montoCompra - descuento;
  } else if (montoCompra > 10000 && montoCompra <= 20000) {
    descuento = montoCompra * 0.10;
    montoConDescuento = montoCompra - descuento;
  } else {
    montoConDescuento = montoCompra;
  }

  // Salida
  print("El monto con descuento es: $montoConDescuento");
}
