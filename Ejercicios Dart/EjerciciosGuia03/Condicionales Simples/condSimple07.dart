import 'dart:io';

void main() {
/*  LUIS MIGUEL ACOSTA  - Condicionales Simples - EJE_07
Una compañía de seguros esta abriendo un depto. de finanzas y estableció un programa para captar
clientes, que consiste en lo siguiente: Si el monto por el que se efectúa la fianza es menor que $50
000 la cuota a pagar será por el 3% del monto, y si el monto es mayor que $50 000 la cuota a pagar
será el 2% del monto. La compañia desea determinar cual será la cuota que debe pagar un cliente
*/
// DEFICIÓN variables
  double monto, cuotaPagar;
  // ENTRADA
  print("Ingrese el monto por el que se efectua la fianza");
  monto = double.parse(stdin.readLineSync()!);
  // PROCESO
  cuotaPagar = monto * 0.3;
  if (monto > 50000) {
    cuotaPagar = monto * 0.2;
  }
  // SALIDA
  print("La cuota a pagar es de: $cuotaPagar");
}
