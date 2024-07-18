import 'dart:ffi';

class Felino {
  // Atributos de la Clase
  String nombre;
  double altura, peso;
  int edad;
  // Constructor: Método que se ejecuta cuando se
  // crea un objeto de la clase
  Felino(this.nombre, this.altura, this.peso, this.edad);

  // Métodos
  void comer() {
    print("El felino ${this.nombre} Come");
  }

  void dormir() {
    print("El felino ${this.nombre} Duerme");
  }

  void caminar() {
    print("El felino ${nombre} Camina");
  }

  void correr() {
    print("El felino ${nombre} Corre");
  }

  void mostrarInformacion() {
    print("""
        EL nombre del felino es: ${this.nombre}
        tiene una altura de: ${this.altura}
        tiene un peso de: ${this.peso}
        y tiene una edad de: ${this.edad} 
""");
  }
}

void main(List<String> args) {
  // Creación del objeto
  int numero;
  String texto;
  bool estado;
  Felino felino1_obj; // Se declarara un objeto de la clase felino
  felino1_obj = Felino("Michi", 90, 3.5, 2);
  felino1_obj.caminar();
  felino1_obj.comer();
  felino1_obj.correr();
  felino1_obj.mostrarInformacion();
}
