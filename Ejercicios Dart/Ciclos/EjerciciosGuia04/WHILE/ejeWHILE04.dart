import 'dart:io';

void main(List<String> args) {
  /**El Depto. de Seguridad Publica y Transito del D.F. desea saber, de los n autos que entran a la ciudad
de México, cuantos entran con calcomanía de cada color. Conociendo el último dígito de la placa de
cada automóvil se puede determinar el color de la calcomanía utilizando la sig. relación:
DÍGITO COLOR
1 o 2 amarilla
3 o 4 rosada
5 o 6 roja
 7 o 8 verde
9 o 0 azul
 */
  print("Ingrese el número de autos que entran a la ciudad:");
  int n = int.parse(stdin.readLineSync()!);

  int contador = 1;
  int amarilla = 0;
  int rosada = 0;
  int roja = 0;
  int verde = 0;
  int azul = 0;

  while (contador <= n) {
    print("Auto $contador:");
    print("Ingrese el último dígito de la placa (0-9):");
    int ultimoDigito = int.parse(stdin.readLineSync()!);

    switch (ultimoDigito) {
      case 1:
      case 2:
        amarilla++;
        break;
      case 3:
      case 4:
        rosada++;
        break;
      case 5:
      case 6:
        roja++;
        break;
      case 7:
      case 8:
        verde++;
        break;
      case 9:
      case 0:
        azul++;
        break;
      default:
        print("Dígito no válido. Ingrese un número del 0 al 9.");
        continue; // Reinicia el ciclo para este auto
    }

    contador++;
  }

  print("\nTotal de autos: $n");
  print("Calcomanías:");
  print("Amarilla: $amarilla");
  print("Rosada: $rosada");
  print("Roja: $roja");
  print("Verde: $verde");
  print("Azul: $azul");
}
