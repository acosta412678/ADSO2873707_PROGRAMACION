import 'dart:io';

import 'entrenador.dart';
import 'senamon.dart';

class Juego {
  // Crea una lista de Senamones con diferentes tipos y características
  List<Senamon> crearSenamones() {
    return [
      // Fuego
      Senamon(nombre: "Charmander", nivel: 5, tipo: "fuego", peso: 8.5, puntosSalud: 39, nivelAtaque: 52, fase: "Charizard", nivelEnergia: 100, descripcion: "El Senamon fuego."),
      Senamon(nombre: "Vulpix", nivel: 5, tipo: "fuego", peso: 9.9, puntosSalud: 38, nivelAtaque: 41, fase: "Ninetales", nivelEnergia: 100, descripcion: "El Senamon fuego."),
      Senamon(nombre: "Growlithe", nivel: 5, tipo: "fuego", peso: 19.0, puntosSalud: 55, nivelAtaque: 70, fase: "Arcanine", nivelEnergia: 100, descripcion: "El Senamon fuego."),
      Senamon(nombre: "Cyndaquil", nivel: 5, tipo: "fuego", peso: 7.9, puntosSalud: 39, nivelAtaque: 52, fase: "Typhlosion", nivelEnergia: 100, descripcion: "El Senamon fuego."),
      Senamon(nombre: "Ponyta", nivel: 5, tipo: "fuego", peso: 30.0, puntosSalud: 50, nivelAtaque: 85, fase: "Rapidash", nivelEnergia: 100, descripcion: "El Senamon fuego."),
      Senamon(nombre: "Houndour", nivel: 5, tipo: "fuego", peso: 10.8, puntosSalud: 45, nivelAtaque: 60, fase: "Houndoom", nivelEnergia: 100, descripcion: "El Senamon fuego."),
      Senamon(nombre: "Torchic", nivel: 5, tipo: "fuego", peso: 2.5, puntosSalud: 45, nivelAtaque: 60, fase: "Blaziken", nivelEnergia: 100, descripcion: "El Senamon fuego."),
      Senamon(nombre: "Numel", nivel: 5, tipo: "fuego", peso: 24.0, puntosSalud: 60, nivelAtaque: 60, fase: "Camerupt", nivelEnergia: 100, descripcion: "El Senamon fuego."),
      Senamon(nombre: "Magby", nivel: 5, tipo: "fuego", peso: 21.4, puntosSalud: 45, nivelAtaque: 75, fase: "Magmar", nivelEnergia: 100, descripcion: "El Senamon fuego."),
      Senamon(nombre: "Litleo", nivel: 5, tipo: "fuego", peso: 13.5, puntosSalud: 62, nivelAtaque: 50, fase: "Pyroar", nivelEnergia: 100, descripcion: "El Senamon fuego."),

      // Agua
      Senamon(nombre: "Squirtle", nivel: 5, tipo: "agua", peso: 9.0, puntosSalud: 44, nivelAtaque: 48, fase: "Blastoise", nivelEnergia: 100, descripcion: "El Senamon agua."),
      Senamon(nombre: "Psyduck", nivel: 5, tipo: "agua", peso: 19.6, puntosSalud: 50, nivelAtaque: 52, fase: "Golduck", nivelEnergia: 100, descripcion: "El Senamon agua."),
      Senamon(nombre: "Poliwag", nivel: 5, tipo: "agua", peso: 12.4, puntosSalud: 40, nivelAtaque: 50, fase: "Poliwrath", nivelEnergia: 100, descripcion: "El Senamon agua."),
      Senamon(nombre: "Tentacool", nivel: 5, tipo: "agua", peso: 45.5, puntosSalud: 40, nivelAtaque: 40, fase: "Tentacruel", nivelEnergia: 100, descripcion: "El Senamon agua."),
      Senamon(nombre: "Horsea", nivel: 5, tipo: "agua", peso: 8.0, puntosSalud: 30, nivelAtaque: 40, fase: "Kingdra", nivelEnergia: 100, descripcion: "El Senamon agua."),
      Senamon(nombre: "Seel", nivel: 5, tipo: "agua", peso: 90.0, puntosSalud: 65, nivelAtaque: 45, fase: "Dewgong", nivelEnergia: 100, descripcion: "El Senamon agua."),
      Senamon(nombre: "Totodile", nivel: 5, tipo: "agua", peso: 9.5, puntosSalud: 50, nivelAtaque: 65, fase: "Feraligatr", nivelEnergia: 100, descripcion: "El Senamon agua."),
      Senamon(nombre: "Wooper", nivel: 5, tipo: "agua", peso: 8.5, puntosSalud: 55, nivelAtaque: 45, fase: "Quagsire", nivelEnergia: 100, descripcion: "El Senamon agua."),
      Senamon(nombre: "Mudkip", nivel: 5, tipo: "agua", peso: 7.6, puntosSalud: 50, nivelAtaque: 70, fase: "Swampert", nivelEnergia: 100, descripcion: "El Senamon agua."),
      Senamon(nombre: "Magikarp", nivel: 5, tipo: "agua", peso: 10.0, puntosSalud: 20, nivelAtaque: 10, fase: "Gyarados", nivelEnergia: 100, descripcion: "El Senamon agua."),

      // Hierba
      Senamon(nombre: "Bulbasaur", nivel: 5, tipo: "hierba", peso: 6.9, puntosSalud: 45, nivelAtaque: 49, fase: "Venusaur", nivelEnergia: 100, descripcion: "El Senamon hierba."),
      Senamon(nombre: "Oddish", nivel: 5, tipo: "hierba", peso: 5.4, puntosSalud: 45, nivelAtaque: 50, fase: "Vileplume", nivelEnergia: 100, descripcion: "El Senamon hierba."),
      Senamon(nombre: "Bellsprout", nivel: 5, tipo: "hierba", peso: 4.0, puntosSalud: 50, nivelAtaque: 75, fase: "Victreebel", nivelEnergia: 100, descripcion: "El Senamon hierba."),
      Senamon(nombre: "Chikorita", nivel: 5, tipo: "hierba", peso: 6.4, puntosSalud: 45, nivelAtaque: 49, fase: "Meganium", nivelEnergia: 100, descripcion: "El Senamon hierba."),
      Senamon(nombre: "Hoppip", nivel: 5, tipo: "hierba", peso: 0.5, puntosSalud: 35, nivelAtaque: 35, fase: "Jumpluff", nivelEnergia: 100, descripcion: "El Senamon hierba."),
      Senamon(nombre: "Treecko", nivel: 5, tipo: "hierba", peso: 5.0, puntosSalud: 40, nivelAtaque: 45, fase: "Sceptile", nivelEnergia: 100, descripcion: "El Senamon hierba."),
      Senamon(nombre: "Lotad", nivel: 5, tipo: "hierba", peso: 2.6, puntosSalud: 40, nivelAtaque: 30, fase: "Ludicolo", nivelEnergia: 100, descripcion: "El Senamon hierba."),
      Senamon(nombre: "Seedot", nivel: 5, tipo: "hierba", peso: 4.0, puntosSalud: 40, nivelAtaque: 40, fase: "Shiftry", nivelEnergia: 100, descripcion: "El Senamon hierba."),
      Senamon(nombre: "Roselia", nivel: 5, tipo: "hierba", peso: 2.0, puntosSalud: 50, nivelAtaque: 60, fase: "Roserade", nivelEnergia: 100, descripcion: "El Senamon hierba."),
      Senamon(nombre: "Turtwig", nivel: 5, tipo: "hierba", peso: 10.2, puntosSalud: 55, nivelAtaque: 68, fase: "Torterra", nivelEnergia: 100, descripcion: "El Senamon hierba."),

      // Volador
      Senamon(nombre: "Pidgey", nivel: 5, tipo: "volador", peso: 1.8, puntosSalud: 40, nivelAtaque: 45, fase: "Pidgeot", nivelEnergia: 100, descripcion: "El Senamon volador."),
      Senamon(nombre: "Spearow", nivel: 5, tipo: "volador", peso: 2.0, puntosSalud: 40, nivelAtaque: 60, fase: "Fearow", nivelEnergia: 100, descripcion: "El Senamon volador."),
      Senamon(nombre: "Zubat", nivel: 5, tipo: "volador", peso: 7.5, puntosSalud: 40, nivelAtaque: 45, fase: "Crobat", nivelEnergia: 100, descripcion: "El Senamon volador."),
      Senamon(nombre: "Hoothoot", nivel: 5, tipo: "volador", peso: 21.2, puntosSalud: 60, nivelAtaque: 30, fase: "Noctowl", nivelEnergia: 100, descripcion: "El Senamon volador."),
      Senamon(nombre: "Doduo", nivel: 5, tipo: "volador", peso: 39.2, puntosSalud: 35, nivelAtaque: 85, fase: "Dodrio", nivelEnergia: 100, descripcion: "El Senamon volador."),
      Senamon(nombre: "Wingull", nivel: 5, tipo: "volador", peso: 9.5, puntosSalud: 30, nivelAtaque: 40, fase: "Pelipper", nivelEnergia: 100, descripcion: "El Senamon volador."),
      Senamon(nombre: "Swablu", nivel: 5, tipo: "volador", peso: 1.2, puntosSalud: 45, nivelAtaque: 40, fase: "Altaria", nivelEnergia: 100, descripcion: "El Senamon volador."),
      Senamon(nombre: "Starly", nivel: 5, tipo: "volador", peso: 2.0, puntosSalud: 40, nivelAtaque: 55, fase: "Staraptor", nivelEnergia: 100, descripcion: "El Senamon volador."),
      Senamon(nombre: "Pidgeotto", nivel: 5, tipo: "volador", peso: 30.0, puntosSalud: 63, nivelAtaque: 60, fase: "Pidgeot", nivelEnergia: 100, descripcion: "El Senamon volador."),
      Senamon(nombre: "Murkrow", nivel: 5, tipo: "volador", peso: 2.1, puntosSalud: 60, nivelAtaque: 85, fase: "Honchkrow", nivelEnergia: 100, descripcion: "El Senamon volador."),

      // Eléctrico
      Senamon(nombre: "Pikachu", nivel: 5, tipo: "eléctrico", peso: 6.0, puntosSalud: 35, nivelAtaque: 55, fase: "Raichu", nivelEnergia: 100, descripcion: "El Senamon eléctrico."),
      Senamon(nombre: "Magnemite", nivel: 5, tipo: "eléctrico", peso: 6.0, puntosSalud: 25, nivelAtaque: 35, fase: "Magnezone", nivelEnergia: 100, descripcion: "El Senamon eléctrico."),
      Senamon(nombre: "Voltorb", nivel: 5, tipo: "eléctrico", peso: 10.4, puntosSalud: 40, nivelAtaque: 30, fase: "Electrode", nivelEnergia: 100, descripcion: "El Senamon eléctrico."),
      Senamon(nombre: "Electrike", nivel: 5, tipo: "eléctrico", peso: 15.2, puntosSalud: 40, nivelAtaque: 45, fase: "Manectric", nivelEnergia: 100, descripcion: "El Senamon eléctrico."),
      Senamon(nombre: "Shinx", nivel: 5, tipo: "eléctrico", peso: 9.5, puntosSalud: 45, nivelAtaque: 65, fase: "Luxray", nivelEnergia: 100, descripcion: "El Senamon eléctrico."),
      Senamon(nombre: "Mareep", nivel: 5, tipo: "eléctrico", peso: 7.8, puntosSalud: 55, nivelAtaque: 40, fase: "Ampharos", nivelEnergia: 100, descripcion: "El Senamon eléctrico."),
      Senamon(nombre: "Elekid", nivel: 5, tipo: "eléctrico", peso: 23.5, puntosSalud: 45, nivelAtaque: 63, fase: "Electivire", nivelEnergia: 100, descripcion: "El Senamon eléctrico."),
      Senamon(nombre: "Joltik", nivel: 5, tipo: "eléctrico", peso: 0.6, puntosSalud: 50, nivelAtaque: 47, fase: "Galvantula", nivelEnergia: 100, descripcion: "El Senamon eléctrico."),
      Senamon(nombre: "Blitzle", nivel: 5, tipo: "eléctrico", peso: 29.8, puntosSalud: 45, nivelAtaque: 60, fase: "Zebstrika", nivelEnergia: 100, descripcion: "El Senamon eléctrico."),
      Senamon(nombre: "Chinchou", nivel: 5, tipo: "eléctrico", peso: 12.0, puntosSalud: 75, nivelAtaque: 38, fase: "Lanturn", nivelEnergia: 100, descripcion: "El Senamon eléctrico."),
    ];
  }

  // Crea un entrenador, pidiendo información al usuario y permitiéndole seleccionar Senamones
  Entrenador crearEntrenador(String nombre, List<Senamon> senamonesDisponibles) {
    print("Ingrese su nombre:");
    String? nombreEntrenador = stdin.readLineSync();
    print("Ingrese su email:");
    String? email = stdin.readLineSync();
    print("Ingrese su fecha de nacimiento (YYYY-MM-DD):");
    String? fechaStr = stdin.readLineSync();
    DateTime fechaNacimiento = DateTime.parse(fechaStr!);

    // Crea una instancia de Entrenador con la información ingresada
    Entrenador entrenador = Entrenador(
      nombre: nombreEntrenador ?? nombre,
      email: email ?? "",
      fechaNacimiento: fechaNacimiento,
      senamones: [],
    );

    print("Selecciona 5 Senamones:");
    for (int i = 0; i < 5; i++) {
      print("Selecciona el Senamon #${i + 1}:");
      for (int j = 0; j < senamonesDisponibles.length; j++) {
        print("$j: ${senamonesDisponibles[j].nombre}");
      }
      int seleccion = int.parse(stdin.readLineSync()!);
      entrenador.senamones.add(senamonesDisponibles[seleccion]);
    }

    return entrenador;
  }
}
