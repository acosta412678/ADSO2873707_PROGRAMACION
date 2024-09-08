// Define la clase Senamon con las propiedades y métodos que describen un Senamon

class Senamon {
  String nombre;  // Nombre del Senamon
  int nivel;  // Nivel del Senamon
  String tipo;  // Tipo del Senamon: fuego, agua, hierba, volador, eléctrico
  double peso;  // Peso del Senamon
  int puntosSalud;  // Puntos de salud del Senamon
  int nivelAtaque;  // Nivel de ataque del Senamon
  String fase;  // Fase de evolución del Senamon (ej. Pikachu -> Raichu)
  int nivelEnergia;  // Nivel de energía del Senamon
  String descripcion;  // Descripción del Senamon

  // Constructor para inicializar un Senamon con todos sus atributos
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
    nivelAtaque += aumentoAtaque;  // Aumenta el nivel de ataque
    puntosSalud += aumentoSalud;  // Aumenta los puntos de salud
  }

  // Método para recibir daño y reducir los puntos de salud
  void recibirAtaque(int danio) {
    puntosSalud -= danio;  // Resta el daño recibido
    if (puntosSalud < 0) puntosSalud = 0;  // Asegura que los puntos de salud no sean negativos
  }

  // Método para verificar si el Senamon sigue vivo
  bool estaVivo() {
    return puntosSalud > 0;  // Retorna true si el Senamon tiene más de 0 puntos de salud
  }
}
