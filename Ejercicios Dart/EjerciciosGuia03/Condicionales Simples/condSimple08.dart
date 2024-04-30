import 'dart:io';

void main() {
/*  LUIS MIGUEL ACOSTA  - Condicionales Simples - EJE_08
Dada la duración en minutos de una llamada calcular el costo, considerando:
• Hasta tres minutos el costo es 600
• Por encima de tres minutos es 600 más 150 por cada minuto adicional a los tres primeros.
*/
// DEFICIÓN variables
  double duracionLlamada, costo, minutosExtras, costoExtra;
  // ENTRADA
  print("Ingrese la duración de la llamada en minutos");
  duracionLlamada = double.parse(stdin.readLineSync()!);
  // PROCESO
  costo = 600;
  minutosExtras = duracionLlamada - 3;
  costoExtra = 150;
  if (duracionLlamada > 3) {
    costo = costo + (minutosExtras * costoExtra);
  }
  // SALIDA
  print("El costo de la llamada es: $costo");
}
