import 'dart:io';

import 'Vehiculo.dart';

void main(List<String> args) {
  // Manejo de Listas con objetos

  // Lista de Strings
  List<String> nombresVehiculos = [];
  int cantInteracciones = 5;
  String nomVehiculo;
  for (int i = 0; i < cantInteracciones; i++) {
    print("Ingrese el nombre del vehículo ${i + 1}");
    nomVehiculo = stdin.readLineSync()!;
    nombresVehiculos.add(nomVehiculo);
  }
  print("*" * 50);
  // Ciclo para mostrar los elementos del vector
  for (var i = 0; i < cantInteracciones; i++) {
    print("Vehículo #${i + 1}: ${nombresVehiculos[i]}");
  }
  /**************************************** */
  List<Vehiculo> listaVehiculos = [];
  String colorUsuario;
  int velocidadUsuario;
  double tamanioUsuario;

  for (var i = 0; i < cantInteracciones; i++) {
    print("Ingrese el color del vehículo");
    colorUsuario = stdin.readLineSync()!;
    print("Ingrese la velocidad del vehículo");
    velocidadUsuario = int.parse(stdin.readLineSync()!);
    print("Ingrese el tamaño del vehículo");
    tamanioUsuario = double.parse(stdin.readLineSync()!);
    // Se crea el objeto
    Vehiculo vehiculo_obj =
        Vehiculo(colorUsuario, velocidadUsuario, tamanioUsuario);
    // Se adiciona el objeto a la lista
    listaVehiculos.add(vehiculo_obj);
  }
  // Ciclo para mostrar los objetos de la lista
  print("*" * 50);
  for (var i = 0; i < cantInteracciones; i++) {
    print("*" * 50);
    print('Vehiculo ${i + 1}');
    listaVehiculos[i].avanzar(30);
    listaVehiculos[i].avanzar(70);
    listaVehiculos[i].detenerse();
  }
}
