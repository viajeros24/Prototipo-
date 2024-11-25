import 'package:aplicacion_calambeo_ambala/mapameraki.dart';
import 'package:aplicacion_calambeo_ambala/rese%C3%B1as.dart';
import 'package:aplicacion_calambeo_ambala/verdisponibilidad.dart';
import 'package:flutter/material.dart';

class parquemeraki extends StatelessWidget {
  final List<String> images = [
    'assets/meraki1.jpeg',
    'assets/meraki2.jpeg',
    'assets/meraki3.jpeg',
    'assets/meraki4.jpeg',
    'assets/meraki5.jpeg',
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
                  builder: (context) => Mapameraki(), // Pantalla del mapa
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
                        'Parque Temático Meraki',
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
                    SizedBox(width: 10), // Espaciado entre el ícono y el texto
                    Text(
                      'Descripción',
                      style: TextStyle(color: Color(0xFF16423C)),
                    ),
                  ],
                ),

                children: <Widget>[
                  ListTile(
                    title: Text(
                      'El Parque Temático Meraki, ubicado en la vereda Bellavista, Ibagué, Tolima, es un destino único que combina diversión, educación y conexión con la naturaleza. Este parque cuenta con un cultivo de café y cacao, donde un guía te lleva a recorrer el campo, explicando todo el proceso de producción del café desde sus inicios. Los visitantes también pueden disfrutar de paseos a caballo, explorar maravillosos senderos ecológicos y relajarse en un pequeño mirador con vistas panorámicas de la ciudad de Ibagué. Meraki ofrece una experiencia gastronómica excepcional, con deliciosas comidas que complementan la visita. Una de las atracciones más emocionantes son las bicicletas aéreas, que permiten disfrutar de la naturaleza de una manera única y segura. El parque es un lugar tranquilo, ideal para desconectarse del ajetreo diario y sumergirse en la belleza del entorno natural.',
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
                      'Servicios y Precios',
                      style: TextStyle(color: Color(0xFF16423C)),
                    ),
                  ],
                ),
                children: <Widget>[
                  ListTile(
                    title: Center(
                      child: Text(
                        'Bicicletas aéreas',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF16423C)),
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Niños',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16423C)),
                    ),
                  ),
                  ...['18.000']
                      .map((item) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0), // Ajusta el padding vertical
                            child: Text(item,
                                style: TextStyle(color: Color(0xFF6A9C89))),
                          ))
                      .toList(),
                  ListTile(
                    title: Text(
                      'Adolecentes',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16423C)),
                    ),
                  ),
                  ...['25.000 ']
                      .map((item) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0), // Ajusta el padding vertical
                            child: Text(item,
                                style: TextStyle(color: Color(0xFF6A9C89))),
                          ))
                      .toList(),
                  ListTile(
                    title: Text(
                      'Adultos',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16423C)),
                    ),
                  ),
                  ...['35.000']
                      .map((item) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0), // Ajusta el padding vertical
                            child: Text(item,
                                style: TextStyle(color: Color(0xFF6A9C89))),
                          ))
                      .toList(),
                  ListTile(
                    title: Text(
                      'Adicionales',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16423C)),
                    ),
                  ),
                  ...['+ Fotografias y video', '50.000']
                      .map((item) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0), // Ajusta el padding vertical
                            child: Text(item,
                                style: TextStyle(color: Color(0xFF6A9C89))),
                          ))
                      .toList(),
                  ListTile(
                    title: Center(
                      child: Row(
                        children: [
                          Text(
                            'Actividades al Aire Libre',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF16423C)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Sendero Corto',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16423C)),
                    ),
                  ),
                  ...[
                    'Caminaremos por las planciónes de cacao, café y diversas plataciones frutales y silvestres vistapanorámica a Ibagué',
                    '10.000'
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
                      'Sendero Largo',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16423C)),
                    ),
                  ),
                  ...[
                    'Caminata por las plantaciones en produccion, avistamiento de fauna silvestre, vista panorámica de Ibagué y procesamiento en planta',
                    '20.000',
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
                        'Camping',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF16423C)),
                      ),
                    ),
                  ),
                  ...['Para dos personas', '250.000']
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
                        'Alquiler de Salón para Eventos y de Capilla',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF16423C)),
                      ),
                    ),
                  ),
                  ...['¡(Contactarce con Parque Meraki para sus precios)!']
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
                    Icon(Icons.restaurant_menu,
                        color:
                            Color(0xFF16423C)), // Ícono relacionado con el menú
                    SizedBox(width: 10), // Espaciado entre el ícono y el texto
                    Text(
                      'Menú',
                      style: TextStyle(color: Color(0xFF16423C)),
                    ),
                  ],
                ),
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'ENTRADAS',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16423C)),
                    ),
                  ),
                  ...[
                    'Chorizo + Arepa + Limon - 12.000',
                    'Chicharron + Papa Criolla + Guacamole - 15.000'
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
                      'PESCADOS',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16423C)),
                    ),
                  ),
                  ...[
                    'Filete de Pescado a la plancha + Verduras Salteadas + Pure de papa criolla - 40.000',
                    'Trucha a la placha + Papa a la francesa + Ensalada + Aguacate - 33.000',
                    'Mojarra frita + Patacon + Ensalada + Aguacate + Guacamole - 32.000',
                    'Cazuela de amarrilo a la monseñor + Arroz + Aguacate y/o Patacon - 42.000'
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
                      'CARNE DE RES',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16423C)),
                    ),
                  ),
                  ...[
                    'Carne a la plancha + Papa criolla + Ensalada + Guacamole - 29.000',
                    'Churrasco + Papa a la francesa + Ensalada + Aguacate + Guacamole - 36.000'
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
                      'CERDO',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16423C)),
                    ),
                  ),
                  ...[
                    'Costillas a la BBQ + Papa criolla + Ensalada + Guacamole - 30.000',
                    'Panceta + Papa a la francesa + Ensalada + Guacamole - 28.000',
                    'Carne de cerdo a la plancha + Papa criolla + Ensalada + Guacamole - 26.000'
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
                      'POLLO',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16423C)),
                    ),
                  ),
                  ...[
                    'Pierna pernil + Papa criolla + Arroz + Ensalada + Guacamole - 25.000',
                    'Pechuga a la plancha + Papa a la francesa + Arroz + Ensalada - 26.000',
                    'Alitas BBQ + papas a la francesa + ensalada + guacamole - 25.000',
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
                      'SANCOCHO TOLIMENSE',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16423C)),
                    ),
                  ),
                  ...[
                    'porción - 25.000',
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
                      'COMIDA RAPIDA',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16423C)),
                    ),
                  ),
                  ...[
                    'Salchipapa + guacamole - 18.000',
                    'Choripapa + guacamole - 18.000',
                    'Empanada + guacamole - 20.000',
                    'Nuggets de pollo + papas a la francesa - 20.000',
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
                      'PICADA DE LA CASA',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16423C)),
                    ),
                  ),
                  ...[
                    'Carne res+ carne de cerdo + pollo + chicharrón + rellena + chorizo + papa a la francesa + papacriolla + huevos de codornis + queso + guacamole',
                    'Personal - 25.000',
                    'Bipersonal - 40.000',
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
                      'BEBIDAS FRIAS',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16423C)),
                    ),
                  ),
                  ...[
                    'AGUA - 10.000',
                    'LECHE - 12.000',
                    '- Araza -',
                    '- Maracuyá -',
                    '- Mora -',
                    '- Guayaba -',
                    '- Lulo -',
                    '- Mango -',
                    '- Guanábana -',
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
                      'BEBIDAS CALIENTES',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16423C)),
                    ),
                  ),
                  ...[
                    'café Meraki - 2.000',
                    'Café con Leche - 5.000',
                    'Chocolate en Leche - 5.000',
                    'AROMATICAS:',
                    'frutos rojos',
                    'frutos amarillos',
                    'verdes',
                    '(5.000)',
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
                      'PRODUCTOS MERAKI CAFETERIA',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16423C)),
                    ),
                  ),
                  ...[
                    ' Café Premium - 30.000 ',
                    'Café Tradición - 20.000',
                    'Café Tradición 250g - 11.000',
                    'Licor de Chocolate - 40.000',
                    'Miel de Abejas - 30.000',
                    'Frasco de Polen de Abeja - 15.000',
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
                title: Text(
                  'Horarios',
                  style: TextStyle(
                    color: Color(0xFF16423C),
                  ),
                ),
                leading: Icon(
                  Icons
                      .access_time, // Ícono que representa el tiempo o los horarios
                  color: Color(
                      0xFF16423C), // Puedes cambiar el color si lo necesitas
                ),
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Martes a Domingo de 8:00 AM a 6:00 PM',
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
                    SizedBox(width: 10), // Espaciado entre el ícono y el texto
                    Text(
                      'Contactos',
                      style: TextStyle(color: Color(0xFF16423C)),
                    ),
                  ],
                ),
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.phone, color: Color(0xFF6A9C89)),
                    title: Text('3187156890',
                        style: TextStyle(color: Color(0xFF16423C))),
                  ),
                  ListTile(
                    leading: Icon(Icons.public, color: Color(0xFF6A9C89)),
                    title: Text('Instagram: @parquetematicomerak',
                        style: TextStyle(color: Color(0xFF16423C))),
                  ),
                ],
              ),
              ExpansionTile(
                backgroundColor: Color(0xFFC4DAD2),
                title: Row(
                  children: [
                    Icon(Icons.payment,
                        color: Color(0xFF16423C)), // Ícono de pagos
                    SizedBox(width: 10), // Espaciado entre el ícono y el texto
                    Text(
                      'Medios de pago',
                      style: TextStyle(color: Color(0xFF16423C)),
                    ),
                  ],
                ),
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.attach_money, color: Color(0xFF6A9C89)),
                    title: Text('Efectivo',
                        style: TextStyle(color: Color(0xFF16423C))),
                  ),
                  ListTile(
                    leading: Icon(Icons.sync_alt, color: Color(0xFF6A9C89)),
                    title: Text('Transferencia',
                        style: TextStyle(color: Color(0xFF16423C))),
                  ),
                  ...[
                    'NEQUI',
                    '3153278854 ',
                    'DAVIVIENDA',
                    'No. de cuenta ahorro: 166370294612',
                  ]
                      .map((item) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0), // Ajusta el padding vertical
                            child: Text(item,
                                style: TextStyle(color: Color(0xFF6A9C89))),
                          ))
                      .toList(),
                  ListTile(
                    leading: Icon(Icons.credit_card, color: Color(0xFF6A9C89)),
                    title: Text('Tarjeta de crédito/débito',
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
