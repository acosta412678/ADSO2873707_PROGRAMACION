import 'dart:math';
import 'batalla.dart';

String lanzarMoneda() {
  final Random random = Random();
  int num = random.nextInt(2) + 1; // Genera 1 o 2
  String resultado;
  if (num == 1) {
    resultado = "Cara";
  } else {
    resultado = "Cruz";
  }
  print("El resultado del lanzamiento de la moneda es: $resultado");
  return resultado;
  }

