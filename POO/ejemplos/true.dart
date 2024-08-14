import 'dart:io';
 
void main(List<String> args) {
  bool encontrado = true;
  while (true) {
    print("Lo encontro?? true - false");
    encontrado = bool.parse(stdin.readLineSync()!);
    if (encontrado) {
      print("Lo encontro"); // si lo encontro ?
      break;
    } else {
      print("No lo encontro"); // no lo encontro ?
    }
    /****************************** */
    if (!encontrado) {
    } else {
      print("Si lo encontro");
    }
  }
}
