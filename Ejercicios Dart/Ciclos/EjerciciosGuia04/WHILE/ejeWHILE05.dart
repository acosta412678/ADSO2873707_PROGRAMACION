import 'dart:io';

void main(List<String> args) {
  /**Obtener el promedio de calificaciones de un grupo de n alumnos. */
  print("Ingrese el número de alumnos:");
  int n = int.parse(stdin.readLineSync()!);

  int contador = 1;
  double sumaCalificaciones = 0.0;

  while (contador <= n) {
    print("Ingrese la calificación del alumno $contador:");
    double calificacion = double.parse(stdin.readLineSync()!);

    // Validar que la calificación esté en un rango válido (por ejemplo, 0-10)
    if (calificacion < 0 || calificacion > 10) {
      print("Calificación no válida. Debe estar entre 0 y 10.");
      continue; // Reinicia el ciclo para este alumno
    }

    sumaCalificaciones += calificacion;
    contador++;
  }

  double promedio = sumaCalificaciones / n;

  print("\nPromedio de calificaciones del grupo de $n alumnos: $promedio");
}
