import 'dart:io';

void main(List<String> args) {
  /* Calcular e imprimir la tabla de multiplicar de un número cualquiera.
   Imprimir el multiplicando, el multiplicador y el producto.*/

  print("Ingrese el número para la tabla de multiplicar:");
  int numero = int.parse(stdin.readLineSync()!);

  for (int multiplicador = 1; multiplicador <= 10; multiplicador++) {
    int producto = numero * multiplicador;
    print("$numero * $multiplicador = $producto");
  }
}
