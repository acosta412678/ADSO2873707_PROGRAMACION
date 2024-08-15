import 'dart:io';

void main(List<String> args) {
  /**Leer por cada alumno de Diseño estructurado de algoritmos su número de control y su calificación en
cada una de las 5 unidades de la materia. Al final que escriba el número de control del alumno que
obtuvo mayor promedio. Suponga que los alumnos tienen diferentes promedios.
 */
  int? numeroDeControlMaximo;
  double promedioMaximo = 0.0;

  String continuar;
  do {
    print("Ingresa el número de control del alumno: ");
    int numeroDeControl = int.parse(stdin.readLineSync()!);

    double sumaCalificaciones = 0.0;
    for (int i = 1; i <= 5; i++) {
      print("Ingresa la calificación de la unidad $i: ");
      double calificacion = double.parse(stdin.readLineSync()!);
      sumaCalificaciones += calificacion;
    }

    double promedio = sumaCalificaciones / 5;

    if (promedio > promedioMaximo) {
      promedioMaximo = promedio;
      numeroDeControlMaximo = numeroDeControl;
    }

    print("¿Deseas ingresar otro alumno? (s/n): ");
    continuar = stdin.readLineSync()!.toLowerCase();
  } while (continuar == 's');

  if (numeroDeControlMaximo != null) {
    print("El alumno con el mayor promedio es el de número de control $numeroDeControlMaximo con un promedio de $promedioMaximo.");
  } else {
    print("No se ingresaron alumnos.");
  }
}

