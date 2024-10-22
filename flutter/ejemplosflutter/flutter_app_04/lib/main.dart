import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Informacion Personal",
      home: Scaffold(
    
        appBar: AppBar(
          
          title:  const Center(child: Text("Informacion Personal")),
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
        ),
        body: ListView(
          children: const [
            Center(
            child: Text("hola")
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                radius: 100,
              ),
            ),
            Image(
            image: NetworkImage('https://cdn.pixabay.com/photo/2017/08/10/08/47/laptop-2620118_1280.jpg'),
            height: 200,
            ),
             ListTile(
              title: Text('Andres Felipe'),
              subtitle: Text('Nombre'),
              leading: Icon(Icons.person),
            ),
            Divider(),
            ListTile(
              title: Text('Rivera Sanchez'),
              subtitle: Text('Apellido'),
              leading: Icon(Icons.person),
            ),
            Divider(),
               ListTile(
                title: Text("Calle 8D #54-01"),
                subtitle: Text("Direccion"),
                leading: Icon(Icons.location_on_outlined),
              ),
              Divider(),
                ListTile(
                title: Text("3122376674"),
                subtitle: Text("Telefono"),
                leading: Icon(Icons.phone_outlined),
              ),
              Divider(),

              ListTile(
                title: Text("a.feliipe09rs@gmail.com"),
                subtitle: Text("Correo"),
                leading: Icon(Icons.email_outlined),
              ),
          ],
        ),
      ),
    );
  }
}
