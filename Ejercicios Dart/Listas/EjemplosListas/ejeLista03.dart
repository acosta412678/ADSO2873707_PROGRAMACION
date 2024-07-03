import 'dart:io';

void main(List<String> args) {
  // Como asignar y mostrar los elementos de un vector segun los datos ingresados por un mecanico
  List<int> vectNumeros = [];
  int num;
  //ciclo para asignar la lista
  for (int i = 0; i < 10; i++) {
    print("Ingrese el numero ${i + i}");
    // Se asigna un elemento a la posicion i
    num = int.parse(stdin.readLineSync()!);
    vectNumeros.add(num);
  }
  print(vectNumeros);
  // ciclo para recorrer/mostrar la lista
  for (int i = 0; i < 10; i++) {
    print("numero ${i + i}: ${vectNumeros[i]}");
  }
}