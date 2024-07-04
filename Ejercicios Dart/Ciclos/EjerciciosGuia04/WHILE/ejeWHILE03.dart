import 'dart:io';

void main(List<String> args) {
  /**Determinar cuantos hombres y cuantas mujeres se encuentran en un grupo de n personas,
suponiendo que los datos son extraídos alumno por alumno. */
  print("Ingrese el número de personas:");
  int n = int.parse(stdin.readLineSync()!);

  int contador = 1;
  int hombres = 0;
  int mujeres = 0;

  while (contador <= n) {
    print("Persona $contador:");
    print("Ingrese el sexo (H para hombre, M para mujer):");
    String sexo = stdin.readLineSync()!.toUpperCase();

    if (sexo == "H") {
      hombres++;
    } else if (sexo == "M") {
      mujeres++;
    } else {
      print("Sexo no válido. Ingrese H para hombre o M para mujer.");
      return; 
    }

    contador++;
  }

  print("\nTotal de personas: $n");
  print("Hombres: $hombres");
  print("Mujeres: $mujeres");
}
