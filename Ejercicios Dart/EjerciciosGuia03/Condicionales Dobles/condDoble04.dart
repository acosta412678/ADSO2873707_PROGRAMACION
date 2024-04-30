import 'dart:io';

void main() {
/*  LUIS MIGUEL ACOSTA  - Condicionales Dobles - EJE_04
Una empresa de bienes raíces ofrece casas de interés social, bajo las siguientes condiciones: Si los ingresos del
comprador son mayores o iguales a $800000 la cuota inicial será del 15% del costo de la casa y el resto se
distribuirá en pagos mensuales, a pagar en diez años. Si los ingresos del comprador son inferiores a de $800000
la cuota inicial será del 30% del costo de la casa y el resto se distribuirá en pagos mensuales a pagar en 7 años.
La empresa quiere saber cuanto debe pagar un comprador por concepto de cuota inicial y cuanto por cada
pago mensual ingresando el valor de la casa.
*/
// DEFICIÓN variables
  double ingresos, cuotainicial, costoCasa, restanteCasa, mesesCuota;
  //ENTRADA
  print("Ingrese el costo de la casa");
  costoCasa = double.parse(stdin.readLineSync()!);
  print("Cuales son sus ingresos mensuales");
  ingresos = double.parse(stdin.readLineSync()!);
  // PROCESO
  if (ingresos >= 800000) {
    cuotainicial = costoCasa * 0.15;
    restanteCasa = costoCasa - cuotainicial;
    mesesCuota = restanteCasa / 120;
  } else {
    cuotainicial = costoCasa * 0.3;
    restanteCasa = ingresos - cuotainicial;
    mesesCuota = restanteCasa / 84;
  }
  // SALIDA
  print("Su cuota inicial a pagar es de: $cuotainicial");
  print("Y su pago mensual va ser de: $mesesCuota");
}
