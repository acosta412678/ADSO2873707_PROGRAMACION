import 'dart:io';

void main(List<String> args) {
  /**Calcular el promedio de edades de hombres, mujeres y de todo un grupo de n alumnos. */
  print("Ingrese el número de alumnos:");
  int n = int.parse(stdin.readLineSync()!);

  int contador = 1;
  int totalHombres = 0;
  int totalMujeres = 0;
  int sumaEdadesHombres = 0;
  int sumaEdadesMujeres = 0;
  int sumaEdadesTotal = 0;

  while (contador <= n) {
    print("Alumno $contador:");
    print("Ingrese la edad:");
    int edad = int.parse(stdin.readLineSync()!);

    print("Ingrese el sexo (H para hombre, M para mujer):");
    String sexo = stdin.readLineSync()!.toUpperCase();

    // Validar que el sexo ingresado sea H o M
    if (sexo != "H" && sexo != "M") {
      print("Sexo no válido. Ingrese H para hombre o M para mujer.");
      continue; // Reinicia el ciclo para este alumno
    }

    // Sumar la edad a la categoría correspondiente
    if (sexo == "H") {
      totalHombres++;
      sumaEdadesHombres += edad;
    } else if (sexo == "M") {
      totalMujeres++;
      sumaEdadesMujeres += edad;
    }

    // Sumar la edad al total del grupo
    sumaEdadesTotal += edad;

    contador++;
  }

  // Calcular promedios
  double promedioEdadHombres = totalHombres > 0 ? sumaEdadesHombres / totalHombres : 0;
  double promedioEdadMujeres = totalMujeres > 0 ? sumaEdadesMujeres / totalMujeres : 0;
  double promedioEdadTotal = n > 0 ? sumaEdadesTotal / n : 0;

  // Mostrar resultados
  print("\nPromedio de edades:");
  print("Hombres: $promedioEdadHombres (${totalHombres > 0 ? totalHombres : 0} hombres)");
  print("Mujeres: $promedioEdadMujeres (${totalMujeres > 0 ? totalMujeres : 0} mujeres)");
  print("Total grupo: $promedioEdadTotal ($n alumnos en total)");
}
