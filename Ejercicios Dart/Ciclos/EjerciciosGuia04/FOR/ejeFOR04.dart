import 'dart:io';

void main(List<String> args) {
  /*Suponga que se tiene un conjunto de calificaciones de un grupo de 40 alumnos.
   Realizar un algoritmo para calcular la calificación promedio y la calificación más baja de todo el grupo.*/

  double sumaCalificaciones = 0;
  double calificacionMinima = double.infinity;

  for (int i = 0; i < 40; i++) {
    print("Ingrese la calificación del alumno " + (i + 1).toString() + ":");
    double calificacion = double.parse(stdin.readLineSync()!);

    sumaCalificaciones += calificacion;

    if (calificacion < calificacionMinima) {
      calificacionMinima = calificacion;
    }
  }

  double promedio = sumaCalificaciones / 40;

  print("La calificación promedio del grupo es: $promedio");
  print("La calificación más baja del grupo es: $calificacionMinima");
}
