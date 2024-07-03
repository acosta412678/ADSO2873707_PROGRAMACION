import 'dart:io';

void main(List<String> args) {
  // Calcular el dinero que obtendrá cada vendedor por concepto de comisiones y sueldo total usando un bucle while.

  print("Ingrese el número de vendedores:");
  int n = int.parse(stdin.readLineSync()!);
  print("Ingrese el sueldo base semanal:");
  double sueldoBase = double.parse(stdin.readLineSync()!);
  double comisionPorVenta = 0.10; 
  double ventasPorSemana = 3;
  int vendedor = 1;
  while (vendedor <= n) {
    print("\nVendedor $vendedor:");

    double comisionTotal = 0;
    int venta = 1;

    while (venta <= ventasPorSemana) {
      print("Ingrese el monto de la venta $venta:");
      double montoVenta = double.parse(stdin.readLineSync()!);

      double comisionVenta = montoVenta * comisionPorVenta;
      comisionTotal += comisionVenta;

      venta++;
    }

    double sueldoTotal = sueldoBase + comisionTotal;

    print("Comisión total por las 3 ventas: \$${comisionTotal.toStringAsFixed(2)}");
    print("Sueldo total en la semana: \$${sueldoTotal.toStringAsFixed(2)}");

    vendedor++;
  }
}
