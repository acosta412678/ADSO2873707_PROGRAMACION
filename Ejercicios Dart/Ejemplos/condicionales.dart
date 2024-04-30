void main() {
  //CONDICIONAL SIMPLE
  bool esMayorEdad = false;
  if (esMayorEdad == true) {
    print("CONDICIONAL SIMPLE");
    print("Usted es mayor de edad");
  }
  // CONDICIONAL DOBLE
  bool tieneHijos = false;
  if (tieneHijos == true) {
    print("Usted tiene hijos");
  } else {
    print("Usted no tiene hijos");
  }
  // CONDICIONAL ANIDADO
  int estrato = 3;
  if (estrato == 1) {
    print("Es estrato 1");
    print("Se le subsidia el 10% de la factura");
  } else if (estrato == 2) {
    print("Se paga la factura tal cual");
  } else if (estrato == 3) {
    print("Debe pagar el 5% adicional");
  } else {
    print("Para estratos superiores a 3 se paga el 20% adicional");
  }
  // CONDICIONAL MULTIPLE
  int trimestre = 2;
  switch (trimestre) {
    case 1:
      print("Fase de Analisis");
      break;
    case 2:
      print("TRIMESTRE 2");
      print("Fase de analisis");
      break;
    case 3:
      print("Fase de diseño");
      break;
    case 4:
      print("Fase de implementacion");
    case 5:
      print("Fase de pruebas");
      break;
    case 6:
      print("Fase de mantenimiento");
      break;
    default:
      print("El trimestre es incorrecto");
  }
}
