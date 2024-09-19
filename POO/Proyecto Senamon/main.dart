import 'dart:io'; // Importa la biblioteca para entrada/salida
import 'entrenador.dart'; // Importa la clase Entrenador
import 'juego.dart'; // Importa la clase Juego
import 'senamon.dart'; // Importa la clase Senamon
import 'batalla.dart'; // Importa la clase Batalla
import 'torneo.dart'; // Importa la clase Torneo

void main() {
  // Crea una instancia de Juego
  Juego juego = Juego();
  // Obtiene la lista de todos los Senamones disponibles
  List<Senamon> todosLosSenamones = juego.crearSenamones();

  while (true) {
    // Muestra el menú principal
    mostrarMenu();
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        // Crear dos entrenadores y realizar una batalla entre ellos
        Entrenador jugador1 = juego.crearEntrenador("Jugador 1", todosLosSenamones);
        Entrenador jugador2 = juego.crearEntrenador("Jugador 2", todosLosSenamones);
        Batalla batalla = Batalla(jugador1, jugador2);
        batalla.iniciar();
        break;
      case '2':
        // Crear un entrenador y entrenar sus Senamones
        Entrenador jugador = juego.crearEntrenador("Jugador", todosLosSenamones);
        entrenarSenamones(jugador);
        break;
      case '3':
        // Crear dos entrenadores y mostrar sus estadísticas
        Entrenador jugadorA = juego.crearEntrenador("Jugador A", todosLosSenamones);
        Entrenador jugadorB = juego.crearEntrenador("Jugador B", todosLosSenamones);
        mostrarEstadisticas(jugadorA, jugadorB);
        break;
      case '4':
        // Iniciar un torneo con varios jugadores
        iniciarTorneo(juego, todosLosSenamones);
        break;
      case '0':
        // Salir del juego
        print("Saliendo del juego...");
        return;
      default:
        // Opción no válida
        print("Opción no válida.");
    }
  }
}

// Muestra el menú principal con opciones disponibles
void mostrarMenu() {
  print("\n--- Menú Principal ---");
  print("1. Iniciar Batalla 1 vs 1");
  print("2. Entrenar Senamones");
  print("3. Mostrar Estadísticas");
  print("4. Modo Torneo");
  print("0. Salir");
  print("Seleccione una opción:");
}

// Permite al jugador entrenar sus Senamones
void entrenarSenamones(Entrenador entrenador) {
  print("Selecciona un Senamon para entrenar:");
  // Muestra la lista de Senamones del entrenador
  for (int i = 0; i < entrenador.senamones.length; i++) {
    Senamon senamon = entrenador.senamones[i];
    print("$i: ${senamon.nombre} (Ataque: ${senamon.nivelAtaque}, Salud: ${senamon.puntosSalud})");
  }
  // Selección del Senamon para entrenar
  int seleccion = int.parse(stdin.readLineSync()!);

  // Solicita puntos de ataque y salud a agregar
  print("¿Cuántos puntos de ataque deseas agregar?");
  int puntosAtaque = int.parse(stdin.readLineSync()!);
  print("¿Cuántos puntos de salud deseas agregar?");
  int puntosSalud = int.parse(stdin.readLineSync()!);

  // Entrena el Senamon seleccionado
  entrenador.entrenarSenamon(seleccion, puntosAtaque, puntosSalud);
}

// Muestra las estadísticas de dos jugadores
void mostrarEstadisticas(Entrenador jugador1, Entrenador jugador2) {
  print("\n--- Estadísticas de los Jugadores ---");
  mostrarEstadisticasJugador(jugador1);
  mostrarEstadisticasJugador(jugador2);
}

// Muestra las estadísticas de un jugador
void mostrarEstadisticasJugador(Entrenador entrenador) {
  print("Jugador: ${entrenador.nombre}");
  print("Batallas ganadas: ${entrenador.batallasGanadas}");
  print("Nivel de experiencia: ${entrenador.nivelExperiencia}");
  print("Senamones:");
  // Muestra información de cada Senamon del entrenador
  for (Senamon senamon in entrenador.senamones) {
    print("- ${senamon.nombre} (Salud: ${senamon.puntosSalud}, Ataque: ${senamon.nivelAtaque})");
  }
}

// Inicia un torneo con un número determinado de jugadores
void iniciarTorneo(Juego juego, List<Senamon> senamonesDisponibles) {
  print("Ingrese el número de jugadores (mínimo 2):");
  int numJugadores = int.parse(stdin.readLineSync()!);
  if (numJugadores < 2) {
    print("Debe haber al menos 2 jugadores para un torneo.");
    return;
  }

  // Crea la lista de entrenadores para el torneo
  List<Entrenador> jugadores = [];
  for (int i = 1; i <= numJugadores; i++) {
    print("Creando datos para Jugador $i:");
    Entrenador jugador = juego.crearEntrenador("Jugador $i", senamonesDisponibles);
    jugadores.add(jugador);
  }

  // Inicia el torneo con los entrenadores creados
  Torneo torneo = Torneo(jugadores);
  torneo.iniciar();
}
