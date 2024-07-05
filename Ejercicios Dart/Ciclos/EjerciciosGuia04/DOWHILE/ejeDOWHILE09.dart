import 'dart:math' as math;
import 'dart:io';

void main(List<String> args) {
  /**Escribir un programa que muestre el siguiente menú y que permita pasar magnitudes de grados a
radianes y de radianes a grados.
1. Pasar de grados a radianes
2. Pasar de radianes a grados
3. Salir del programa */
  int opcionSalir = 3;
  int opcion;

  do {
    print("\nMenú de conversión:");
    print("1. Pasar de grados a radianes");
    print("2. Pasar de radianes a grados");
    print("3. Salir del programa");
    print("Ingrese su opción:");

    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print("Ingrese los grados:");
        double grados = double.parse(stdin.readLineSync()!);
        double radianes = grados * (math.pi / 180);
        print("$grados grados equivalen a $radianes radianes.");
        break;
      case 2:
        print("Ingrese los radianes:");
        double radianes = double.parse(stdin.readLineSync()!);
        double grados = radianes * (180 / math.pi);
        print("$radianes radianes equivalen a $grados grados.");
        break;
      case 3:
        print("Saliendo del programa...");
        break;
      default:
        print("Opción no válida. Por favor, ingrese una opción válida (1-3).");
    }

  } while (opcion != opcionSalir);
}
