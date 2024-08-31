class Senamon { 
  String nombre, tipo, fase, descripcion;
  int nivel, puntosSalud, nivelAtaque, nivelEnergia;
  double peso;

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

  void entrenar(int aumentoAtaque, int aumentoSalud) {
    nivelAtaque += aumentoAtaque;
    puntosSalud += aumentoSalud;
  }

  void recibirAtaque(int danio) {
    puntosSalud -= danio;
    if (puntosSalud < 0) puntosSalud = 0;
  }

  bool estaVivo() {
    return puntosSalud > 0;
  }
}