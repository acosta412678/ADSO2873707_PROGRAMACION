import 'dart:io';

import 'Vehiculo.dart';
void main(List<String> args) {
  String colorUsuario;
  int velocidadUsuario;
  double tamanioUsuario;
  print("Ingrese el color del vehiculo");
  colorUsuario = stdin.readLineSync()!;
  print("Ingrese la velocidad del vehículo");
  velocidadUsuario = int.parse(stdin.readLineSync()!);
  print("Ingrese el tamaño del vehiculo");
  tamanioUsuario = double.parse(stdin.readLineSync()!);
  Vehiculo vehi_obj1 = Vehiculo(colorUsuario, velocidadUsuario, tamanioUsuario);
  vehi_obj1.avanzar(80);
  vehi_obj1.avanzar(100);
  vehi_obj1.avanzar(20);
  vehi_obj1.detenerse();
}
