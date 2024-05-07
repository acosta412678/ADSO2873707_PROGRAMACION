import 'dart:io';

void main(List<String> args) {
  // Leer 10 números e imprimir solamente los números positivos
  double num = 0, numPositivo = 0, i = 0;
  for (double numPositivo = 0; numPositivo < 10; numPositivo++) {
    print("Ingrese el número " + (numPositivo + 1).toString());
    num = double.parse(stdin.readLineSync()!);
    if (num > 0) {
      print("El número es positivo");
    } else  {
      print("El número es negativo");
    } if (num == 0) {
      print("El número es 0");
    }
  }
  print("Los números positivos son ? $numPositivo");
}
