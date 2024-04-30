import 'dart:io';

void main() {
  // DEFINICIÓN variables
  int edad;
  String? teclado;

  // ENTRADA Datos
  stdout.writeln("Ingrese su edad");
  teclado = stdin.readLineSync();
  edad = int.parse(teclado!);
  if (edad >= 18) {
    stdout.writeln("Es mayor de edad");
  }else{
    stdout.writeln("Es menor de edad");
  }
}