import 'dart:html_common';

void main(List<String> args) {
  int numero = 3;
  // lista o arreglo vacio (vector)
  List<int> vectornumeros = [];

  // List con elementos predefinidos
  List<int> vectnumeros = [2, 5, 9, 8];
  List<String> vectnombres = ["Ana", "Sam", "Rey"];

  // Lista con elementos dinamicos
  List<dynamic> vectdinamico = [2,5,"Pepe",false,4.6, vectnombres];

  print(vectornumeros);
  print(vectnumeros);
  print(vectnombres);
  print(vectdinamico);
  print('*' * 50);
  print(vectnumeros[2]);
  print(vectnombres [1]);
  print(vectdinamico[4]);
  print(vectdinamico [5][0]);
}