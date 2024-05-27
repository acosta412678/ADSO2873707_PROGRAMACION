import 'dart:io';

void main(List<String> args) {
  //Desarrolar un algoritmo tal que, dado como datos 10 números enteros, obtenga la suma de los 10 números enteros. Se mostrara la suma de dichos números");
  int num, suma;
  suma = 0;
  for (int i = 0; i < 10; i++) {
    print("Ingrese el valor del número "+(i+1).toString());
    num = int.parse(stdin.readLineSync()!);
    // Variable de tipo ACUMULADOR
    suma = suma + num;
  }
  print("La suma de los números ingresados es: $suma");
}
