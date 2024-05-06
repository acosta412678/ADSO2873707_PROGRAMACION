import 'dart:io';

void main(List<String> args) {
  /*Realizar un algoritmo que permita mostrar al usuario un listado de opciones tipo menú, para
realizar una transacción en un banco (Determinar las que crea necesarias). La última opción
será la de salir y allí se terminará el ciclo, de lo contrario mostrará las otras opciones mientras
el usuario quiera. No se deberá implementar las acciones como tal sino solo prints que
indiquen las acciones realizadas */
  int opcion;
  do {
     print("Ingrese una opcion: 1. Retirar dinero 2. Consignar dinero 3. Salir");
     opcion = int.parse(stdin.readLineSync()!);
  } while (opcion != 3);
}
