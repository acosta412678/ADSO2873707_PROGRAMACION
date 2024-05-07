import 'dart:io';

void main(List<String> args) {
  /*Calcular el promedio de un alumno que tiene 7 calificaciones en la materia de Diseño Estructurado
  de Algoritmos.*/
  double nota, suma, promedio = 0;
  suma = 0;
  for (double i = 0; i <= 6; i++) {
    print("Ingrese la nota "+(i+1).toString());
    nota = double.parse(stdin.readLineSync()!);
    suma = suma + nota;
    promedio = suma / 7;
  }
  print("Su nota final es: $promedio");
}