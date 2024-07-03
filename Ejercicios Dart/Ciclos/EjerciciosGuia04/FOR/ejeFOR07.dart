import 'dart:io';

void main(List<String> args) {
  // Calcular cuánto pagará cada cliente y cuánto percibirá la tienda por las compras con descuento.

  double DESCUENTO = 0.15; 
  double precioKilo = 10.0; 
  int totalClientes = 15;
  double totalVentas = 0;

  for (int cliente = 1; cliente <= totalClientes; cliente++) {
    print("Ingrese la cantidad de kilos comprados por el cliente $cliente:");
    double kilos = double.parse(stdin.readLineSync()!);

    double totalPagar;
    if (kilos > 10) {
      double subtotal = kilos * precioKilo;
      double descuento = subtotal * DESCUENTO;
      totalPagar = subtotal - descuento;
    } else {
      totalPagar = kilos * precioKilo;
    }

    print("El cliente $cliente pagará: \$$totalPagar");

    totalVentas += totalPagar;
  }

  print("La tienda percibirá en total: \$$totalVentas por las compras con descuento.");
}
