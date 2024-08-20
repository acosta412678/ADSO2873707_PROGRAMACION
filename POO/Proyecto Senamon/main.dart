import 'senamon.dart';
import 'entrenador.dart';
import 'juego.dart';
void main(List<String> args) {
  // Creando algunos Senamones de ejemplo
  Senamon senamon1 = Senamon(
    nombre: "Fuegozar",
    nivel: 10,
    tipo: "Fuego",
    peso: 60.5,
    puntosSalud: 100,
    nivelAtaque: 20,
    fase: "Inicial",
    nivelEnergia: 50,
    descripcion: "Un Senamon de fuego poderoso.",
  );

  Senamon senamon2 = Senamon(
    nombre: "Aguamón",
    nivel: 8,
    tipo: "Agua",
    peso: 55.0,
    puntosSalud: 120,
    nivelAtaque: 15,
    fase: "Intermedia",
    nivelEnergia: 60,
    descripcion: "Un Senamon de agua resistente.",
  );

  // Creando un entrenador con sus Senamones
  Entrenador entrenador1 = Entrenador(
    nombre: "Ash",
    email: "ash@puebloPaleta.com",
    fechaNacimiento: DateTime(2000, 4, 10),
    senamones: [senamon1, senamon2],
  );

  print("Entrenador: ${entrenador1.nombre}");
  print("Senamon 1: ${entrenador1.senamones[0].nombre}");
  print("Senamon 2: ${entrenador1.senamones[1].nombre}");
}
