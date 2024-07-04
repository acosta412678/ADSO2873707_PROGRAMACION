import 'dart:io';

void main(List<String> args) {
  /**Hacer un programa que lea caracteres desde teclado hasta que lea 10 veces la letra 'a'. Por cada
carácter leído que no sea una 'a' debe mostrar un mensaje indicándolo. Cuando lea las 10 letras 'a'
el programa terminará.
 */
  int contadorA = 0;
  int contadorCaracteres = 0;

  do {
    print("Ingrese un caracter:");
    String caracter = stdin.readLineSync()!;
    contadorCaracteres++;

    if (caracter.toLowerCase() == 'a') {
      contadorA++;
    } else {
      print("El caracter ingresado '$caracter' no es una 'a'.");
    }

  } while (contadorA < 10);

  print("\nSe leyeron 10 veces la letra 'a'. Fin del programa.");
  print("Total de caracteres leídos: $contadorCaracteres");
}
