import 'package:aplicacion_calambeo_ambala/mapameraki.dart';
import 'package:aplicacion_calambeo_ambala/mapaparaisoescondido.dart';
import 'package:aplicacion_calambeo_ambala/rese%C3%B1as.dart';
import 'package:aplicacion_calambeo_ambala/verdisponibilidad.dart';
import 'package:flutter/material.dart';

class paraisoescondido extends StatelessWidget {
  final List<String> images = [
    'assets/paraiso1.jpeg',
    'assets/paraiso2.jpeg',
    'assets/paraiso3.jpeg',
    'assets/paraiso4.jpeg',
    'assets/paraiso5.jpeg',
    'assets/glampingluma.jpg',
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
                      Mapaparaisoescondido(), // Pantalla del mapa
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
                        'Parque Pijao',
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
                        'Vda. Bellavista - Ambala, Ibagué - Tolima',
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
                      'Estas cabañas son el refugio perfecto en medio de las montañas, rodeadas de agua natural y abundante vida silvestre. Son ideales para escapadas románticas o para disfrutar con familia y amigos.',
                      style: TextStyle(color: Color(0xFF16423C)),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                backgroundColor: Color(0xFFC4DAD2),
                title: Row(
                  children: [
                    Icon(Icons.room_service, color: Color(0xFF16423C)),
                    Text(
                      'Servicios',
                      style: TextStyle(color: Color(0xFF16423C)),
                    ),
                  ],
                ),
                children: <Widget>[
                  ListTile(
                    title: Center(
                      child: Text(
                        'LA MONTAÑA',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF16423C)),
                      ),
                    ),
                  ),
                  ...[
                    'Hospedaje 1 noche para dos en cabaña alpina triangular',
                    'Entorno natural',
                    'Avistamiento de aves - La mejor vista de ibague',
                    'Baño - Cama doble con cobijas'
                  ]
                      .map((item) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0), // Ajusta el padding vertical
                            child: Text(item,
                                style: TextStyle(color: Color(0xFF6A9C89))),
                          ))
                      .toList(),
                  ListTile(
                    title: Center(
                      child: Text(
                        'Desayunos',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF16423C)),
                      ),
                    ),
                  ),
                  ...[
                    'Huevos al gusto, patacón, arroz, café o chocolate ',
                    '(10.000 adicionales)',
                    '¡Puedes subir toda la comida y bebida que quieras!',
                  ]
                      .map((item) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0), // Ajusta el padding vertical
                            child: Text(item,
                                style: TextStyle(color: Color(0xFF6A9C89))),
                          ))
                      .toList(),
                  ListTile(
                    title: Center(
                      child: Text(
                        'Ingreso y Salida',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF16423C)),
                      ),
                    ),
                  ),
                  ...[
                    'INGRESO',
                    'Desde las 4pm, maximo 6pm (Llegar 15min antes)',
                    'SALIDA',
                    'Al otro día antes de las 11am',
                  ]
                      .map((item) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0), // Ajusta el padding vertical
                            child: Text(item,
                                style: TextStyle(color: Color(0xFF6A9C89))),
                          ))
                      .toList(),
                  ListTile(
                    title: Center(
                      child: Text(
                        'CABAÑA DEL ARBOL',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF16423C)),
                      ),
                    ),
                  ),
                  ...[
                    'Hospedaje 1 noche para dos personas',
                    'con vista de ibagué',
                    'Avistamiento de Aves - Rio y Cascda',
                    'Asador - Baño - Ducha - Cama queen muy comoda',
                    'cabina bluetooth -Copas - vasos - platos',
                    'Hamaca - Juegos de mesa - Balcón y terraza',
                    '¡Puedes subir toda la comida y bebida que quieras!',
                  ]
                      .map((item) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0), // Ajusta el padding vertical
                            child: Text(item,
                                style: TextStyle(color: Color(0xFF6A9C89))),
                          ))
                      .toList(),
                  ListTile(
                    title: Center(
                      child: Text(
                        'Ingreso y Salida',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF16423C)),
                      ),
                    ),
                  ),
                  ...[
                    'INGRESO',
                    '4pm ó 6pm. Después no es posible',
                    'SALIDA',
                    'Al otro dia antes de medio dia',
                  ]
                      .map((item) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0), // Ajusta el padding vertical
                            child: Text(item,
                                style: TextStyle(color: Color(0xFF6A9C89))),
                          ))
                      .toList(),
                  ListTile(
                    title: Center(
                      child: Text(
                        'PARAÍSO ESCONDIDO',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF16423C)),
                      ),
                    ),
                  ),
                  ...[
                    'Cuenta con dos hermosas cabañas :',
                    '1. Cabaña Paraíso ',
                    '2. Cabaña Encanto',
                  ]
                      .map((item) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0), // Ajusta el padding vertical
                            child: Text(item,
                                style: TextStyle(color: Color(0xFF6A9C89))),
                          ))
                      .toList(),
                  ListTile(
                    title: Center(
                      child: Text(
                        'Cabaña Paraíso ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF16423C)),
                      ),
                    ),
                  ),
                  ...[
                    'Hospedaje 1 noche para dos personas',
                    'cabaña de dos niveles',
                    'Avistamiento de Aves - Rio y Cascda',
                    'Piscina pequeña - Juegos de mesa',
                    'Nevera - Baño - ducha',
                    'La mejor vista de ibague',
                    'Asador pequeño - Cabina Bluetooth',
                    '¡En la entrada te reciben, llevan y entregan la cabaña!',
                  ]
                      .map((item) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0), // Ajusta el padding vertical
                            child: Text(item,
                                style: TextStyle(color: Color(0xFF6A9C89))),
                          ))
                      .toList(),
                  ListTile(
                    title: Center(
                      child: Text(
                        'Ingreso y Salida',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF16423C)),
                      ),
                    ),
                  ),
                  ...[
                    'INGRESO',
                    '4pm ó 6pm. Después no es posible',
                    'SALIDA',
                    'Al otro dia antes de medio dia',
                  ]
                      .map((item) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0), // Ajusta el padding vertical
                            child: Text(item,
                                style: TextStyle(color: Color(0xFF6A9C89))),
                          ))
                      .toList(),
                  ListTile(
                    title: Center(
                      child: Text(
                        'Cabaña el encanto',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF16423C)),
                      ),
                    ),
                  ),
                  ...[
                    'Hospedaje 1 noche para 1 o 2 personas',
                    'cabaña de dos habitaciones',
                    'Rio y Cascda - La mejor vista de ibague',
                    'Piscina pequeña - Cabina Bluetooth - wifi - tv',
                    'Asador Grande - Baño - ducha - nevera - cocina',
                    '¡En la entrada te reciben, llevan y entregan la cabaña!',
                  ]
                      .map((item) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0), // Ajusta el padding vertical
                            child: Text(item,
                                style: TextStyle(color: Color(0xFF6A9C89))),
                          ))
                      .toList(),
                  ListTile(
                    title: Center(
                      child: Text(
                        'Ingreso y Salida',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF16423C)),
                      ),
                    ),
                  ),
                  ...[
                    'INGRESO',
                    '4pm ó 6pm. Después no es posible',
                    'SALIDA',
                    'Al otro dia antes de medio dia',
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
                    Icon(Icons.attach_money,
                        color:
                            Color(0xFF16423C)), // Ícono relacionado con precios
                    SizedBox(width: 10),
                    Text(
                      'Precios',
                      style: TextStyle(color: Color(0xFF16423C)),
                    ),
                  ],
                ),
                children: <Widget>[
                  ListTile(
                    title: Center(
                      child: Text(
                        'La Montaña',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF16423C)),
                      ),
                    ),
                  ),
                  ...[
                    'ENTRE LUNES Y JUEVES',
                    '70.000',
                    'VIERNES O DOMINGOS',
                    '80.000',
                    'SABADOS O DÍA ANTES DE FESTIVO',
                    '120.000',
                    'PARQUEADERO',
                    'Moto 8mil - Carro 12mil'
                  ]
                      .map((item) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0), // Ajusta el padding vertical
                            child: Text(item,
                                style: TextStyle(color: Color(0xFF6A9C89))),
                          ))
                      .toList(),
                  ListTile(
                    title: Center(
                      child: Text(
                        'Cabaña del Arbol',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF16423C)),
                      ),
                    ),
                  ),
                  ...[
                    'ENTRE LUNES Y JUEVES',
                    '120.000',
                    'VIERNES O DOMINGOS',
                    '180.000',
                    'SABADO - FESTIVO O DÍA ANTES DE FESTIVO',
                    '200.000',
                    'PARQUEADERO',
                    'Moto 8mil - Carro 12mil'
                  ]
                      .map((item) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0), // Ajusta el padding vertical
                            child: Text(item,
                                style: TextStyle(color: Color(0xFF6A9C89))),
                          ))
                      .toList(),
                  ListTile(
                    title: Center(
                      child: Text(
                        'Cabaña Paraíso',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF16423C)),
                      ),
                    ),
                  ),
                  ...[
                    'ENTRE LUNES Y JUEVES',
                    '120.000',
                    'VIERNES O DOMINGO',
                    '180.000',
                    'SABADO - FESTIVO O DÍA ANTES DE FESTIVO',
                    '200.000',
                    'PARQUEADERO',
                    'Moto 8mil - Carro 12mil'
                  ]
                      .map((item) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0), // Ajusta el padding vertical
                            child: Text(item,
                                style: TextStyle(color: Color(0xFF6A9C89))),
                          ))
                      .toList(),
                  ListTile(
                    title: Center(
                      child: Text(
                        'Cabaña Encanto',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF16423C)),
                      ),
                    ),
                  ),
                  ...[
                    'ENTRE LUNES Y JUEVES',
                    '1 pareja 120.000 - 2 parejas 140.000',
                    'VIERNES O DOMINGO',
                    '1 pareja 180.000 - 2 parejas 210.000',
                    'SABADO - FESTIVO O DÍA ANTES DE FESTIVO',
                    '1 pareja 200.000 - 2 parejas 230.000',
                    'PARQUEADERO',
                    'Moto 8mil - Carro 12mil'
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
                    title: Text('Facebook: paraíso escondido',
                        style: TextStyle(color: Color(0xFF16423C))),
                  ),
                  ListTile(
                    leading: Icon(Icons.public, color: Color(0xFF6A9C89)),
                    title: Text('Instagram: @paraisoescondidoenibague',
                        style: TextStyle(color: Color(0xFF16423C))),
                  ),
                  ListTile(
                    leading: Icon(Icons.public, color: Color(0xFF6A9C89)),
                    title: Text('WhatsApp: 320-8954713',
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
                            )),
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
