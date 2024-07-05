import 'dart:io';

void main(List<String> args) {
  /**La escuela Ignacio Barrera, desea que le desarrolles un juego para sus alumnos de primaria. El juego
se llama "cuadro mágico", un cuadro mágico es aquel en que la suma de cada fila, la suma de cada
columna y la suma de las diagonales es exactamente igual. El cuadro mágico es de dos dimensiones.
Desarrollar un programa que pida al usuario las dimensiones deseadas para el cuadro mágico (un
arreglo de dos dimensiones) en forma de cuadro y luego le pida los datos para llenar el arreglo.
Después el programa debe calcular la suma de cada fila, de cada columna y de cada diagonal del
cuadro, si todas las sumas son iguales entonces le deberás de indicar por medio de un mensaje
"Felicidades creaste un cuadro mágico", de lo contrario le deberás de decir el siguiente mensaje:
"Modifica los números en el cuadro para que lo hagas mágico". */
  print('Ingrese el tamaño del cuadro mágico (por ejemplo, 3 para un cuadro de 3x3): ');
  int n = int.parse(stdin.readLineSync()!);

  List<List<int>> cuadro = List.generate(n, (_) => List.filled(n, 0));

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      print('Ingrese el valor para la posición [$i, $j]: ');
      cuadro[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  bool esCuadroMagico = true;
  int sumaReferencia = cuadro[0].reduce((a, b) => a + b);

  for (int i = 1; i < n; i++) {
    if (cuadro[i].reduce((a, b) => a + b) != sumaReferencia) {
      esCuadroMagico = false;
      break;
    }
  }

  if (esCuadroMagico) {
    for (int j = 0; j < n; j++) {
      int sumaColumna = 0;
      for (int i = 0; i < n; i++) {
        sumaColumna += cuadro[i][j];
      }
      if (sumaColumna != sumaReferencia) {
        esCuadroMagico = false;
        break;
      }
    }
  }

  if (esCuadroMagico) {
    int sumaDiagonal1 = 0;
    int sumaDiagonal2 = 0;
    for (int i = 0; i < n; i++) {
      sumaDiagonal1 += cuadro[i][i];
      sumaDiagonal2 += cuadro[i][n - i - 1];
    }
    if (sumaDiagonal1 != sumaReferencia || sumaDiagonal2 != sumaReferencia) {
      esCuadroMagico = false;
    }
  }

  if (esCuadroMagico) {
    print('Felicidades, creaste un cuadro mágico');
  } else {
    print('Modifica los números en el cuadro para que lo hagas mágico');
  }
}
