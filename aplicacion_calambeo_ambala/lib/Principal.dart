import 'package:aplicacion_calambeo_ambala/Registro.dart';
import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Prototype',
      debugShowCheckedModeBanner:
          false, // Aquí desactivas la etiqueta de depuración
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Registro(), // Cambiar a LoginPage
    );
  }
}
