import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "hola, adios",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Grillas"),
        ),

        body: Container(
          color: Colors.white,
          child: GridView.count(
            crossAxisSpacing: 9,
            mainAxisSpacing: 9,
            crossAxisCount: 4,
            children:  const [
              Card(
                child: Column(
                  children: [
                    Text("targeta 1"),
                    Icon(Icons.access_time_filled_rounded),
                    Text("HELLO, MY NAME IS Andres Felipe Rivera Sanchez"),
                  ],
                ),
              ),
              Card(
                child: Text("targeta 2"),
              ),
              Card(
                child: Text("targeta 3"),
              ),
              Card(
                child: Text("targeta 4"),
              ),
              Card(
                child: Text("targeta 5"),
              ),
              Card(
                child: Text("targeta 6"),
              ),
              Card(
                child: Text("targeta 7"),
              ),
              Card(
                child: Text("targeta 8"),
              ),
              Card(
                child: Text("targeta 9"),
              ),
              Card(
                child: Text("targeta 10"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}