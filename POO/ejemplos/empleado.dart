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
  cumplirAnios() {
    this.edad++;
  }

  // Método para cambiar el puesto
  cambiarPuesto(String nuevoPuesto) {
    puesto = nuevoPuesto;
  }

  // Método para mostrar la información
  void mostrarInformacion() {
    print("""
      Nombre: $nombre.
      Edad: $edad.
      Salario: $salario.
      Puesto: $puesto.
      Tipo Contrato: $tipoContrato
  """);
  }

  // Método para calcular la bonificación
  double calcularBonificacion() {
    double bonificacion = 0;
    switch (tipoContrato.toLowerCase()) {
      case 'Contratista':
        bonificacion = salario * 0.10;
        break;
      case 'Temporal':
        bonificacion = salario * 0.05;
        break;
      case 'Indefinido':
        bonificacion = salario * 0.15;
        break;
    }
    return bonificacion;
  }
}
