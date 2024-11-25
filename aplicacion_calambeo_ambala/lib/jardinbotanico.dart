import 'package:aplicacion_calambeo_ambala/mapameraki.dart';
import 'package:aplicacion_calambeo_ambala/mapajardinbotanico.dart';
import 'package:aplicacion_calambeo_ambala/rese%C3%B1as.dart';
import 'package:aplicacion_calambeo_ambala/verdisponibilidad.dart';
import 'package:flutter/material.dart';

class jardinbotanico extends StatelessWidget {
  final List<String> images = [
    'assets/jardinbotanicouno.jpeg',
    'assets/jardinbotanicodos.jpeg',
    'assets/jardinbotanicotres.jpeg',
    'assets/jardinbotanicocuatro.jpeg',
    'assets/jardinbotanicocinco.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF16423C), // Color oscuro para el AppBar
        title: Text('Perfil', style: TextStyle(color: Color(0xFFE9EFEC))),
        actions: [
          IconButton(
            icon: Icon(Icons.place, color: Color(0xFFE9EFEC)), // Ícono del mapa
            onPressed: () {
              // Navegar a la pantalla del mapa
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      Mapajardinbotanico(), // Pantalla del mapa
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        color: Color(0xFFE9EFEC), // Fondo suave para toda la pantalla
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Carrusel de imágenes
              Container(
                height: 250,
                child: PageView.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              // Título y calificación
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Jardín Botánico San Jorge',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(
                                0xFF16423C)), // Color principal para el título
                      ),
                    ),
                    SizedBox(height: 5),
                    Center(
                      child: Text(
                        'Via Las Nieves #19, Ibagué-Tolima',
                        style: TextStyle(
                            color: Color(0xFF6A9C89)), // Color secundario
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              // Secciones desplegables
              ExpansionTile(
                backgroundColor:
                    Color(0xFFC4DAD2), // Color claro para las expansiones
                title: Row(
                  children: [
                    Icon(Icons.description,
                        color: Color(0xFF16423C)), // Ícono de descripción
                    SizedBox(width: 10),
                    Text(
                      'Descripción',
                      style: TextStyle(color: Color(0xFF16423C)),
                    ),
                  ],
                ),
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'El Jardín Botánico San Jorge, fundado en 2000 en Ibagué, Tolima, abarca 62 hectáreas y es un importante recurso ecológico y educativo. Con más de 222 especies de aves y fauna como monos titis, el jardín organiza caminatas ecológicas y programas educativos, como "Defensores del agua", para concientizar a los estudiantes sobre la importancia del agua. Administra la Corporación San Jorge, enfocándose en la conservación y el uso sostenible del medio ambiente. Hasta la fecha, ha recibido a más de 200,000 estudiantes, convirtiéndose en un centro vital para la educación ambiental en la región.',
                      style: TextStyle(color: Color(0xFF16423C)),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                backgroundColor: Color(0xFFC4DAD2),
                title: Row(
                  children: [
                    Icon(Icons.attach_money,
                        color:
                            Color(0xFF16423C)), // Ícono relacionado con precios
                    SizedBox(width: 10),
                    Text(
                      'Precios de ingreso',
                      style: TextStyle(color: Color(0xFF16423C)),
                    ),
                  ],
                ),
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Niños menores de 5 años',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16423C)),
                    ),
                  ),
                  ...[
                    'Entran Gratis',
                  ]
                      .map((item) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0), // Ajusta el padding vertical
                            child: Text(
                              item,
                              style: TextStyle(color: Color(0xFF6A9C89)),
                              textAlign: TextAlign.left,
                            ),
                          ))
                      .toList(),
                  ListTile(
                    title: Text(
                      'Personas en General',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16423C)),
                    ),
                  ),
                  ...[
                    'Ingreso 15.000',
                  ]
                      .map((item) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0), // Ajusta el padding vertical
                            child: Text(item,
                                style: TextStyle(color: Color(0xFF6A9C89))),
                          ))
                      .toList(),
                ],
              ),
              ExpansionTile(
                backgroundColor: Color(0xFFC4DAD2),
                title: Row(
                  children: [
                    Icon(
                      Icons
                          .access_time, // Ícono que representa el tiempo o los horarios
                      color: Color(
                          0xFF16423C), // Puedes cambiar el color si lo necesitas
                    ),
                    Text(
                      'Horarios',
                      style: TextStyle(color: Color(0xFF16423C)),
                    ),
                  ],
                ),
                children: <Widget>[
                  ListTile(
                    title: Text(
                      '8:00 AM a 5:00 PM todos los dias',
                      style: TextStyle(color: Color(0xFF16423C)),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                backgroundColor: Color(0xFFC4DAD2),
                title: Row(
                  children: [
                    Icon(Icons.contact_phone,
                        color: Color(0xFF16423C)), // Ícono para contactos
                    SizedBox(width: 10),
                    Text(
                      'Contactos',
                      style: TextStyle(color: Color(0xFF16423C)),
                    ),
                  ],
                ),
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.phone, color: Color(0xFF6A9C89)),
                    title: Text('3133783055',
                        style: TextStyle(color: Color(0xFF16423C))),
                  ),
                  ListTile(
                    leading: Icon(Icons.public, color: Color(0xFF6A9C89)),
                    title: Text('Pagina Web: https://corporacionsanjorge.com/',
                        style: TextStyle(color: Color(0xFF16423C))),
                  ),
                ],
              ),
              // Botón de acción
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Centrar los botones
                  children: [
                    // Botón de Ver Disponibilidad
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF16423C), // Fondo del botón
                          padding: EdgeInsets.symmetric(
                              vertical: 16), // Mismo tamaño vertical
                        ),
                        onPressed: () {
                          // Acción al presionar el botón
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Verdisponibilidad(),
                            ),
                          );
                        },
                        child: Text(
                          'Ver disponibilidad',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF), // Color del texto
                            fontSize: 16, // Tamaño de la letra
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16), // Espaciado entre los botones

                    // Botón de Reseñas
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF16423C), // Fondo del botón
                          padding: EdgeInsets.symmetric(
                              vertical: 16), // Mismo tamaño vertical
                        ),
                        onPressed: () {
                          // Navegar a la pantalla Comentarios
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Comentarios(),
                            ),
                          );
                        },
                        child: Text('Reseñas',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16,
                            )), // Color de la letra del botón
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
