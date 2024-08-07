import 'dart:io';
import 'empleado.dart';

void main(List<String> args) {
  List<Empleado> empleados = [];

  print('Ingrese el número de empleados a recolectar información:');
  int numEmpleados = int.parse(stdin.readLineSync()!);

  // Recolectar la información de los empleados
  for (int i = 0; i < numEmpleados; i++) {
    print('Ingrese los datos del empleado ${i + 1}:');

    print('Nombre:');
    String nombre = stdin.readLineSync()!;

    print('Edad:');
    int edad = int.parse(stdin.readLineSync()!);

    print('Salario:');
    double salario = double.parse(stdin.readLineSync()!);

    print('Puesto:');
    String puesto = stdin.readLineSync()!;

    print('Tipo de contrato (Indefinido, Temporal, Contratista):');
    String tipoContrato = stdin.readLineSync()!;

    // Crear una instancia de Empleado y añadir a la lista
    Empleado empleado = Empleado(nombre, edad, salario, puesto, tipoContrato);
    empleados.add(empleado);
  }

  // Mostrar la información de cada empleado
  print('Información de los empleados:');
  for (int i = 0; i < empleados.length; i++) {
    Empleado empleado = empleados[i];
    print('Empleado ${i + 1}:');
    empleado.mostrarInformacion();
    double bonificacion = empleado.calcularBonificacion();
    print('Bonificación: $bonificacion');
    print('Ingrese el nuevo puesto:');
    String nuevoPuesto = stdin.readLineSync()!;
    empleado.cambiarPuesto(nuevoPuesto);
    empleado.cumplirAnios();
    empleado.mostrarInformacion();
  }
}
