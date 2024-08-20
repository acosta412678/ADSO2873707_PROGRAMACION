import 'dart:math';
import 'dart:io';

class Tema {
  String nombre;
  int cantidadEstudiantes;
  List<String> estudiantes;

  Tema(this.nombre, this.cantidadEstudiantes) : estudiantes = [];
}

class Estudiante {
  String nombreCompleto;

  Estudiante(this.nombreCompleto);
}

List<Tema> temas = [];
List<Estudiante> estudiantes = [];

void main(List<String> args) {
  precargarTemas();
  int opcion;
  do {
    print('''
    Menú Principal:
    1. Crear tema de exposición
    2. Crear estudiante
    3. Gestionar temas de exposición
    4. Gestionar estudiantes
    5. Asignar estudiantes a temas aleatoriamente
    6. Salir
    ''');
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        crearTema();
        break;
      case 2:
        crearEstudiante();
        break;
      case 3:
        gestionarTemas();
        break;
      case 4:
        gestionarEstudiantes();
        break;
      case 5:
        asignarEstudiantesAleatoriamente();
        break;
      case 6:
        print('Saliendo...');
        break;
      default:
        print('Opción inválida. Intente nuevamente.');
    }
  } while (opcion != 6);
}

void crearTema() {
  print('Ingrese el nombre del tema:');
  String nombre = stdin.readLineSync()!;
  print('Ingrese la cantidad de estudiantes para este tema:');
  int cantidad = int.parse(stdin.readLineSync()!);

  temas.add(Tema(nombre, cantidad));
  print('Tema "$nombre" creado con éxito.\n');
}

void crearEstudiante() {
  print('Ingrese el nombre completo del estudiante:');
  String nombreCompleto = stdin.readLineSync()!;

  estudiantes.add(Estudiante(nombreCompleto));
  print('Estudiante "$nombreCompleto" creado con éxito.\n');
}

void gestionarTemas() {
  int opcion;
  do {
    print('''
    Gestión de Temas:
    1. Mostrar temas
    2. Editar tema
    3. Eliminar tema
    4. Volver al menú principal
    ''');
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        mostrarTemas();
        break;
      case 2:
        editarTema();
        break;
      case 3:
        eliminarTema();
        break;
      case 4:
        print('Volviendo al menú principal...\n');
        break;
      default:
        print('Opción inválida. Intente nuevamente.');
    }
  } while (opcion != 4);
}

void gestionarEstudiantes() {
  int opcion;
  do {
    print('''
    Gestión de Estudiantes:
    1. Mostrar estudiantes
    2. Editar estudiante
    3. Eliminar estudiante
    4. Volver al menú principal
    ''');
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        mostrarEstudiantes();
        break;
      case 2:
        editarEstudiante();
        break;
      case 3:
        eliminarEstudiante();
        break;
      case 4:
        print('Volviendo al menú principal...\n');
        break;
      default:
        print('Opción inválida. Intente nuevamente.');
    }
  } while (opcion != 4);
}

void mostrarTemas() {
  if (temas.isEmpty) {
    print('No hay temas creados.\n');
  } else {
    for (var i = 0; i < temas.length; i++) {
      print(
          '${i + 1}. Tema: ${temas[i].nombre}, Estudiantes asignados: ${temas[i].estudiantes.length}/${temas[i].cantidadEstudiantes}');
    }
    print('');
  }
}

void editarTema() {
  if (temas.isEmpty) {
    print('No hay temas creados.\n');
    return;
  }

  mostrarTemas();
  print('Seleccione el número del tema a editar:');
  int index = int.parse(stdin.readLineSync()!) - 1;

  if (index >= 0 && index < temas.length) {
    print('Ingrese el nuevo nombre del tema:');
    temas[index].nombre = stdin.readLineSync()!;
    print('Ingrese la nueva cantidad de estudiantes:');
    temas[index].cantidadEstudiantes = int.parse(stdin.readLineSync()!);
    print('Tema actualizado con éxito.\n');
  } else {
    print('Selección inválida.\n');
  }
}

void eliminarTema() {
  if (temas.isEmpty) {
    print('No hay temas creados.\n');
    return;
  }

  mostrarTemas();
  print('Seleccione el número del tema a eliminar:');
  int index = int.parse(stdin.readLineSync()!) - 1;

  if (index >= 0 && index < temas.length) {
    temas.removeAt(index);
    print('Tema eliminado con éxito.\n');
  } else {
    print('Selección inválida.\n');
  }
}

void mostrarEstudiantes() {
  if (estudiantes.isEmpty) {
    print('No hay estudiantes creados.\n');
  } else {
    for (var i = 0; i < estudiantes.length; i++) {
      print('${i + 1}. ${estudiantes[i].nombreCompleto}');
    }
    print('');
  }
}

void editarEstudiante() {
  if (estudiantes.isEmpty) {
    print('No hay estudiantes creados.\n');
    return;
  }

  mostrarEstudiantes();
  print('Seleccione el número del estudiante a editar:');
  int index = int.parse(stdin.readLineSync()!) - 1;

  if (index >= 0 && index < estudiantes.length) {
    print('Ingrese el nuevo nombre del estudiante:');
    estudiantes[index].nombreCompleto = stdin.readLineSync()!;
    print('Estudiante actualizado con éxito.\n');
  } else {
    print('Selección inválida.\n');
  }
}

void eliminarEstudiante() {
  if (estudiantes.isEmpty) {
    print('No hay estudiantes creados.\n');
    return;
  }

  mostrarEstudiantes();
  print('Seleccione el número del estudiante a eliminar:');
  int index = int.parse(stdin.readLineSync()!) - 1;

  if (index >= 0 && index < estudiantes.length) {
    estudiantes.removeAt(index);
    print('Estudiante eliminado con éxito.\n');
  } else {
    print('Selección inválida.\n');
  }
}

void asignarEstudiantesAleatoriamente() {
  if (temas.isEmpty || estudiantes.isEmpty) {
    print('Debe haber al menos un tema y un estudiante creados.\n');
    return;
  }

  List<Estudiante> estudiantesDisponibles = List.from(estudiantes);
  Random random = Random();

  for (var tema in temas) {
    tema.estudiantes.clear();

    if (tema.cantidadEstudiantes > estudiantesDisponibles.length) {
      print(
          'No hay suficientes estudiantes disponibles para asignar al tema ${tema.nombre}.\n');
      return;
    }

    while (tema.estudiantes.length < tema.cantidadEstudiantes) {
      int randomIndex = random.nextInt(estudiantesDisponibles.length);
      tema.estudiantes.add(estudiantesDisponibles[randomIndex].nombreCompleto);
      estudiantesDisponibles.removeAt(randomIndex);
    }
  }

  print('Asignación completada con éxito.\n');
  mostrarTemas();
}

void precargarTemas() {
  temas.add(Tema('Tema 1', 2));
  temas.add(Tema('Tema 2', 3));
  temas.add(Tema('Tema 3', 2));
}
