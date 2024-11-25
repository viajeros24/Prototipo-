import 'package:aplicacion_calambeo_ambala/mapameraki.dart';
import 'package:aplicacion_calambeo_ambala/mapatesorito.dart';
import 'package:aplicacion_calambeo_ambala/rese%C3%B1as.dart';
import 'package:aplicacion_calambeo_ambala/verdisponibilidad.dart';
import 'package:flutter/material.dart';

class tesorito extends StatelessWidget {
  final List<String> images = [
    'assets/tesorito.carrusel1.jpeg',
    'assets/tesorito.carrusel2.jpeg',
    'assets/tesorito.carrusel3.jpeg',
    'assets/tesorito.carrusel4.jpeg',
    'assets/tesorito.carrusel5.jpeg',
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
                  builder: (context) => Mapatesorito(), // Pantalla del mapa
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
                      'Mirador Tesorito',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(
                              0xFF16423C)), // Color principal para el título
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Vereda Ancón Tesorito, Ibagué',
                      style: TextStyle(
                          color: Color(0xFF6A9C89)), // Color secundario
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
                      'El mirador Tesorito en Ibagué también es conocido como un restaurante, además de ser un punto turístico. Ofrece una combinación de buena gastronomía y vistas espectaculares, lo que lo convierte en un destino popular tanto para locales como para turistas. Es un lugar ideal para relajarse, disfrutar de una comida al aire libre y apreciar la belleza de la ciudad desde una perspectiva privilegiada.',
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
                      'Platos a la carta',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16423C)),
                    ),
                  ),
                  ...[
                    'Pechuga a la plancha - 25.000',
                    'Lomo de cerdo a la plancha - 26.000',
                    'Churrasco a la plancha - 30.000',
                    'Costillas de cerdo - 30.000',
                    'Mojarra frita - 27.000',
                    'Trucha gratinada - 30.000',
                    'Cazuela de mariscos - 25.000',
                    'Lomo en salsa BBQ - 26.000',
                    'Picada No 1 - 110.000',
                    'Picada No 2 - 150.000',
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
                      'Comidas rápidas',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16423C)),
                    ),
                  ),
                  ...[
                    'Choripapa - 18.000',
                    'Choripapa especial - 22.000',
                    'Choripapa montañero - 32.000',
                    'Salchipapa - 17.000',
                    'Salchipapa especial - 20.000',
                    'Salchipapa montañero - 30.000',
                    'Hamburguesa de patacona - 18.000',
                    'Hamburguesa clásica - 16.000',
                    'Hamburguesa de pollo - 17.000',
                    'Hamburguesa hawaiana - 19.000',
                    'Hamburguesa criolla - 21.000',
                    'Hamburguesa ropa vieja - 26.000',
                    'Hamburguesa de chorizo - 24.000',
                    'Hamburguesa de costilla - 26.000',
                    'Hamburguesa doble carne - 30.000',
                    'Perro sencillo - 15.000',
                    'Perro hawaiano - 17.000',
                    'Super perro - 20.000',
                    'Plato de la casa - 45.000',
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
                      'Sancochos',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16423C)),
                    ),
                  ),
                  ...[
                    'Sancocho pollo - 25.000',
                    'Sancocho trifásico - 30.000',
                    'Sancocho de gallina - 28.000'
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
                      'Bebidas Calientes',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16423C)),
                    ),
                  ),
                  ...[
                    'Aguapanela con queso - 6.000',
                    'Aguapanela con queso (bizcocho y almojabana) - 9.000',
                    'Milo caliente - 5.000',
                    'Tinto - 1.500',
                    'Café con leche - 2.000',
                    'Chocolate con queso - 6.000',
                    'Chocolate con queso (bizcocho y almojabana) - 9.000',
                    'Aromática - 1.500',
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
                      'Bebidas Frías',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16423C)),
                    ),
                  ),
                  ...[
                    'Limonada de coco personal - 9.000',
                    'Cerezada personal - 9.000',
                    'Granizado de café personal - 9.000',
                    'Frape de café - 12.000',
                    'Limonada natural jarra - 7.000',
                    'Limonada de panela jarra - 8.000',
                    'Limonada granizada jarra - 9.000',
                    'Milo frío - 7.000',
                    'Cola y Pola - 5.000',
                    'Agua en botella (saborizada o normal) - 4.000',
                    'Powerade - 5.000',
                    'Gatorade - 5.000',
                    'Jugo del valle - 4.000',
                    'Gaseosa 400ML (Coca-Cola, Cuatro, Sprite) - 4.000',
                    'Gaseosa 1.5ML (Coca-Cola, Cuatro, Sprite) - 8.000',
                    'Gaseosa 3LTS (Coca-Cola, Cuatro, Sprite) - 11.000',
                    'Póker, Águila, Águila light, Costeña, Cola y Pola - 5.000',
                    'Budweiser, Heineken - 6.000',
                    'Club dorada - 7.000',
                    'Corona - 10.000',
                    '(Las micheladas son a dos mil más sobre el valor de la cerveza)',
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
                      'Lunes a Viernes',
                      style: TextStyle(color: Color(0xFF16423C)),
                    ),
                  ),
                  ...['3:00 PM/11:00PM']
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
                      'Domingo',
                      style: TextStyle(color: Color(0xFF16423C)),
                    ),
                  ),
                  ...['11:00 AM/ 11:00 PM']
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
                      'Sábado',
                      style: TextStyle(color: Color(0xFF16423C)),
                    ),
                  ),
                  ...['12:00 PM/11:00PM']
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
                    title: Text(' 3138211314 - 3228786095',
                        style: TextStyle(color: Color(0xFF16423C))),
                  ),
                  ListTile(
                    leading: Icon(Icons.public, color: Color(0xFF6A9C89)),
                    title: Text('Insta: @miradortesorito',
                        style: TextStyle(color: Color(0xFF16423C))),
                  ),
                  ListTile(
                    leading: Icon(Icons.public, color: Color(0xFF6A9C89)),
                    title: Text('Facebook: @Mirador Tesorito',
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
