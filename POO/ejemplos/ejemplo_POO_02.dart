class Leon {
  String color, tipoAlimentacion, nombre;
  double altura;
  int edad;
  Leon(this.color, this.tipoAlimentacion, this.altura, this.edad, this.nombre);
  void comer() {
    print("El león ${this.nombre} Come");
  }

  void dormir() {
    print("El león ${this.nombre} Duerme");
  }

  void acechar() {
    print("El león ${nombre} asecha su victima");
  }

  void correr() {
    print("El león ${nombre} Corre");
  }
   void perseguir() {
    print("El león ${nombre} persigue su presa");
  }

  void mostrarInformacion() {
    print("""
        EL nombre del leon es: ${this.nombre}
        tiene una altura de: ${this.altura}
        es de color: ${this.color}
        tiene una edad de: ${this.edad}
        su tipo de alimentación es: ${this.tipoAlimentacion}
""");
  }
}
void main(List<String> args) {
  // Creación del objeto
  Leon leon1_obj; // Se declarara un objeto de la clase felino
  leon1_obj =Leon("Amarillo", "Carnivoro", 150, 7, "Toby");
  leon1_obj.dormir();
  leon1_obj.comer();
  leon1_obj.correr();
  leon1_obj.acechar();
  leon1_obj.perseguir();
  leon1_obj.mostrarInformacion();
}
