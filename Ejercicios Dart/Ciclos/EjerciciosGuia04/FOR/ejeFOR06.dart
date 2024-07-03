import 'dart:io';

void main(List<String> args) {
  // Calcular y mostrar el promedio de peso por categoría: Niños, Jovenes, Adultos y Adultos Mayores.

  int totalNinos = 0;
  int totalJovenes = 0;
  int totalAdultos = 0;
  int totalAdultosMayores = 0;

  double sumaPesosNinos = 0;
  double sumaPesosJovenes = 0;
  double sumaPesosAdultos = 0;
  double sumaPesosAdultosMayores = 0;

  for (int i = 0; i < 50; i++) {
    print("Ingrese la edad de la persona " + (i + 1).toString() + ":");
    int edad = int.parse(stdin.readLineSync()!);

    print("Ingrese el peso de la persona " + (i + 1).toString() + ":");
    double peso = double.parse(stdin.readLineSync()!);

    if (edad >= 0 && edad <= 12) {
      sumaPesosNinos += peso;
      totalNinos++;
    } else if (edad >= 13 && edad <= 29) {
      sumaPesosJovenes += peso;
      totalJovenes++;
    } else if (edad >= 30 && edad <= 59) {
      sumaPesosAdultos += peso;
      totalAdultos++;
    } else if (edad >= 60) {
      sumaPesosAdultosMayores += peso;
      totalAdultosMayores++;
    } else {
      print("Edad no válida. Debe ser un número positivo.");
      i--; 
    }
  }

  double promedioNinos = sumaPesosNinos / totalNinos;
  double promedioJovenes = sumaPesosJovenes / totalJovenes;
  double promedioAdultos = sumaPesosAdultos / totalAdultos;
  double promedioAdultosMayores = sumaPesosAdultosMayores / totalAdultosMayores;

  print("Promedio de peso de Ninos (0 - 12 años): $promedioNinos");
  print("Promedio de peso de Jovenes (13 - 29 años): $promedioJovenes");
  print("Promedio de peso de Adultos (30 - 59 años): $promedioAdultos");
  print("Promedio de peso de Adultos Mayores (60 años en adelante): $promedioAdultosMayores");
}
