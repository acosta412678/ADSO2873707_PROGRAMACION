// Importa las librerías necesarias
import 'dart:io';
import 'entrenador.dart';
import 'juego.dart';
import 'senamon.dart';
import 'batalla.dart';
import 'torneo.dart';

// Función principal que arranca el programa
void main() {
  // Crea una instancia de Juego y obtiene la lista de todos los Senamones
  Juego juego = Juego();
  List<Senamon> todosLosSenamones = juego.crearSenamones();

  // Bucle infinito para mostrar el menú y gestionar opciones
  while (true) {
    mostrarMenu();  // Muestra el menú principal
    String? opcion = stdin.readLineSync();  // Lee la opción del usuario

    // Maneja la opción seleccionada por el usuario
    switch (opcion) {
      case '1':
        // Crea dos jugadores y realiza una batalla 1 vs 1
        Entrenador jugador1 = juego.crearEntrenador("Jugador 1", todosLosSenamones);
        Entrenador jugador2 = juego.crearEntrenador("Jugador 2", todosLosSenamones);
        Batalla batalla = Batalla(jugador1, jugador2);
        batalla.iniciar();
        break;
      case '2':
        // Entrena los Senamones de un jugador
        Entrenador jugador = juego.crearEntrenador("Jugador", todosLosSenamones);
        entrenarSenamones(jugador);
        break;
      case '3':
        // Muestra las estadísticas de dos jugadores
        Entrenador jugadorA = juego.crearEntrenador("Jugador A", todosLosSenamones);
        Entrenador jugadorB = juego.crearEntrenador("Jugador B", todosLosSenamones);
        mostrarEstadisticas(jugadorA, jugadorB);
        break;
      case '4':
        // Inicia un torneo con varios jugadores
        iniciarTorneo(juego, todosLosSenamones);
        break;
      case '0':
        // Sale del programa
        print("Saliendo del juego...");
        return;
      default:
        print("Opción no válida.");
    }
  }
}

// Muestra el menú principal con las opciones disponibles
void mostrarMenu() {
  print("\n--- Menú Principal ---");
  print("1. Iniciar Batalla 1 vs 1");
  print("2. Entrenar Senamones");
  print("3. Mostrar Estadísticas");
  print("4. Modo Torneo");
  print("0. Salir");
  print("Seleccione una opción:");
}

// Permite entrenar los Senamones de un entrenador
void entrenarSenamones(Entrenador entrenador) {
  print("Selecciona un Senamon para entrenar:");
  // Muestra la lista de Senamones del entrenador
  for (int i = 0; i < entrenador.senamones.length; i++) {
    Senamon senamon = entrenador.senamones[i];
    print("$i: ${senamon.nombre} (Ataque: ${senamon.nivelAtaque}, Salud: ${senamon.puntosSalud})");
  }
  int seleccion = int.parse(stdin.readLineSync()!);

  // Solicita al usuario los puntos a agregar
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

// Muestra las estadísticas de un solo jugador
void mostrarEstadisticasJugador(Entrenador entrenador) {
  print("Jugador: ${entrenador.nombre}");
  print("Batallas ganadas: ${entrenador.batallasGanadas}");
  print("Nivel de experiencia: ${entrenador.nivelExperiencia}");
  print("Senamones:");
  // Muestra la información de cada Senamon del entrenador
  for (Senamon senamon in entrenador.senamones) {
    print("- ${senamon.nombre} (Salud: ${senamon.puntosSalud}, Ataque: ${senamon.nivelAtaque})");
  }
}

// Inicia un torneo con el número de jugadores especificado
void iniciarTorneo(Juego juego, List<Senamon> senamonesDisponibles) {
  print("Ingrese el número de jugadores (mínimo 2):");
  int numJugadores = int.parse(stdin.readLineSync()!);
  if (numJugadores < 2) {
    print("Debe haber al menos 2 jugadores para un torneo.");
    return;
  }

  // Crea la lista de jugadores
  List<Entrenador> jugadores = [];
  for (int i = 1; i <= numJugadores; i++) {
    print("Creando datos para Jugador $i:");
    Entrenador jugador = juego.crearEntrenador("Jugador $i", senamonesDisponibles);
    jugadores.add(jugador);
  }

  // Inicia el torneo con la lista de jugadores
  Torneo torneo = Torneo(jugadores);
  torneo.iniciar();
}