import 'senamon.dart';

class Entrenador {
  // Datos básicos del entrenador
  String nombre;
  String email;
  DateTime fechaNacimiento;
  int nivelExperiencia; // Nivel de experiencia del entrenador
  int batallasGanadas;  // Contador de batallas ganadas
  List<Senamon> senamones;  // Lista de Senamones que posee el entrenador

  // Constructor con algunos valores por defecto
  Entrenador({
    required this.nombre,
    required this.email,
    required this.fechaNacimiento,
    this.nivelExperiencia = 0, // Por defecto nivel 0
    this.batallasGanadas = 0,  // Por defecto ninguna batalla ganada
    required this.senamones,   // Se requiere una lista de Senamones
  });

  // Método para entrenar a un Senamon
  void entrenarSenamon(int indice, int aumentoAtaque, int aumentoSalud) {
    // Verifica si el índice es válido
    if (indice < 0 || indice >= senamones.length) return;
    
    // Calcula el costo de experiencia según el entrenamiento
    int costoExperiencia = (aumentoAtaque + aumentoSalud) * 10;
    
    // Verifica si el entrenador tiene suficiente experiencia
    if (nivelExperiencia >= costoExperiencia) {
      senamones[indice].entrenar(aumentoAtaque, aumentoSalud); // Entrena al Senamon
      nivelExperiencia -= costoExperiencia; // Resta el costo de experiencia
    } else {
      print("No tienes suficiente experiencia para entrenar.");
    }
  }

  // Método para agregar un nuevo Senamon
  void agregarSenamon(Senamon nuevoSenamon) {
    // Verifica si hay espacio (máximo 5 Senamones)
    if (senamones.length < 5) {
      senamones.add(nuevoSenamon); // Añade el nuevo Senamon
    } else {
      print("Ya tienes 5 Senamones. Debes reemplazar uno.");
    }
  }

  // Método para reemplazar un Senamon existente
  void reemplazarSenamon(int indice, Senamon nuevoSenamon) {
    // Verifica si el índice es válido
    if (indice >= 0 && indice < senamones.length) {
      senamones[indice] = nuevoSenamon; // Reemplaza el Senamon en la posición indicada
    } else {
      print("Índice fuera de rango.");
    }
  }
}
