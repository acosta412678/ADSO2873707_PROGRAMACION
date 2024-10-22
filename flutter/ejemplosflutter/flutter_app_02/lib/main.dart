import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal());
}

class Principal extends StatelessWidget { //Clase que hereda de la clase StatelessWidget para crear un widget sin estado.
  const Principal({super.key}); //Constructor constante para la clase Principal.

  @override // Indica que sobrescribe el metodo build de la calse StatelessWidget
  Widget build(BuildContext context) { 
    // Se sobrescribe el metodo build para devolver un widget de tipo MaterialApp 
   return const MaterialApp(
    title: 'Mi ADSO App', // Se establece el titulo de la Aplicación.
    home: Text('Esta es mi primera aplicación en Flutter. \n Andres Felipe Rivera \n ADSO 2873707 \n CPIC-Sena'), // Se establece el widget de la pagina de inicio
   );
  }
}