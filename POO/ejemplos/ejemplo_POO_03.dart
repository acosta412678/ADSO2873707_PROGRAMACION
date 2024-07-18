class Persona {
  String tipoDocumento, genero, nombre;
  int documento;
  DateTime fechaNac;

  Persona(this.tipoDocumento, this.genero, this.documento, this.fechaNac, this.nombre);

  void saludar() {
    print("La persona ${this.nombre} saluda");
  }

  void comunicarse() {
    print("La persona ${this.nombre} se comunica");
  }

  int calcularEdad() {
    DateTime fechaActual = DateTime.now();
    int edad = fechaActual.year - fechaNac.year;
    if (fechaActual.month < fechaNac.month ||
        (fechaActual.month == fechaNac.month && fechaActual.day < fechaNac.day)) {
      edad--;
    }
    return edad;
  }

  void mostrarInformacion() {
    int edad = calcularEdad();
    print("""
        El nombre de la persona es: ${this.nombre}
        Su género es: ${this.genero}
        Su tipo de documento es: ${this.tipoDocumento}
        Su número de documento es: ${this.documento}
        Su fecha de nacimiento es: ${this.fechaNac.day}/${this.fechaNac.month}/${this.fechaNac.year}
        Y tiene una edad de: $edad años
    """);
  }
}

void main(List<String> args) {
  // Creación del objeto
  DateTime fechaNacimiento = DateTime(2006, 10, 10); // Ejemplo de fecha de nacimiento
  Persona persona1_obj = Persona("TI", "Hombre", 1056123521, fechaNacimiento, "Luis");

  persona1_obj.saludar();
  persona1_obj.comunicarse();
  persona1_obj.mostrarInformacion();
}
