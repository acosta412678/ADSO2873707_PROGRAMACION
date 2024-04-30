import 'dart:io';

void main() {
/*  LUIS MIGUEL ACOSTA  - Condicionales Anidados - EJE_10
Tomando como base los resultados obtenidos en un laboratorio de análisis clínicos, un medico
determina si una persona esta normal, tiene anemia o tiene cardiopatía lo cual depende de su nivel
de hemoglobina en la sangre, de su edad y de su sexo. Si el nivel de hemoglobina que tiene una
persona es menor que el rango que le corresponde, se determina su resultado como Anemia, si esta
dentro del rango, se determina su resultado como Normal y si esta por encima del rango, se determina
su resultado como Cardiopatía. La tabla en la que el medico se basa para obtener el resultado es la
siguiente:
EDAD NIVEL HEMOGLOBINA
0 - 1 mes 13 - 26 g%
> 1 y < = 6 meses 10 - 18 g%
> 6 y < = 12 meses 11 - 15 g%
> 1 y < = 5 años 11.5 - 15 g%
> 5 y < = 10 años 12.6 - 15.5 g%
> 10 y < = 15 años 13 - 15.5 g%
mujeres > 15 años 12 - 16 g%
hombres > 15 años 14 - 18 g%
*/

  // Definición de variables
  double nivelHemoglobina;
  int edad;
  String sexo;
  String resultado = "";

  // Entrada
  print("Ingrese el nivel de hemoglobina (en g%):");
  nivelHemoglobina = double.parse(stdin.readLineSync()!);

  print("Ingrese la edad de la persona:");
  edad = int.parse(stdin.readLineSync()!);

  print("Ingrese el sexo de la persona (hombre/mujer):");
  sexo = stdin.readLineSync()!.toLowerCase();

  // Proceso
    if (edad <= 1) {
      if (nivelHemoglobina < 13) {
        resultado = "Anemia";
      } else if (nivelHemoglobina > 26) {
        resultado = "Cardiopatia";
      } else {
        resultado = "Normal";
      }
   }
   if (edad <= 6) {
      if (nivelHemoglobina < 10) {
        resultado = "Anemia";
      } else if (nivelHemoglobina > 18) {
        resultado = "Cardiopatia";
      } else {
        resultado = "Normal";
      }
   }
   if (edad <= 12) {
      if (nivelHemoglobina < 11) {
        resultado = "Anemia";
      } else if (nivelHemoglobina > 15) {
        resultado = "Cardiopatia";
      } else {
        resultado = "Normal";
      }
   }
   if (edad <= 5) {
      if (nivelHemoglobina < 11.5) {
        resultado = "Anemia";
      } else if (nivelHemoglobina > 15) {
        resultado = "Cardiopatia";
      } else {
        resultado = "Normal";
      }
   }
   if (edad <= 10) {
      if (nivelHemoglobina < 12.6) {
        resultado = "Anemia";
      } else if (nivelHemoglobina > 15.5) {
        resultado = "Cardiopatia";
      } else {
        resultado = "Normal";
      }
   }
   if (edad <= 15) {
      if (nivelHemoglobina < 13.5) {
        resultado = "Anemia";
      } else if (nivelHemoglobina > 15.5) {
        resultado = "Cardiopatia";
      } else {
        resultado = "Normal";
      }
   }
   if (sexo == "mujer" && edad > 15) {
      if (nivelHemoglobina < 12) {
        resultado = "Anemia";
      } else if (nivelHemoglobina > 16) {
        resultado = "Cardiopatia";
      } else {
        resultado = "Normal";
      }
   }
   if (sexo == "hombre" && edad > 15) {
      if (nivelHemoglobina < 14) {
        resultado = "Anemia";
      } else if (nivelHemoglobina > 18) {
        resultado = "Cardiopatia";
      } else {
        resultado = "Normal";
      }
   }
 // Salida
  print("Resultado del análisis clínico: $resultado");
}
