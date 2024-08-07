
class Vehiculo {
  // Atributos de la clase
  late String color;
  late int velocidad;
  late double tamanio;

  Vehiculo(String col, int vel, double tam) {
    this.color = col;
    this.velocidad = vel;
    this.tamanio = tam;
  }
  // Método avanzar
  void avanzar(int velAvanzar) {
    if (velAvanzar > 0) {
      if (this.velocidad + velAvanzar <= 200) {
        this.velocidad = this.velocidad + velAvanzar;
        print('El vehiculo viaja a ${this.velocidad}');
      } else {
        print('El valor a aumentar es inválido');
      }
    } else {
      print('El valor a aumentar es inválido');
    }
  }

  // Método detenerse
  void detenerse() {
    velocidad = 0;
    print('El vehiculo se ha detenido');
  }
}
