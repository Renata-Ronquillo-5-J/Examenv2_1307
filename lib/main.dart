import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Cliente {
  String IdCliente;
  String Correo;
  String Nombre;

  Cliente(
      {required this.IdCliente, required this.Correo, required this.Nombre});
}

class MyApp extends StatelessWidget {
  final List<Cliente> clientes = [
    Cliente(
        IdCliente: '1', Correo: 'cliente1@example.com', Nombre: 'Juan Pérez'),
    Cliente(
        IdCliente: '2', Correo: 'cliente2@example.com', Nombre: 'María Gómez'),
    Cliente(
        IdCliente: '3', Correo: 'cliente3@example.com', Nombre: 'Carlos Ruiz'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Lista de clientes Renata Ronquillo',
            style: TextStyle(
                fontFamily: 'Times New Roman', fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.pink[200], // Fondo rosa pastel
        ),
        body: Container(
          color: Color(0xFFFFF0F5), // Rosa muy pastel
          child: ListView.separated(
            itemCount: clientes.length,
            separatorBuilder: (context, index) => Divider(),
            itemBuilder: (context, index) {
              final cliente = clientes[index];
              return Card(
                margin: EdgeInsets.all(8.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 0, // Sin sombra
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ID Cliente:',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        cliente.IdCliente,
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Correo:',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        cliente.Correo,
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Nombre:',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        cliente.Nombre,
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
