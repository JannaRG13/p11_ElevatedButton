import 'package:flutter/material.dart';

void main() => runApp(MiButton());

class MiButton extends StatelessWidget {
  const MiButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ramirez G 22308051281287"),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Color(0xff078244), fontSize: 25),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Primera fila de botones (3 botones con icono y texto)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildButtonWithIcon(Icons.settings, 'Ajustes'),
                  SizedBox(width: 10),
                  _buildButtonWithIcon(Icons.message, 'Mensaje'),
                  SizedBox(width: 10),
                  _buildButtonWithIcon(Icons.refresh, 'Actualizar'),
                ],
              ),
              SizedBox(height: 10), // Espacio entre filas
              // Segunda fila de botones (3 botones con icono y texto)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildButtonWithIcon(Icons.notifications, 'Notificaciones'),
                  SizedBox(width: 10),
                  _buildButtonWithText('Botón 1'),
                  SizedBox(width: 10),
                  _buildButtonWithText('Botón 2'),
                ],
              ),
              SizedBox(height: 10), // Espacio entre filas
              // Tercera fila de botones (2 botones solo con texto)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildButtonWithText('Botón 3'),
                  SizedBox(width: 10),
                  _buildButtonWithText('Botón 4'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Método para construir un botón con icono y texto
  Widget _buildButtonWithIcon(IconData icon, String label) {
    return SizedBox(
      width: 100, // Ancho del botón
      height: 100, // Alto del botón (igual al ancho para que sea cuadrado)
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orangeAccent, // Color del botón
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero, // Bordes rectos
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 30, color: Colors.black), // Icono
            SizedBox(height: 5), // Espacio entre el icono y el texto
            Text(
              label,
              style: TextStyle(fontSize: 12, color: Colors.white), // Texto
            ),
          ],
        ),
      ),
    );
  }

  // Método para construir un botón solo con texto
  Widget _buildButtonWithText(String label) {
    return SizedBox(
      width: 100, // Ancho del botón
      height: 100, // Alto del botón (igual al ancho para que sea cuadrado)
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orangeAccent, // Color del botón
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero, // Bordes rectos
          ),
        ),
        child: Text(
          label,
          style: TextStyle(fontSize: 12, color: Colors.white), // Texto
        ),
      ),
    );
  }
}
