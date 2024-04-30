import 'dart:io';

void main() {
/*  LUIS MIGUEL ACOSTA  - Condicionales Anidados - EJE_07
Leer 2 números; si son iguales que los multiplique, si el primero es mayor que el segundo que los
reste y si no que los sume.
*/
// Definición de variables
  double numero1, numero2, resultado;

  // Entrada de datos
  print("Ingrese el primer número:");
  numero1 = double.parse(stdin.readLineSync()!);

  print("Ingrese el segundo número:");
  numero2 = double.parse(stdin.readLineSync()!);

  // Proceso
  if (numero1 == numero2) {
    resultado = numero1 * numero2;
  } else if (numero1 > numero2) {
    resultado = numero1 - numero2;
  } else {
    resultado = numero1 + numero2;
  }

  // Salida
  print("El resultado es: $resultado");
}
