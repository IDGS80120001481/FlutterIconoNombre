import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cambio de Icono y Nombre',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _appName = 'Nombre de la App';
  String _iconPath = 'assets/dino1.png';

  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuración de la App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Nuevo nombre de la app'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _pickIcon,
              child: Text('Seleccionar Ícono'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _applyChanges,
              child: Text('Aplicar Cambios'),
            ),
            SizedBox(height: 40),
            Text(
              'Vista Previa:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              _appName,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Image.asset(_iconPath, width: 100, height: 100),
          ],
        ),
      ),
    );
  }

  void _pickIcon() async {
    setState(() {
      _iconPath = 'assets/dino2.png';
    });
  }

  void _applyChanges() {
    setState(() {
      _appName = _nameController.text;
    });
  }
}
