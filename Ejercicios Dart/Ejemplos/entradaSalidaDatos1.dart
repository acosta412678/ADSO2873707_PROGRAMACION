import 'dart:io';

void main() {
  //Definición de variables
  String? nombre; //Vble tipo String que acepta nulos
  String? hobbie;
  stdout.writeln("Ejemplo ENTRADA/SALIDA datos");
  // Escribir("cual es su nombre?"); PSeINT
  // ENTRADA datos
  // Escribir("Cual es us nombre?");PSeINT
  stdout.writeln("Cual es su nombre?"); // Ecribir DART
  // leer nombre; PSeINT
  nombre = stdin.readLineSync(); // Leer DART
  print("Cual es su hobbie");
  hobbie = stdin.readLineSync();
  //SALIDA datos
  stdout.writeln("Su nombre es: $nombre");
  stdout.writeln("Su hobbie es: $hobbie");
}
