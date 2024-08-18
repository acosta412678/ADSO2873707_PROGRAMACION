class Senamon {
  String nombre, fase, descripcion, tipoSenamon/*fuego, agua, hierva, volador, eléctrico)*/;
  int nivel, nivelEnergia, nivelAtaque, puntosSalud;
  double peso;
  
  Senamon(
      this.nombre,
      this.nivel,
      this.tipoSenamon,
      this.peso,
      this.puntosSalud,
      this.nivelAtaque,
      this.fase,
      this.nivelEnergia,
      this.descripcion);
}

class Entrenador {
  String nombre, email;
  DateTime fechaNacimiento;
  int nivelExperiencia, cantidadBatallasGanadas;
  List<Senamon> senamones;

  Entrenador(this.nombre, this.email, this.fechaNacimiento, this.nivelExperiencia, this.cantidadBatallasGanadas, this.senamones);
}