import 'dart:io';

void main(List<String> args) {
  /** En la Cámara de Diputados se levanta una encuesta con todos los integrantes con el fin de determinar
que porcentaje de los n diputados esta a favor del Tratado de Libre Comercio, que porcentaje esta en
contra y que porcentaje se abstiene de opinar.
El programa debe preguntar si se desea continuar ingresando datos. */
  int favor = 0;
  int contra = 0;
  int abstencion = 0;

  do {
    print("Ingrese el voto del diputado (1 = a favor, 2 = en contra, 3 = abstención):");
    int voto = int.parse(stdin.readLineSync()!);

    switch (voto) {
      case 1:
        favor++;
        break;
      case 2:
        contra++;
        break;
      case 3:
        abstencion++;
        break;
      default:
        print("Opción no válida. Por favor ingrese 1, 2 o 3.");
        continue;
    }

    print("¿Desea ingresar el voto de otro diputado? (s/n):");
    String continuar = stdin.readLineSync()!;
    
    if (continuar.toLowerCase() != 's') {
      break;
    }
  } while (true);

  int totalDiputados = favor + contra + abstencion;

  double porcentajeFavor = (favor / totalDiputados) * 100;
  double porcentajeContra = (contra / totalDiputados) * 100;
  double porcentajeAbstencion = (abstencion / totalDiputados) * 100;

  print("\nResultados de la encuesta:");
  print("Total de diputados: $totalDiputados");
  print("Porcentaje a favor: ${porcentajeFavor.toStringAsFixed(2)}%");
  print("Porcentaje en contra: ${porcentajeContra.toStringAsFixed(2)}%");
  print("Porcentaje de abstención: ${porcentajeAbstencion.toStringAsFixed(2)}%");
}