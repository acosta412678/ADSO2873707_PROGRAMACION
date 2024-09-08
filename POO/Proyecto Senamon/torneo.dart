// Importa las clases necesarias para el torneo
import 'batalla.dart';
import 'entrenador.dart';

// Define la clase Torneo para gestionar las batallas entre entrenadores
class Torneo {
  List<Entrenador> jugadores;  // Lista de jugadores en el torneo

  // Constructor para inicializar el torneo con una lista de jugadores
  Torneo(this.jugadores);

  // Método para iniciar el torneo
  void iniciar() {
    // Mientras haya más de un jugador en el torneo
    while (jugadores.length > 1) {
      print("Iniciando ronda del torneo...");

      List<Entrenador> ganadoresRonda = [];  // Lista para los ganadores de la ronda
      // Recorre la lista de jugadores de dos en dos
      for (int i = 0; i < jugadores.length; i += 2) {
        // Asegura que no se salga del rango de la lista
        if (i + 1 < jugadores.length) {
          print("Batalla entre ${jugadores[i].nombre} y ${jugadores[i + 1].nombre}!");
          Batalla batalla = Batalla(jugadores[i], jugadores[i + 1]);
          batalla.iniciar();  // Inicia la batalla entre dos jugadores

          // Añade el ganador de la batalla a la lista de ganadores
          if (jugadores[i].senamones.any((s) => s.estaVivo())) {
            ganadoresRonda.add(jugadores[i]);
          } else {
            ganadoresRonda.add(jugadores[i + 1]);
          }
        } else {
          // Si hay un número impar de jugadores, el último jugador pasa a la siguiente ronda
          ganadoresRonda.add(jugadores[i]);
        }
      }

      // Actualiza la lista de jugadores con los ganadores de la ronda
      jugadores = ganadoresRonda;
    }

    // Imprime el nombre del ganador del torneo
    print("El ganador del torneo es: ${jugadores[0].nombre}");
  }
}
