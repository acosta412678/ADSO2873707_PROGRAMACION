import 'dart:io';

void main(List<String> args) {
  /**La compañía manufacturera Monte Real fábrica 5 artículos diferentes y se trabajan tres turnos por
día, la compañía necesita obtener un reporte al final del día del total de la producción por artículo y
el total de la producción por turno. Desarrollar un programa que pida al usuario el nombre de cada
artículo y la producción que se hizo en cada uno de los tres turnos del día y genere un reporte al final
del día mostrado en pantalla el total de de la producción por artículo, el total de la producción por
turno y el artículo con mayor producción.
Articulo \ Turno Turno 1 Turno 2 Turno 3
Articulo 1 30 40 20
Articulo 2 10 12 15
Articulo 3 8 10 7
Articulo 4 25 30 30
Articulo 5 12 20 10
 */
  List<String> articulos = [];
  List<List<int>> produccion = List.generate(5, (_) => List.filled(3, 0));
  List<int> totalPorArticulo = List.filled(5, 0);
  List<int> totalPorTurno = List.filled(3, 0);
  int maxProduccion = -1;
  String articuloMaxProduccion = '';

  for (int i = 0; i < 5; i++) {
    print('Ingrese el nombre del artículo ${i + 1}: ');
    articulos.add(stdin.readLineSync()!);
    for (int j = 0; j < 3; j++) {
      print('Ingrese la producción del artículo ${articulos[i]} en el turno ${j + 1}: ');
      produccion[i][j] = int.parse(stdin.readLineSync()!);
      totalPorArticulo[i] += produccion[i][j];
      totalPorTurno[j] += produccion[i][j];
    }
    if (totalPorArticulo[i] > maxProduccion) {
      maxProduccion = totalPorArticulo[i];
      articuloMaxProduccion = articulos[i];
    }
  }

  for (int i = 0; i < 5; i++) {
    print('Total de producción del artículo ${articulos[i]}: ${totalPorArticulo[i]}');
  }

  for (int j = 0; j < 3; j++) {
    print('Total de producción en el turno ${j + 1}: ${totalPorTurno[j]}');
  }

  print('El artículo con mayor producción es $articuloMaxProduccion con un total de $maxProduccion');
}
