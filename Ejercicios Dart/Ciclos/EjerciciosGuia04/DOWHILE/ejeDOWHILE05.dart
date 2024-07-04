void main(List<String> args) {
  /**Calcular la suma siguiente:
100 + 98 + 96 + 94 + . . . + 0 en este orden */
  int suma = 0;
  int numero = 100;

  do {
    suma += numero;
    numero -= 2;
  } while (numero >= 0);

  print("La suma de la serie es: $suma");
}
