import 'senamon.dart';

class Entrenador {
  String nombre;
  String email;
  DateTime fechaNacimiento;
  int nivelExperiencia;
  int batallasGanadas;
  List<Senamon> senamones;

  Entrenador({
    required this.nombre,
    required this.email,
    required this.fechaNacimiento,
    this.nivelExperiencia = 0,
    this.batallasGanadas = 0,
    required this.senamones,
  });

  // Puedes agregar métodos aquí más adelante, como entrenar Senamones, etc.
}
