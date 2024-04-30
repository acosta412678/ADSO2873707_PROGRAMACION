import 'dart:io';

void main() {
  /* LUIS MIGUEL ACOSTA  - Condicionales Simples - EJE_03
El jefe de un almacén de ropa, pone una promoción en sus trajes por un período de tres días para
sus clientes, de tal manera que si un cliente ordena un traje se captura el modelo del traje y el precio
unitario. Si el cliente ordena tres o más trajes se le hace un descuento del 17%, si no se le cobra al
precio normal.
 */
  // DECLRACIÓN vbles
  String? modelo;
  int cantidadTrajes;
  double descuento, precioUnitario, precioTraje;
  // ENTRADA Algoritmo
  print("Ingrese el modelo del traje");
  modelo = stdin.readLineSync()!;
  print("Ingrese la cantidad de trajes a comprar");
  cantidadTrajes = int.parse(stdin.readLineSync()!);
  print("Ingrese el precio unitario del traje");
  precioUnitario = double.parse(stdin.readLineSync()!);
  // PROCESO Algoritmo
  precioTraje = precioUnitario * cantidadTrajes;
  if (cantidadTrajes >= 3) {
    descuento = precioTraje + 0.17;
    precioTraje = precioTraje - descuento;
  }
  // SALIDA Algoritmo
  print("Pidio $cantidadTrajes trajes del modelo $modelo");
  print("El precio total es: $precioTraje");
}
