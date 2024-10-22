import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});
  
  get search => null;
  
  get a37d7d8df40c7 => null;

  // This widget is the root of your application.
  
  @override
  Widget build(BuildContext context) {
    final ButtonStyle estilos =
        ElevatedButton.styleFrom(
          textStyle: const TextStyle(fontSize: 50),
        backgroundColor:  const Color.fromARGB(255, 21, 195, 248),
        foregroundColor: const Color.fromARGB(255, 63, 63, 61),
        );

    return MaterialApp(
      title: "Lenguajes de Programación",
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true
      ),
      home: Column(        
        children: [
          const Icon(
            Icons.favorite,
            color: Colors.red,
            size: 100,
          ),
          const CircleAvatar(
            radius: 100,
  backgroundImage: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
),
          Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
    
          const Image(
            image: NetworkImage('lib/imagen.jpg')
          ),
          const Text("Dart"),
          const Text("Java"),
          const Text("PHP"),
          const Text("Javascript"),
          const Text("Phyton"),
          const Text("Cobol"),
          const Text("Ruby"),
          const Text("C++"),
          const Text("C#"),
          const Text("TypeScript"),
          ElevatedButton(
            onPressed: () {},
            style: estilos, 
            child: const Text('Enviar'),),

          ElevatedButton(
            onPressed: () {},
            style: estilos, 
            child: const Text('Cancelar'),
            ),
            OutlinedButton(
              onPressed: (){}, 
              child: const Text('boton 3')
              )
        ],
      ),
    );
  }
}
