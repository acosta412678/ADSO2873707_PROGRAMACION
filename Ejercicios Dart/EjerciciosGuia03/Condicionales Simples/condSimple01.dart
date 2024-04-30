import 'dart:io';

void main() {
/*  LUIS MIGUEL ACOSTA  - Condicionales Simples - EJE_01
  solicitar el nombre del empleado, número de horas trabajadas
   y la cuota por hora trabajada, para calcular el sueldo neto del empleado, se le otorga un incentivo
  del 5% si el empleado trabajó más de 40 horas. Imprimir el nombre del empleado y su sueldo.
*/
// DEFICIÓN variables
  String? teclado;
  String? nombre;
  double horasTrabajadas, cuotaXHora, sueldo, incentivo;
  // ENTRADA Algoritmo
  stdout.writeln("Cual es nombre?");
  nombre = stdin.readLineSync();
  stdout.writeln("Cuales son las horas trabajadas?");
  teclado = stdin.readLineSync();
  horasTrabajadas = double.parse(teclado!);
  stdout.writeln("Cual es la cuota por hora?");
  teclado = stdin.readLineSync();
  cuotaXHora = double.parse(teclado!);
  // PROCESO Algoritmo
  sueldo = horasTrabajadas * cuotaXHora;
  if (horasTrabajadas > 40) { //Condicional SIMPLE
    incentivo = sueldo * 0.05;
    sueldo = sueldo + incentivo;
  }
  // SALIDA Algoritmo
  print("El nombre del empleado es: $nombre");
  print("El sueldo es: $sueldo");
}
