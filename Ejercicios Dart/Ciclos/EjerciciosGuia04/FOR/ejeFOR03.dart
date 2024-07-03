import 'dart:io';

void main(List<String> args) {
  // Leer 20 números e imprimir cuantos son positivos, cuantos negativos y cuantos cero.
  int positivos = 0;
  int negativos = 0;
  int ceros = 0;

  for (int i = 0; i < 20; i++) {
    print("Ingrese el número " + (i + 1).toString());
    double num = double.parse(stdin.readLineSync()!);
    
    if (num > 0) {
      positivos++;
    } else if (num < 0) {
      negativos++;
    } else {
      ceros++;
    }
  }

  print("Cantidad de números positivos: $positivos");
  print("Cantidad de números negativos: $negativos");
  print("Cantidad de ceros: $ceros");
}
