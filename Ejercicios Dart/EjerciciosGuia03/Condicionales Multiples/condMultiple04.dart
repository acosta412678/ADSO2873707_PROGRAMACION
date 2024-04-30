import 'dart:io';
import 'dart:math';

void main() {
/*  LUIS MIGUEL ACOSTA  - Condicionales Multiples - EJE_04
Calcular el valor de f(x) según la expresión
f(x)
x ^ 2 Si x mod 4 = 0
x / 6 Si x mod 4 = 1
Raiz(x) Si x mod 4 = 2
X ^ 3 + 5 Si x mod 4 = 3
*/
// Definicón de variables
  double x, formula;

  // Entrada
  print("el valor de x");
  x = double.parse(stdin.readLineSync()!);

  // Proceso y salida
  switch (x % 4) {
    case 0:
      formula = x * x;
      print("f(x) = $formula");
      break;
    case 1:
      formula = x / 6;
      print("f(x) = $formula");
      break;
    case 2:
      formula = sqrt(x);
      print("f(x) = $formula");
      break;
    case 3:
      formula = pow(x, 3).toDouble() + 5;
      print("f(x) = $formula");
      break;
    default:
      print("No se pudo calcular f(x).");
  }
}
