class Animal {
  double peso;
  String sexo;
  String especie;
  Animal(this.especie, this.peso, this.sexo);
  void hacerSonido() {
    print("El animal hace un sonido");
  }
}

// La clase Perro hereda de Animal
class Perro extends Animal {
  String raza;
  Perro(this.raza) : super("canino", 10, "H");
  @override
  void hacerSonido() {
    print("El perro ladra");
  }

  void mostrarInformacion() {
    print("""
      Especie: $especie
      Peso: $raza
      Sexo: $sexo
      Raza: $raza
""");
  }
}

void main(List<String> args) {
  Perro myDog = Perro("Criollo");
  myDog.hacerSonido();
}
