import 'dart:io';

void main(List<String> args) {
  // Encontrar el mayor valor de un conjunto de n números dados.
  print("Ingrese la cantidad de números:");
  int n = int.parse(stdin.readLineSync()!);

  if (n <= 0) {
    print("La cantidad de números debe ser mayor que cero.");
    return;
  }

  int contador = 1;
  double mayorValor = -double.infinity;

  while (contador <= n) {
    print("Ingrese el número $contador:");
    double numero = double.parse(stdin.readLineSync()!);

    if (numero > mayorValor) {
      mayorValor = numero;
    }

    contador++;
  }

  print("\nEl mayor valor de los $n números ingresados es: $mayorValor");
}
