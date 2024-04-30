import 'dart:io';

void main() {
/*  LUIS MIGUEL ACOSTA  - Condicionales Anidados - EJE_09
El fondo de administración de pensiones requiere clasificar a las personas que se jubilaran en el año
2009. Existen tres tipos de jubilaciones: por edad, por antigüedad joven y por antigüedad adulta. Las
personas adscritas a la jubilación por edad deben tener 60 años o mas y una antigüedad en su empleo
de menos de 25 años.
Las personas adscritas a la jubilación por antigüedad joven deben tener menos de 60 años y una
antigüedad en su empleo de 25 años o más.
Las personas adscritas a la jubilación por antigüedad adulta deben tener 60 años o mas y una
antigüedad en su empleo de 25 años o mas.
Determinar en que tipo de jubilación, quedara adscrita una persona.
*/
 // Definición de variables
  int edad, antiguedad;
  String? tipoJubilacion = "";

  // Entrada de datos
  print("Ingrese la edad de la persona:");
  edad = int.parse(stdin.readLineSync()!);

  print("Ingrese la antigüedad en su empleo (en años):");
  antiguedad = int.parse(stdin.readLineSync()!);

  // Proceso
  if (edad >= 60) {
    if (antiguedad < 25) {
      tipoJubilacion = "por edad";
    } else {
      tipoJubilacion = "por antigüedad adulta";
    }
  } else {
    if (antiguedad >= 25) {
      tipoJubilacion = "por antigüedad joven";
    } else {
      tipoJubilacion = "por edad";
    }
  }

  // Salida
  print("La persona quedará adscrita a la jubilación $tipoJubilacion.");
}

