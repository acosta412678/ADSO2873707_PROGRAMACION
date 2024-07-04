import 'dart:ffi';
import 'dart:io';

void main(List<String> args) {
  /**Un censador recopila ciertos datos aplicando encuestas para el último Censo Nacional de Población
y Vivienda. Desea obtener de todas las personas que alcance a encuestar en un día, que porcentaje
tiene estudios de primaria, secundaria, carrera técnica, estudios profesionales y estudios de
posgrado.
El programa debe preguntar si se desea continuar ingresando datos */
  int totalPersonas = 0;
  int primaria = 0;
  int secundaria = 0;
  int tecnica = 0;
  int profesional = 0;
  int posgrado = 0;

  do {
    totalPersonas++;

    print("Persona $totalPersonas:");
    print("Ingrese el nivel educativo:");
    print("1 - Primaria");
    print("2 - Secundaria");
    print("3 - Carrera técnica");
    print("4 - Estudios profesionales");
    print("5 - Estudios de posgrado");
    int nivel = int.parse(stdin.readLineSync()!);

    switch (nivel) {
      case 1:
        primaria++;
        break;
      case 2:
        secundaria++;
        break;
      case 3:
        tecnica++;
        break;
      case 4:
        profesional++;
        break;
      case 5:
        posgrado++;
        break;
      default:
        print("Opción no válida. Por favor ingrese un número del 1 al 5.");
        totalPersonas--;
        continue;
    }

    print("¿Desea continuar ingresando datos? (s/n):");
    String continuar = stdin.readLineSync()!;
    
    if (continuar.toLowerCase() != 's') {
      break;
    }
  } while (true);

  int totalEducados = primaria + secundaria + tecnica + profesional + posgrado;

  if (totalPersonas > 0) {
    double porcentajePrimaria = (primaria / totalPersonas) * 100;
    double porcentajeSecundaria = (secundaria / totalPersonas) * 100;
    double porcentajeTecnica = (tecnica / totalPersonas) * 100;
    double porcentajeProfesional = (profesional / totalPersonas) * 100;
    double porcentajePosgrado = (posgrado / totalPersonas) * 100;
    print("\nResultados de la encuesta:");
    print("Total de personas encuestadas: $totalPersonas");
    print("Porcentaje con estudios de primaria: ${porcentajePrimaria.toStringAsFixed(2)}%");
    print("Porcentaje con estudios de secundaria: ${porcentajeSecundaria.toStringAsFixed(2)}%");
    print("Porcentaje con carrera técnica: ${porcentajeTecnica.toStringAsFixed(2)}%");
    print("Porcentaje con estudios profesionales: ${porcentajeProfesional.toStringAsFixed(2)}%");
    print("Porcentaje con estudios de posgrado: ${porcentajePosgrado.toStringAsFixed(2)}%");
  } else {
    print("\nNo se ingresaron datos.");
  }
}
