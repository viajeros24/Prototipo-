import 'package:aplicacion_calambeo_ambala/mapameraki.dart';
import 'package:aplicacion_calambeo_ambala/mapaautoctonos.dart';
import 'package:aplicacion_calambeo_ambala/rese%C3%B1as.dart';
import 'package:aplicacion_calambeo_ambala/verdisponibilidad.dart';
import 'package:flutter/material.dart';

class autoctonos extends StatelessWidget {
  final List<String> images = [
    'assets/carrusel.autoctonos1.jpeg',
    'assets/autoctonos.carrusel2.jpeg',
    'assets/autoctonos.carrusel3.jpeg',
    'assets/autoctonos.carrusel4.jpeg',
    'assets/autoctonos.carrusel5.jpeg',
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
                  builder: (context) => Mapaautoctonos(), // Pantalla del mapa
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
                    Text(
                      'Autoctonos Restaurante - Mirador',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(
                              0xFF16423C)), // Color principal para el título
                    ),
                    SizedBox(height: 5),
                    Center(
                      child: Text(
                        'Vereda Ancón Tesorito, Ibagué',
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
                      'Autóctonos de la vereda Ancón Tesorito es un restaurante que se especializa en ofrecer una variedad de platos que capturan la esencia del campo tolimense. En un ambiente acogedor y natural, este lugar invita a los comensales a disfrutar de una experiencia gastronómica única, donde cada bocado refleja "el sabor del campo en cada plato".',
                      style: TextStyle(color: Color(0xFF16423C)),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                backgroundColor: Color(0xFFC4DAD2),
                title: Row(
                  children: [
                    Icon(Icons.restaurant_menu,
                        color:
                            Color(0xFF16423C)), // Ícono relacionado con el menú
                    SizedBox(width: 10),
                    Text(
                      'Menú',
                      style: TextStyle(color: Color(0xFF16423C)),
                    ),
                  ],
                ),
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Carnes Rojas',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16423C)),
                    ),
                  ),
                  ...[
                    'Punta de anca - 30.000',
                    'Lomo de cerdo al carbón - 28.000',
                    'Costillas a la BBQ - 28.000',
                    'Plato mixto - 40.000',
                    'Coditos de cerdo ahumados - 30.000',
                    'Coditos de cerdo en salsa - 30.000',
                    'Picada - 28.000',
                    'Churrasco - 30.000',
                    'Salchipapa - 15.000'
                  ]
                      .map((item) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0), // Ajusta el padding vertical
                            child: Text(item,
                                style: TextStyle(color: Color(0xFF6A9C89))),
                          ))
                      .toList(),
                  ListTile(
                    title: Text(
                      'Carnes Blancas',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16423C)),
                    ),
                  ),
                  ...[
                    'Cordón bleu - 20.000',
                    'Pechuga a la plancha - 25.000',
                    'Pechuga gratinada - 28.000',
                    'Pechuga en salsa de champiñones - 30.000',
                    'Trucha a la plancha - 28.000',
                    'Trucha gratinada - 28.000',
                    'Trucha al ajillo - 32.000',
                    'Mojarra frita - 28.000',
                    'Mojarra en salsa - 28.000',
                    'Bagre en salsa - 30.000',
                    'Capaz en salsa - 40.000'
                  ]
                      .map((item) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0), // Ajusta el padding vertical
                            child: Text(item,
                                style: TextStyle(color: Color(0xFF6A9C89))),
                          ))
                      .toList(),
                  ListTile(
                    title: Text(
                      'Mar',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16423C)),
                    ),
                  ),
                  ListTile(
                      title: Center(
                    child: Text('Cazuela de mariscos - 32.000',
                        style: TextStyle(color: Color(0xFF6A9C89))),
                  )),
                  ListTile(
                    title: Text(
                      'Bebidas',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16423C)),
                    ),
                  ),
                  ...[
                    'Coca Cola - 3.500',
                    'Jugos Hit - 3.500',
                    'Botella con agua - 3.000',
                    'Cerveza - 5.000'
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
                      'Sábados/domingos y festivos de 11:00 AM a 10:00 PM',
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
                    title: Text('+57 3156230419 - 3170195900',
                        style: TextStyle(color: Color(0xFF16423C))),
                  ),
                  ListTile(
                    leading: Icon(Icons.public, color: Color(0xFF6A9C89)),
                    title: Text('Facebook: @AUTOCTONOSG',
                        style: TextStyle(color: Color(0xFF16423C))),
                  ),
                ],
              ),
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
                        child: Text(
                          'Reseñas',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 16,
                          ), // Color de la letra del botón
                        ),
                      ),
                    )
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
