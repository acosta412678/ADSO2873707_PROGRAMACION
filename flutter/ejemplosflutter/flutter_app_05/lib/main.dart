import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState(); // SE SOBREESCRIBE EL METODO CREATESTATE DEL PADRE PARA CREAR EL ESTADO 
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Sitios turisticos"),
          backgroundColor: const Color.fromARGB(255, 0, 171, 201),
          foregroundColor: Colors.white,
        ),
      
        body: ListView(
          children: const [

          ],
        ),
      ),
    );
  }
}

