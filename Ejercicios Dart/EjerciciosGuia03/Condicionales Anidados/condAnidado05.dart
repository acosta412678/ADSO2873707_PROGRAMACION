import 'dart:io';

void main() {
/*  LUIS MIGUEL ACOSTA  - Condicionales Anidados - EJE_05
Una frutería ofrece las manzanas con descuento según la siguiente tabla:
NUM. DE KILOS COMPRADOS % DESCUENTO
0 - 2 0
2.01 - 5 10
5.01 - 10 15
10.01 en adelante 20
Determinar cuanto pagara una persona que compre manzanas es esa frutería sabiendo que el kilo
vale $1300
*/
// Definición de variables
  double kilosComprados, precioKilo = 1300, totalPagar, descuento;

  // Entrada
  stdout.write("Ingrese la cantidad de kilos de manzanas a comprar: ");
  kilosComprados = double.parse(stdin.readLineSync()!);

  // Proceso
  totalPagar = kilosComprados * precioKilo;
  if (kilosComprados <= 2) {
    totalPagar;
  } else if (kilosComprados <= 5) {
    descuento = totalPagar * 0.10;
    totalPagar = totalPagar - descuento;
  } else if (kilosComprados <= 10) {
    descuento = totalPagar * 0.15;
    totalPagar = totalPagar - descuento;
  } else {
    descuento = totalPagar * 0.2;
    totalPagar = totalPagar - descuento;
  }

  // Salida
  print("El total a pagar es: $totalPagar");
}
