import 'dart:io';

void main() {
/*  LUIS MIGUEL ACOSTA  - Condicionales Anidados - EJE_06
El dueño de una empresa desea planificar las decisiones financieras que tomara en el Siguiente año.
La manera de planificarlas depende de lo siguiente:
Si actualmente su capital se encuentra con saldo negativo, pedirá un préstamo bancario para que su
nuevo saldo sea de $1000000. Si su capital tiene actualmente un saldo positivo pedirá un préstamo
bancario para tener un nuevo saldo de $2000000, pero si su capital tiene actualmente un saldo
superior a los $2000000 no pedirá ningún préstamo.
Posteriormente repartirá su presupuesto de la siguiente manera.
• $500000 para equipo de computo
• $200000 para mobiliario
• y del resto, la mitad será para la compra de insumos y la otra para otorgar incentivos al personal.
Solicitar el capital y en base a este desplegar que cantidades se destinaran para la compra de insumos
e incentivos al personal y, en caso de que fuera necesario, a cuanto ascendería la cantidad que se
pediría al banco.
*/
 // Definición de variables
  double capitalActual;
  double presupuestoEquipos = 500000;
  double presupuestoMobiliario = 200000;

  // Entrada
  print("Ingrese el capital actual de la empresa:");
  capitalActual = double.parse(stdin.readLineSync()!);

  // Proceso
  double prestamo = 0;
  double presupuestoInsumos;
  double presupuestoIncentivos;
  double presupuestoRestante = capitalActual + prestamo - presupuestoEquipos - presupuestoMobiliario;
  if (capitalActual < 0) {
    prestamo = 1000000 - capitalActual;
  } else if (capitalActual < 2000000) {
    prestamo = 2000000 - capitalActual;
  }
  if (presupuestoRestante >= 0) {
    presupuestoInsumos = presupuestoRestante / 2;
    presupuestoIncentivos = presupuestoRestante / 2;
  } else {
    presupuestoInsumos = 0;
    presupuestoIncentivos = 0;
  }

  // Salida
  print("Presupuesto destinado para la compra de insumos: $presupuestoInsumos");
  print("Presupuesto destinado para incentivos al personal: $presupuestoIncentivos");

  if (prestamo > 0) {
    print("Se solicitará un préstamo bancario por $prestamo");
  }
}

