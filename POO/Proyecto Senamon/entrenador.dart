// entrenador.dart
import 'senamon.dart';

class Entrenador {
  String nombre;
  String email;
  DateTime fechaNacimiento;
  int nivelExperiencia;
  int batallasGanadas;
  List<Senamon> senamones;

  // Constructor para inicializar un entrenador
  Entrenador({
    required this.nombre,
    required this.email,
    required this.fechaNacimiento,
    this.nivelExperiencia = 0,
    this.batallasGanadas = 0,
    required this.senamones,
  });

  // Entrena un Senamon específico aumentando su ataque y salud
  void entrenarSenamon(int indice, int aumentoAtaque, int aumentoSalud) {
    if (indice < 0 || indice >= senamones.length) return; // Verifica si el índice es válido
    int costoExperiencia = (aumentoAtaque + aumentoSalud) * 10; // Calcula el costo de experiencia
    if (nivelExperiencia >= costoExperiencia) {
      senamones[indice].entrenar(aumentoAtaque, aumentoSalud); // Entrena al Senamon
      nivelExperiencia -= costoExperiencia; // Deducta experiencia usada
    } else {
      print("No tienes suficiente experiencia para entrenar."); // Mensaje de error si no hay suficiente experiencia
    }
  }

  // Agrega un nuevo Senamon a la lista de Senamones del entrenador
  void agregarSenamon(Senamon nuevoSenamon) {
    if (senamones.length < 5) { // Verifica que el número máximo de Senamones no se haya alcanzado
      senamones.add(nuevoSenamon); // Añade el nuevo Senamon
    } else {
      print("Ya tienes 5 Senamones. Debes reemplazar uno."); // Mensaje de error si hay demasiados Senamones
    }
  }

  // Reemplaza un Senamon existente con uno nuevo en una posición específica
  void reemplazarSenamon(int indice, Senamon nuevoSenamon) {
    if (indice >= 0 && indice < senamones.length) { // Verifica si el índice es válido
      senamones[indice] = nuevoSenamon; // Reemplaza el Senamon en la posición indicada
    } else {
      print("Índice fuera de rango."); // Mensaje de error si el índice es inválido
    }
  }
}
