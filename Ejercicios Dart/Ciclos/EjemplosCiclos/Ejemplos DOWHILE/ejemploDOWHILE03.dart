import 'dart:io';

void main(List<String> args) {
  int clave = 1345, claveIngresada;
  do {
    print("Ingrese la clave");
    claveIngresada = int.parse(stdin.readLineSync()!);
    if (claveIngresada != clave) {
      print("Clave incorrecta");
    } else {
      print("Puede continuar");
    }
  } while (claveIngresada != clave);
}
