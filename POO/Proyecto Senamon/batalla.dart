import 'dart:io';
import 'dart:math';
import 'entrenador.dart';
import 'senamon.dart';

class Batalla {
  // Jugadores de la batalla, cada uno es un Entrenador
  Entrenador jugador1;
  Entrenador jugador2;

  // Constructor que recibe los dos entrenadores
  Batalla(this.jugador1, this.jugador2);

  // Método para iniciar la batalla
  void iniciar() {
    Random random = Random();
    // Lanzar moneda para determinar quién empieza
    String resultadoMoneda = random.nextBool() ? "cara" : "cruz";
    print("Lanzando moneda... Resultado: $resultadoMoneda");

    // Determina quién es el primer y segundo jugador
    Entrenador primerJugador = resultadoMoneda == "cara" ? jugador1 : jugador2;
    Entrenador segundoJugador = primerJugador == jugador1 ? jugador2 : jugador1;

    print("Jugador 1: ${primerJugador.nombre}");
    print("Jugador 2: ${segundoJugador.nombre}");

    int senamonesDestruidosJugador1 = 0; // Contador para jugador1
    int senamonesDestruidosJugador2 = 0; // Contador para jugador2

    // Bucle hasta que uno de los jugadores destruya 3 Senamones
    while (senamonesDestruidosJugador1 < 3 && senamonesDestruidosJugador2 < 3) {
      print("${primerJugador.nombre}, elige una opción:");
      print("1. Atacar");
      print("2. Defender");
      String? opcion = stdin.readLineSync(); // Leer opción del jugador

      // Seleccionar un Senamon de cada jugador
      Senamon senamon1 = seleccionarSenamon(primerJugador);
      Senamon senamon2 = seleccionarSenamon(segundoJugador);

      // Si elige atacar
      if (opcion == '1') {
        realizarAtaque(senamon1, senamon2);
        // Si el Senamon defensor es derrotado
        if (!senamon2.estaVivo()) {
          print("${senamon2.nombre} ha sido derrotado.");
          senamonesDestruidosJugador1++; // Incrementa el contador de derrotas
        }
      } 
      // Si elige defender
      else if (opcion == '2') {
        realizarDefensa(senamon1, senamon2);
      }

      // Alterna los turnos de los jugadores
      Entrenador temp = primerJugador;
      primerJugador = segundoJugador;
      segundoJugador = temp;
    }

    // Determina quién ganó la batalla
    if (senamonesDestruidosJugador1 >= 3) {
      print("${jugador1.nombre} ha ganado la batalla!");
      jugador1.nivelExperiencia += 100; // Gana experiencia
    } else if (senamonesDestruidosJugador2 >= 3) {
      print("${jugador2.nombre} ha ganado la batalla!");
      jugador2.nivelExperiencia += 100;
    }
  }

  // Método para seleccionar un Senamon de la lista del entrenador
  Senamon seleccionarSenamon(Entrenador entrenador) {
    print("Selecciona un Senamon para la batalla:");
    for (int i = 0; i < entrenador.senamones.length; i++) {
      Senamon senamon = entrenador.senamones[i];
      print("$i: ${senamon.nombre} (Salud: ${senamon.puntosSalud}, Ataque: ${senamon.nivelAtaque})");
    }
    int seleccion = int.parse(stdin.readLineSync()!);
    return entrenador.senamones[seleccion]; // Devuelve el Senamon seleccionado
  }

  // Método para realizar un ataque entre Senamones
  void realizarAtaque(Senamon atacante, Senamon defensor) {
    // Multiplicador de daño según tipos de Senamon
    double multiplicador = obtenerMultiplicador(atacante.tipo, defensor.tipo);
    int danio = (atacante.nivelAtaque * multiplicador).toInt();
    defensor.recibirAtaque(danio); // Aplica el daño
    print("${atacante.nombre} ataca a ${defensor.nombre} causando $danio puntos de daño.");
  }

  // Método para realizar una defensa entre Senamones
  void realizarDefensa(Senamon defensor, Senamon atacante) {
    double multiplicador = obtenerMultiplicador(atacante.tipo, defensor.tipo);
    int reduccionDanio = (defensor.nivelAtaque * multiplicador).toInt();
    defensor.puntosSalud += reduccionDanio; // Recupera salud
    print("${defensor.nombre} se defiende y recupera $reduccionDanio puntos de salud.");
  }

  // Método que obtiene el multiplicador de daño basado en los tipos de Senamon
  double obtenerMultiplicador(String tipoAtacante, String tipoDefensor) {
    // Diferentes tipos y sus efectos
    if (tipoAtacante == "agua" && tipoDefensor == "fuego") return 2.0;  // Super efectivo
    if (tipoAtacante == "fuego" && tipoDefensor == "hierba") return 1.4;  // Efectivo
    if (tipoAtacante == "volador" && tipoDefensor == "eléctrico") return 0.9;  // Poco efectivo
    return 1.0; // Neutro
  }
}
