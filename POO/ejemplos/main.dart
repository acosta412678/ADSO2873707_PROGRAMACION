import 'dart:io';

import 'empleado.dart';

void main() {
  List<Empleado> empleados = [];

  // Solicitar información al usuario para crear empleados
  for (int i = 0; i < 3; i++) { // Puedes ajustar el número de empleados según prefieras
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
    
    // Crear una instancia de Empleado
    Empleado empleado = Empleado(nombre, edad, salario, puesto, tipoContrato);
    
    // Añadir a la lista de empleados
    empleados.add(empleado);
  }

  // Mostrar información de cada empleado
  print('\nInformación de los empleados:');
  for (Empleado empleado in empleados) {
    empleado.mostrarInformacion();
    print('Bonificación: \$${empleado.calcularBonificacion().toStringAsFixed(2)}\n');
  }

  // Probar métodos adicionales para cada empleado
  for (Empleado empleado in empleados) {
    // Aumentar salario en 10%
    empleado.aumentarSalario(10);
    
    // Cumplir años
    empleado.cumplirAnios();
    
    // Cambiar puesto
    empleado.cambiarPuesto('Nuevo Puesto');
    
    // Mostrar información actualizada
    print('Información actualizada del empleado:');
    empleado.mostrarInformacion();
    print('Bonificación actualizada: \$${empleado.calcularBonificacion().toStringAsFixed(2)}\n');
  }
}
