import 'dart:io';

void main(List<String> args) {
  /**En un supermercado una ama de casa pone en su carrito los artículos que va tomando de los
estantes. La señora quiere asegurarse de que el cajero le cobre bien lo que ella ha comprado, por lo
que cada vez que toma un articulo anota su precio junto con la cantidad de artículos iguales que ha
tomado y determina cuanto dinero gastara en ese articulo; a esto le suma lo que ira gastando en los
demás artículos, hasta que decide que ya tomo todo lo que necesitaba. Ayúdale a esta señora a
obtener el total de sus compras. */
  double totalCompra = 0.0;
  int contadorArticulos = 0;
  
  do {
    contadorArticulos++;
    
    print("Artículo $contadorArticulos:");
    
    print("Ingrese el precio del artículo:");
    double precio = double.parse(stdin.readLineSync()!);
    
    print("Ingrese la cantidad de artículos:");
    int cantidad = int.parse(stdin.readLineSync()!);
    
    double subtotalArticulo = precio * cantidad;
    totalCompra += subtotalArticulo;
    
    print("Subtotal por el artículo $contadorArticulos: \$${subtotalArticulo.toStringAsFixed(2)}\n");
    
    print("¿Desea seguir comprando? (s/n):");
    String continuar = stdin.readLineSync()!;
    
    if (continuar.toLowerCase() != 's') {
      break;
    }
    
  } while (true);
  
  print("\nTotal de la compra: \$${totalCompra.toStringAsFixed(2)}");
}
