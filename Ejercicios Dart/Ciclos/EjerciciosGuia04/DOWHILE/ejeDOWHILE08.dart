import 'dart:io';

void main(List<String> args) {
  /**Hacer un programa que lea caracteres desde teclado y vaya contando las vocales que aparecen. El
programa terminará cuando lea el carácter # y entonces mostrará un mensaje indicando cuántas
vocales ha leído (cuántas de cada una de ellas). */
  int contadorA = 0;
  int contadorE = 0;
  int contadorI = 0;
  int contadorO = 0;
  int contadorU = 0;
  String caracter;

  do {
    print("Ingrese un caracter (ingrese '#' para terminar):");
    caracter = stdin.readLineSync()!.toLowerCase();

    switch (caracter) {
      case 'a':
        contadorA++;
        break;
      case 'e':
        contadorE++;
        break;
      case 'i':
        contadorI++;
        break;
      case 'o':
        contadorO++;
        break;
      case 'u':
        contadorU++;
        break;
      case '#':
        break;
      default:
        print("El caracter ingresado '$caracter' no es una vocal.");
        continue;
    }

  } while (caracter != '#');

  print("\nResumen de vocales leídas:");
  print("Cantidad de 'a': $contadorA");
  print("Cantidad de 'e': $contadorE");
  print("Cantidad de 'i': $contadorI");
  print("Cantidad de 'o': $contadorO");
  print("Cantidad de 'u': $contadorU");
}
