// Clase Senamon que representa un Senamon con sus propiedades y métodos
class Senamon {
  String nombre; // Nombre del Senamon
  int nivel; // Nivel del Senamon
  String tipo; // Tipo del Senamon (ej. fuego, agua)
  double peso; // Peso del Senamon
  int puntosSalud; // Puntos de salud del Senamon
  int nivelAtaque; // Nivel de ataque del Senamon
  String fase; // Fase evolutiva del Senamon
  int nivelEnergia; // Nivel de energía del Senamon
  String descripcion; // Descripción del Senamon

  // Constructor que inicializa todas las propiedades del Senamon
  Senamon({
    required this.nombre,
    required this.nivel,
    required this.tipo,
    required this.peso,
    required this.puntosSalud,
    required this.nivelAtaque,
    required this.fase,
    required this.nivelEnergia,
    required this.descripcion,
  });

  // Método para entrenar al Senamon, aumentando su ataque y salud
  void entrenar(int aumentoAtaque, int aumentoSalud) {
    nivelAtaque += aumentoAtaque; // Aumentar el nivel de ataque
    puntosSalud += aumentoSalud; // Aumentar los puntos de salud
  }

  // Método para recibir un ataque, reduciendo los puntos de salud
  void recibirAtaque(int danio) {
    puntosSalud -= danio; // Reducir puntos de salud por el daño recibido
    if (puntosSalud < 0) puntosSalud = 0; // Asegurarse de que la salud no sea negativa
  }

  // Método para verificar si el Senamon sigue vivo
  bool estaVivo() {
    return puntosSalud > 0; // Retorna true si el Senamon tiene puntos de salud positivos
  }
}
