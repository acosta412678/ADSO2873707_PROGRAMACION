void main() {
  double inversion = 2500000;
  double ganancia, gananciaTotal;
  int cantidadBitcoin = 10;
  int cantidadMeses = 5;
  if(inversion > 3000000 ) {
    print('Deberias invertir en Bitcoin');
    ganancia = inversion * 0.15;
    gananciaTotal =  inversion * 1.15;
    print('Cantidad de bitcoins: $cantidadBitcoin');
    print('Su ganancia es: $gananciaTotal');
  } else {
    print('Deberias hacer un ahorro programado');
    ganancia = inversion * cantidadMeses * 0.3;
    gananciaTotal = inversion + ganancia;
    print('Su ganancia es: $gananciaTotal');
  }
}