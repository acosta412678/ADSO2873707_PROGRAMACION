class Empleado {
  String nombre;
  int edad;
  double salario;
  String puesto;
  String tipoContrato;

  // Constructor
  Empleado(this.nombre, this.edad, this.salario, this.puesto, this.tipoContrato);

  // Método para aumentar el salario
  void aumentarSalario(double porcentaje) {
    salario += salario * (porcentaje / 100);
  }

  // Método para cumplir años
  void cumplirAnios() {
    edad += 1;
  }

  // Método para cambiar el puesto
  void cambiarPuesto(String nuevoPuesto) {
    puesto = nuevoPuesto;
  }

  // Método para mostrar la información
  void mostrarInformacion() {
    print('Nombre: $nombre');
    print('Edad: $edad');
    print('Salario: \$${salario.toStringAsFixed(2)}');
    print('Puesto: $puesto');
  }

  // Método para calcular la bonificación
  double calcularBonificacion() {
    double bonificacion = 0.0;
    switch (tipoContrato) {
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
