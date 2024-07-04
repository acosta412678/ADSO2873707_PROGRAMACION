import 'dart:io';

void main(List<String> args) {
  /**Una agencia de seguros desea obtener un reporte al final del día de sus n empleados para determinar
  cuál fue el empleado que obtuvo el mayor sueldo en base a sus ventas y comisiones, se registrará el
  nombre del empleado la edad y el sueldo que obtuvo al final del día. Desarrollar un programa que
  pida al usuario el nombre de los n empleados, su edad y el sueldo para generar un reporte que lo
  muestre en pantalla de la siguiente manera: el nombre del empleado, edad, sueldo, el empleado con
  mayor sueldo, el sueldo del empleado que gana más y su edad.
  Debe declarar un arreglo de enteros para la edad.
  Debe declarar un arreglo de reales para el sueldo.
  Debe declarar un arreglo de cadena para el nombre */
  print('Ingrese el número de empleados: ');
  int n = int.parse(stdin.readLineSync()!);

  List<String> nombres = [];
  List<int> edades = [];
  List<double> sueldos = [];

  for (int i = 0; i < n; i++) {
    print('Nombre del empleado ${i + 1}: ');
    String nombre = stdin.readLineSync()!;
    nombres.add(nombre);

    print('Edad del empleado ${i + 1}: ');
    int edad = int.parse(stdin.readLineSync()!);
    edades.add(edad);

    stdout.write('Sueldo del empleado ${i + 1}: ');
    double sueldo = double.parse(stdin.readLineSync()!);
    sueldos.add(sueldo);
  }

  int indiceMaxSueldo = 0;
  double maxSueldo = sueldos[0];

  for (int i = 1; i < n; i++) {
    if (sueldos[i] > maxSueldo) {
      maxSueldo = sueldos[i];
      indiceMaxSueldo = i;
    }
  }

  print('\nReporte de empleados:');
  for (int i = 0; i < n; i++) {
    print('Empleado ${i + 1}:');
    print('  Nombre: ${nombres[i]}');
    print('  Edad: ${edades[i]}');
    print('  Sueldo: \$${sueldos[i]}');
  }

  print('\nEmpleado con mayor sueldo:');
  print('  Nombre: ${nombres[indiceMaxSueldo]}');
  print('  Edad: ${edades[indiceMaxSueldo]}');
  print('  Sueldo: \$${sueldos[indiceMaxSueldo]}');
}
