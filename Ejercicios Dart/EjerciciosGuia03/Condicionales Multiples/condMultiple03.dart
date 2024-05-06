import 'dart:io';
import 'dart:math';

void main() {
/*  LUIS MIGUEL ACOSTA  - Condicionales Multiples - EJE_03
Dados como datos dos variables de tipo entero, obtenga el resultado de la siguiente función:
Val Num
100 * v 1
100^v 2
100/v 3
0 Cualquier número
*/
// Definicón de variables
  int num;
  double resultado, v;

  // Entrada
  print("El valor de v");
  v = double.parse(stdin.readLineSync()!);
  print("Ingrese un numero del 1 al 4");
  num = int.parse(stdin.readLineSync()!);

  // Proceso
  switch (num) {
    case 1:
      resultado = 100 * v;
      break;
    case 2:
      resultado = pow(100, v).toDouble();
      break;
    case 3:
      resultado = 100 / v;
      break;
    default:
      resultado = 0;
  }
//Salida
  print("El resultado de la formula es: $resultado");
}