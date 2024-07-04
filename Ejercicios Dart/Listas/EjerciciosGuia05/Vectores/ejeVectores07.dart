import 'dart:io';

void main(List<String> args) {
  /**Diseñar un algoritmo que lea una palabra o una frase en un arreglo de caracteres y determinar si esa
  palabra o frase es palíndroma. */
  print('Ingrese una palabra o frase para verificar si es un palíndromo: ');
  String entrada = stdin.readLineSync()!;
  
  String texto = entrada.replaceAll(' ', '').toLowerCase();
  
  bool esPalindromo = true;

  for (int i = 0; i < texto.length ~/ 2; i++) {
    if (texto[i] != texto[texto.length - 1 - i]) {
      esPalindromo = false;
      break;
    }
  }

  if (esPalindromo) {
    print('"$entrada" es un palíndromo.');
  } else {
    print('"$entrada" no es un palíndromo.');
  }
}
