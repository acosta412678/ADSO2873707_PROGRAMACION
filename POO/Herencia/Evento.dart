class Evento {
  String _nombre; // Atributo privado
  int cantPersonas; // Atributo publico
  DateTime _fecha; // Atributo privado

  Evento(this._nombre, this.cantPersonas, this._fecha);

  void setNombre(String nombre) {
    _nombre = nombre;
  }
  String getNombre() {
    return _nombre;
  }
  void setCantidadPersonas(int cant) {
    cantPersonas = cant;
  }
  int getCantidadPersonas() {
    return cantPersonas;
  }

  void setFecha(DateTime fecha){
    _fecha = fecha;
  }
  DateTime getFecha() {
    return _fecha;
  }
 }
