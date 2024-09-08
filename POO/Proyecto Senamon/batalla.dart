import 'dart:io';
import 'dart:math';

import 'entrenador.dart';
import 'senamon.dart';

class Batalla {
  Entrenador jugador1;
  Entrenador jugador2;

  // Constructor para inicializar los entrenadores
  Batalla(this.jugador1, this.jugador2);

  // Inicia la batalla entre los dos entrenadores
  void iniciar() {
    Random random = Random();
    String resultadoMoneda = random.nextBool() ? "cara" : "cruz";
    print("Lanzando moneda... Resultado: $resultadoMoneda");

    // Decide quién comienza la batalla según el resultado de la moneda
    Entrenador primerJugador = resultadoMoneda == "cara" ? jugador1 : jugador2;
    Entrenador segundoJugador = primerJugador == jugador1 ? jugador2 : jugador1;

    print("Jugador 1: ${primerJugador.nombre}");
    print("Jugador 2: ${segundoJugador.nombre}");

    int senamonesDestruidosJugador1 = 0;
    int senamonesDestruidosJugador2 = 0;

    // Bucle de batalla hasta que uno de los jugadores destruya 3 Senamones del oponente
    while (senamonesDestruidosJugador1 < 3 && senamonesDestruidosJugador2 < 3) {
      // Menú para elegir atacar o defender
      print("${primerJugador.nombre}, elige una opción:");
      print("1. Atacar");
      print("2. Defender");
      String? opcion = stdin.readLineSync();

      // Selecciona un Senamon de cada jugador
      Senamon senamon1 = seleccionarSenamon(primerJugador);
      Senamon senamon2 = seleccionarSenamon(segundoJugador);

      if (opcion == '1') {
        // Realiza un ataque
        realizarAtaque(senamon1, senamon2);
        if (!senamon2.estaVivo()) {
          print("${senamon2.nombre} ha sido derrotado.");
          senamonesDestruidosJugador1++;
        }
      } else if (opcion == '2') {
        // Realiza una defensa
        realizarDefensa(senamon1, senamon2);
      }

      // Cambia de turno entre los jugadores
      Entrenador temp = primerJugador;
      primerJugador = segundoJugador;
      segundoJugador = temp;
    }

    // Determina el ganador y otorga experiencia
    if (senamonesDestruidosJugador1 >= 3) {
      print("${jugador1.nombre} ha ganado la batalla!");
      jugador1.nivelExperiencia += 100;
    } else if (senamonesDestruidosJugador2 >= 3) {
      print("${jugador2.nombre} ha ganado la batalla!");
      jugador2.nivelExperiencia += 100;
    }
  }

  // Permite a un entrenador seleccionar un Senamon para la batalla
  Senamon seleccionarSenamon(Entrenador entrenador) {
    print("Selecciona un Senamon para la batalla:");
    for (int i = 0; i < entrenador.senamones.length; i++) {
      Senamon senamon = entrenador.senamones[i];
      print("$i: ${senamon.nombre} (Salud: ${senamon.puntosSalud}, Ataque: ${senamon.nivelAtaque})");
    }
    int seleccion = int.parse(stdin.readLineSync()!);
    return entrenador.senamones[seleccion];
  }

  // Realiza un ataque de un Senamon a otro
  void realizarAtaque(Senamon atacante, Senamon defensor) {
    double multiplicador = obtenerMultiplicador(atacante.tipo, defensor.tipo);
    int danio = (atacante.nivelAtaque * multiplicador).toInt();
    defensor.recibirAtaque(danio);
    print("${atacante.nombre} ataca a ${defensor.nombre} causando $danio puntos de daño.");
  }

  // Realiza una defensa de un Senamon contra un ataque
  void realizarDefensa(Senamon defensor, Senamon atacante) {
    double multiplicador = obtenerMultiplicador(atacante.tipo, defensor.tipo);
    int reduccionDanio = (defensor.nivelAtaque * multiplicador).toInt();
    defensor.puntosSalud += reduccionDanio;

    print("${defensor.nombre} se defiende y recupera $reduccionDanio puntos de salud.");
  }

  // Obtiene el multiplicador de daño basado en los tipos de Senamones
  double obtenerMultiplicador(String tipoAtacante, String tipoDefensor) {
    if (tipoAtacante == "agua" && tipoDefensor == "fuego") return 2.0;  // Super Efectivo
    if (tipoAtacante == "fuego" && tipoDefensor == "hierba") return 1.4;  // Efectivo
    if (tipoAtacante == "volador" && tipoDefensor == "eléctrico") return 0.9;  // Poco Efectivo
    return 1.0;  // Normal
  }
}
