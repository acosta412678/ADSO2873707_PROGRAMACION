import 'dart:ffi';
import 'dart:io';

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
  /*********************/
  print("*" * 50);
  // Se declara e instancia el objeto en una sola línea de código
  Felino felino2_obj = Felino("Pancho", 50, 60, 4);
  felino2_obj.caminar();
  felino2_obj.correr();
  felino2_obj.mostrarInformacion();
  /**************************/

  print("*" * 50);
  String nombre = "Lola";
  double altura = 45, peso = 25.9;
  int edad = 12;
  Felino felino_03_obj = Felino(nombre, altura, peso, edad);
  felino_03_obj.caminar();
  felino_03_obj.comer();
  felino_03_obj.correr();
  felino_03_obj.mostrarInformacion();
  /**************************/
  print("*" * 50);
  String nombre2;
  double altura2, pesp2;
  int edad2;
  print("Ingrese el nombre del felino");
  nombre2 = stdin.readLineSync()!;
}
