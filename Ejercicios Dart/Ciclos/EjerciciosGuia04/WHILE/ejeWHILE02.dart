import 'dart:io';

void main(List<String> args) {
/**En una empresa se requiere calcular el salario semanal de cada uno de los n obreros que laboran en
ella. El salario se obtiene de la sig. forma:
Si el obrero trabaja 40 horas o menos se le paga $20 por hora
Si trabaja más de 40 horas se le paga $20 por cada una de las primeras 40 horas y $25 por cada hora
extra. */
  print("Ingrese el número de obreros:");
  int n = int.parse(stdin.readLineSync()!);

  print("Ingrese las horas trabajadas por cada obrero:");
  List<int> horasTrabajadas = [];
  int i = 0;
  while (i < n) {
    print("Obrero ${i + 1}:");
    int horas = int.parse(stdin.readLineSync()!);
    horasTrabajadas.add(horas);
    i++;
  }

  calcularSalarios(horasTrabajadas);
}

void calcularSalarios(List<int> horasTrabajadas) {
  int salarioBase = 20; // salario por hora
  int horasNormales = 40; // horas normales de trabajo
  int salarioExtra = 25; // salario por hora extra

  int n = horasTrabajadas.length;
  int obrero = 1;
  while (obrero <= n) {
    int horas = horasTrabajadas[obrero - 1];
    int salarioSemana = 0;

    if (horas <= horasNormales) {
      salarioSemana = horas * salarioBase;
    } else {
      int horasNormalesPagadas = horasNormales * salarioBase;
      int horasExtrasPagadas = (horas - horasNormales) * salarioExtra;
      salarioSemana = horasNormalesPagadas + horasExtrasPagadas;
    }

    print("Obrero $obrero: Horas trabajadas: $horas, Salario semanal: \$$salarioSemana");
    obrero++;
  }
}
