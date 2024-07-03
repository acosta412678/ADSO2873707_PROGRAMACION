import 'dart:io';

void main(List<String> args) {
  // Leer 10 números e imprimir solamente los números positivos.
  for (int i = 1; i <= 10; i++) {
    print("Ingrese el número $i:");
    double numero = double.parse(stdin.readLineSync()!);

    if (numero > 0) {
      print("El número $numero es positivo.");
    }
  }
}
