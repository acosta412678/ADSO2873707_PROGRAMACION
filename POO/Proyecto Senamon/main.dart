import 'senamon.dart';
import 'entrenador.dart';
void main(List<String> args) {
  
  // Menu principal
  int opcion;
  do {
    print("""
Menu principal:
1. Iniciar batalla
2. Ver estadísticas
3. Entrenar senamon
4. Salir
""");
    switch (opcion) {
      case 1:
      // Se muestra la lista de los 50 senamones
      mostrarSenamones()
      for (var i = 0; i < 2; i++) {
        print("Elija 5 senamones para el  jugador ${i +  1}");

      }

        break;
      default:
      print("opcion incorrecta");
    
  } while(opcion != 4);
  
}
}

