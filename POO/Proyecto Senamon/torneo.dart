import 'batalla.dart'; // Importar la clase Batalla
import 'entrenador.dart'; // Importar la clase Entrenador

// Clase Torneo para gestionar el torneo entre entrenadores
class Torneo {
  List<Entrenador> jugadores; // Lista de jugadores (entrenadores) en el torneo

  // Constructor que recibe la lista de jugadores
  Torneo(this.jugadores);

  // Método para iniciar el torneo
  void iniciar() {
    // Mientras haya más de un jugador en el torneo
    while (jugadores.length > 1) {
      print("Iniciando ronda del torneo..."); // Mensaje de inicio de ronda

      List<Entrenador> ganadoresRonda = []; // Lista para guardar los ganadores de la ronda
      for (int i = 0; i < jugadores.length; i += 2) { // Iterar en pares de jugadores
        if (i + 1 < jugadores.length) { // Verificar que hay un par para luchar
          print("Batalla entre ${jugadores[i].nombre} y ${jugadores[i + 1].nombre}!"); // Anunciar la batalla
          Batalla batalla = Batalla(jugadores[i], jugadores[i + 1]); // Crear una instancia de Batalla
          batalla.iniciar(); // Iniciar la batalla

          // Verificar quién ganó la batalla
          if (jugadores[i].senamones.any((s) => s.estaVivo())) { // Si el Senamon del primer jugador está vivo
            ganadoresRonda.add(jugadores[i]); // Agregar el primer jugador a los ganadores
          } else {
            ganadoresRonda.add(jugadores[i + 1]); // De lo contrario, agregar el segundo jugador a los ganadores
          }
        } else {
          ganadoresRonda.add(jugadores[i]); // Si hay un número impar de jugadores, el último jugador pasa a la siguiente ronda
        }
      }

      jugadores = ganadoresRonda; // Actualizar la lista de jugadores con los ganadores de la ronda
    }

    print("El ganador del torneo es: ${jugadores[0].nombre}"); // Anunciar el ganador final
  }
}
