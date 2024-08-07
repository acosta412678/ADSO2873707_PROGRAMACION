class Empleado {
  String nombre;
  int edad;
  double salario;
  String puesto;
  String tipoContrato;

  // Constructor
<<<<<<< HEAD
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
=======
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
>>>>>>> d929e2410b558637c76a039a8c716c02adfb8876
    puesto = nuevoPuesto;
  }

  // Método para mostrar la información
  void mostrarInformacion() {
<<<<<<< HEAD
    print("""
      Nombre: $nombre.
      Edad: $edad.
      Salario: $salario.
      Puesto: $puesto.
      Tipo Contrato: $tipoContrato
  """);
=======
    print('Nombre: $nombre');
    print('Edad: $edad');
    print('Salario: \$${salario.toStringAsFixed(2)}');
    print('Puesto: $puesto');
>>>>>>> d929e2410b558637c76a039a8c716c02adfb8876
  }

  // Método para calcular la bonificación
  double calcularBonificacion() {
<<<<<<< HEAD
    double bonificacion = 0;
    switch (tipoContrato.toLowerCase()) {
=======
    double bonificacion = 0.0;
    switch (tipoContrato) {
>>>>>>> d929e2410b558637c76a039a8c716c02adfb8876
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
