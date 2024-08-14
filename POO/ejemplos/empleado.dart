class Empleado {
  String nombre;
  int edad;
  double salario;
  String puesto;
  String tipoContrato;

  // Constructor
  Empleado(
      this.nombre, this.edad, this.salario, this.puesto, this.tipoContrato);

  // Método para aumentar el salario
  void aumentarSalario(double porcentaje) {
    this.salario += this.salario * (porcentaje / 100);
  }

  // Método para cumplir años
  void cumplirAnios() {
    this.edad++;
  }

  // Método para cambiar el puesto
  void cambiarPuesto(String nuevoPuesto) {
    puesto = nuevoPuesto;
  }

  // Método para mostrar la información
  void mostrarInformacion() {
    // Calcular bonificación y porcentaje
    Map<String, dynamic> bonificacionData = calcularBonificacion();
    double bonificacion = bonificacionData['bonificacion'];
    String porcentajeBonificacion = bonificacionData['porcentaje'];

    // Mostrar la información del empleado
    print("""
      Nombre: $nombre.
      Edad: $edad.
      Salario: \$${salario.toStringAsFixed(2)}.
      Puesto: $puesto.
      Tipo Contrato: $tipoContrato.
      Bonificación: \$${bonificacion.toStringAsFixed(2)} ($porcentajeBonificacion).
    """);
  }

  // Método para calcular la bonificación
  Map<String, dynamic> calcularBonificacion() {
    double bonificacion = 0;
    String porcentajeBonificacion = "";

    switch (tipoContrato.toLowerCase()) {
      case 'contratista':
        bonificacion = salario * 0.10;
        porcentajeBonificacion = "10%";
        break;
      case 'temporal':
        bonificacion = salario * 0.05;
        porcentajeBonificacion = "5%";
        break;
      case 'indefinido':
        bonificacion = salario * 0.15;
        porcentajeBonificacion = "15%";
        break;
      default:
        porcentajeBonificacion = "N/A";
        break;
    }
    return {
      'bonificacion': bonificacion,
      'porcentaje': porcentajeBonificacion,
    };
  }
}
