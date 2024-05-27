import 'dart:io';

void main() {
  // DEFINICIÓN variables
  int num1;
  String? input;
  // ENTRADA datos
  print("Ingrese un número");
  // Se lee del teclado del usuario y se recibe String?
  input = stdin.readLineSync();
  // Se hace la conversión de tipo String? a tipo int
  // utilizando método parse
  // Se utiliza el operador ! para indicar que no hay
  // problemas con el nulo
  num1 = int.parse(input!);
  // SALIDA datos
  stdout.writeln("El número ingresado es $num1");
}
