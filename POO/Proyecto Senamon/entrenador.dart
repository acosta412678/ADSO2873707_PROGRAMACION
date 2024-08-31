import 'senamon.dart';

class Entrenador {
  String nombre, email;
  DateTime fechaNacimiento;
  int nivelExperiencia, batallasGanadas;
  List<Senamon> senamones;

  Entrenador({
    required this.nombre,
    required this.email,
    required this.fechaNacimiento,
    this.nivelExperiencia = 0,
    this.batallasGanadas = 0,
    required this.senamones,
  });

  void entrenarSenamon(int indice, int aumentoAtaque, int aumentoSalud) {
    if (indice < 0 || indice >= senamones.length) return;
    int costoExperiencia = (aumentoAtaque + aumentoSalud) * 10;
    if (nivelExperiencia >= costoExperiencia) {
      senamones[indice].entrenar(aumentoAtaque, aumentoSalud);
      nivelExperiencia -= costoExperiencia;
    } else {
      print("No tienes suficiente experiencia para entrenar.");
    }
  }

  void agregarSenamon(Senamon nuevoSenamon) {
    if (senamones.length < 5) {
      senamones.add(nuevoSenamon);
    } else {
      print("Ya tienes 5 Senamones. Debes reemplazar uno.");
    }
  }

  void reemplazarSenamon(int indice, Senamon nuevoSenamon) {
    if (indice >= 0 && indice < senamones.length) {
      senamones[indice] = nuevoSenamon;
    } else {
      print("Índice fuera de rango.");
    }
  }
}