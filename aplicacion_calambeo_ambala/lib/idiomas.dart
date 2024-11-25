import 'package:flutter/material.dart';

class Idiomas extends StatefulWidget {
  const Idiomas({super.key});

  @override
  State<Idiomas> createState() => _IdiomasState();
}

class _IdiomasState extends State<Idiomas> {
  // Lista de idiomas disponibles
  final List<Map<String, dynamic>> idiomas = [
    {
      'nombre': 'Español',
      'codigo': 'es',
      'icono': Icons.translate, // Ícono genérico para Español
    },
    {
      'nombre': 'Inglés',
      'codigo': 'en',
      'icono': Icons.translate, // Ícono de bandera para Inglés
    },
    {
      'nombre': 'Francés',
      'codigo': 'fr',
      'icono': Icons.translate, // Ícono de traducción para Francés
    },
    {
      'nombre': 'Alemán',
      'codigo': 'de',
      'icono': Icons.translate, // Ícono de globo terráqueo para Alemán
    },
  ];

  // Idioma seleccionado
  String idiomaSeleccionado = 'es';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF16423C),
        title: const Text(
          'Selecciona un Idioma',
          style: TextStyle(color: Color(0xFFE9EFEC)),
        ),
      ),
      body: ListView.builder(
        itemCount: idiomas.length,
        itemBuilder: (context, index) {
          final idioma = idiomas[index];
          return Card(
            color: const Color(0xFF88BDA4),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListTile(
              onTap: () {
                setState(() {
                  idiomaSeleccionado = idioma['codigo'];
                });

                // Mostrar un snackbar de confirmación
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Idioma cambiado a ${idioma['nombre']}'),
                    duration: const Duration(seconds: 2),
                  ),
                );
              },
              leading: Icon(
                idioma['icono'], // Usar el ícono definido en la lista
                color: const Color(0xFF16423C),
                size: 40,
              ),
              title: Text(
                idioma['nombre']!,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF16423C),
                ),
              ),
              trailing: idiomaSeleccionado == idioma['codigo']
                  ? const Icon(
                      Icons.check_circle,
                      color: Color(0xFF16423C),
                    )
                  : null,
            ),
          );
        },
      ),
    );
  }
}
