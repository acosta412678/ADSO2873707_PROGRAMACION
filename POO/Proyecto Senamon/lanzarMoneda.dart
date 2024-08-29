import 'dart:math';

String lanzarMoneda() {
  final Random random = Random();
  int num = random.nextInt(2) + 1; // Genera 1 o 2
  String resultado;
  if (num == 1) {
    resultado = "Cara";
    // Jugador 1 inicia

  } else {
    resultado = "Cruz";
    // Jugador 2 inicia
  }
  print("El resultado del lanzamiento de la moneda es: $resultado");
  return resultado;
  }

