import 'package:flutter/material.dart';

class Comentarios extends StatefulWidget {
  @override
  _ComentariosState createState() => _ComentariosState();
}

class _ComentariosState extends State<Comentarios> {
  // Lista simulada de comentarios de otros usuarios
  List<String> comentarios = [
    '¡Excelente lugar, lo recomiendo!',
    'Muy bonito, el Jardín.'
  ];
  String? miComentario; // Variable para la reseña del usuario actual

  final TextEditingController _controller = TextEditingController();

  // Método para agregar un nuevo comentario
  void _agregarComentario() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        miComentario = _controller.text;
        comentarios.insert(0,
            miComentario!); // Agregar la reseña del usuario al principio de la lista
      });
      _controller.clear();
    }
  }

  // Método para eliminar el comentario del usuario actual
  void _eliminarComentario() {
    setState(() {
      comentarios
          .remove(miComentario); // Eliminar la reseña del usuario de la lista
      miComentario = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reseñas", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 22, 66, 60),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        // Hacer que el cuerpo sea desplazable
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título de las reseñas de otros usuarios
            const Text(
              "Reseñas de otros usuarios:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF6A9C89),
              ),
            ),
            const SizedBox(height: 10),

            // Mostrar la reseña del usuario actual primero
            if (miComentario != null) ...[
              Card(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  title: Text(miComentario!),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: _eliminarComentario, // Eliminar la reseña
                  ),
                  contentPadding: const EdgeInsets.all(16),
                ),
              ),
            ],

            // Reseñas de otros usuarios en forma de tarjeta
            ...comentarios.map((comentario) {
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0xFF6A9C89),
                    child: const Icon(Icons.person, color: Colors.white),
                  ),
                  title: Text(comentario),
                  contentPadding: const EdgeInsets.all(16),
                ),
              );
            }).toList(),

            const Divider(),

            // Caja de texto para agregar una reseña
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  labelText: "Escribe tu reseña",
                  hintText: "Escribe algo genial...",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
                maxLines: 3, // Permite varias líneas para comentarios largos
              ),
            ),

            // Botón para agregar la reseña
            Padding(
              padding:
                  const EdgeInsets.only(top: 16.0), // Aumentar espacio arriba
              child: ElevatedButton(
                onPressed: _agregarComentario,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF6A9C89),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 16, horizontal: 40), // Aumento de padding
                ),
                child: const Text(
                  "Agregar Reseña",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(
                          255, 22, 66, 60)), // Aumento del tamaño del texto
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
