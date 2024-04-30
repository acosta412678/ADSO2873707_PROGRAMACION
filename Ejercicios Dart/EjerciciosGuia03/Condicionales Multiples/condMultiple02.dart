import 'dart:io';

void main() {
/*  LUIS MIGUEL ACOSTA  - Condicionales Multiples - EJE_02
Una compañía de fumigación utiliza aviones para fumigar las cosechas contra una gran variedad de
plagas. Las cantidades que la compañía cobra a los granjeros depende de qué es lo que se desea
fumigar y del número de hectáreas que se desea fumigar, de acuerdo con la siguiente distribución :
Tipo 1 : Fumigación contra malas hierbas, $50000 por hectárea
Tipo 2 : Fumigación contra moscas y mosquitos, $70000 por hectárea
Tipo 3 : Fumigación contra gusanos, $80000 por hectárea.
Tipo 4 : Fumigación contra todo lo anterior, $190000 por hectárea.
• Si el área a fumigar es mayor de 100 hectáreas, el granjero goza de un 5% de descuento.
• Además, si la cuenta total sobrepasa el $1000000 se hace acreedor a un 10% de descuento sobre la
cantidad que sobrepase el $1000000.
• Si ambos descuentos son aplicables, el correspondiente a la superficie se considera primero.
Diseñe el programa que lea el nombre del granjero, el tipo de fumigación solicitada (1-4) y el número de
hectáreas a fumigar.
Se debe imprimir el nombre del granjero y la cuenta total
*/
  // Definición de variables
  String? nombreGranjero;
  int tipoFumigacion;
  double numHectareas, precioFumigacion, totalDescuento, totalPagar, descuento;

  // Entrada
  print("Ingrese el nombre del granjero:");
  nombreGranjero = stdin.readLineSync()!;
  print("Ingrese el tipo de fumigación (1-4):");
  tipoFumigacion = int.parse(stdin.readLineSync()!);
  print("Ingrese el número de hectáreas a fumigar:");
  numHectareas = double.parse(stdin.readLineSync()!);

  // Proceso
  switch (tipoFumigacion) {
    case 1:
      precioFumigacion = 50000;
      break;
    case 2:
      precioFumigacion = 70000;
      break;
    case 3:
      precioFumigacion = 80000;
      break;
    case 4:
      precioFumigacion = 190000;
      break;
    default:
      precioFumigacion = 0;
  }
  totalPagar = precioFumigacion * numHectareas;
  totalDescuento = precioFumigacion * numHectareas;
  if (numHectareas > 100) {
    descuento = totalPagar * 0.05;
    totalDescuento = totalPagar;
  }
  if (totalPagar > 1000000) {
    descuento = totalPagar * 0.10;
    totalDescuento = totalPagar - descuento;
  }
  if (numHectareas > 100 && totalPagar > 1000000) {
    descuento = totalPagar * 0.05;
    totalDescuento = totalPagar - descuento;
  }
  // Salida
  print("Nombre del granjero: $nombreGranjero");
  print("Cuenta total: $totalDescuento");
}
