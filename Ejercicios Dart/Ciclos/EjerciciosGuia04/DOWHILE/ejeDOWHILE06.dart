import 'dart:io';

void main(List<String> args) {
  /**Leer por cada alumno de Diseño estructurado de algoritmos su número de control y su calificación en
cada una de las 5 unidades de la materia. Al final que escriba el número de control del alumno que
obtuvo mayor promedio. Suponga que los alumnos tienen diferentes promedios.
 */
  print("Ingrese la cantidad de alumnos:");
  int cantidadAlumnos = int.parse(stdin.readLineSync()!);

  String mejorNumeroControl = "";
  double mejorPromedio = 0.0;

  for (int i = 1; i <= cantidadAlumnos; i++) {
    print("\nAlumno $i:");
    print("Ingrese el número de control:");
    String numeroControl = stdin.readLineSync()!;

    double sumaCalificaciones = 0.0;

    for (int j = 1; j <= 5; j++) {
      print("Ingrese la calificación de la unidad $j:");
      double calificacion = double.parse(stdin.readLineSync()!);
      sumaCalificaciones += calificacion;
    }

    double promedio = sumaCalificaciones / 5;

    print("Promedio del alumno $i: $promedio");

    if (promedio > mejorPromedio) {
      mejorPromedio = promedio;
      mejorNumeroControl = numeroControl;
    }
  }

  print("\nEl alumno con el mejor promedio es el número de control: $mejorNumeroControl");
}
