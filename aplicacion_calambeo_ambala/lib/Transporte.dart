import 'package:flutter/material.dart';

class Transporte extends StatefulWidget {
  const Transporte({super.key});

  @override
  State<Transporte> createState() => _TransporteState();
}

class _TransporteState extends State<Transporte> {
  // Lista de opciones de transporte con títulos, iconos y descripciones
  final List<Map<String, dynamic>> transporteOptions = [
    {
      'title': 'Taxi',
      'icon': Icons.local_taxi,
      'description': [
        'Disponibilidad 24h',
        'Tarifa mínima de 5,500',
        'Solicítalos en la calle o a través de app como Easy Taxi y Tappsi',
        'Es un servicio rápido y confiable para moverse por la ciudad',
      ]
    },
    {
      'title': 'Buseta',
      'icon': Icons.directions_bus,
      'description': [
        'Principal medio de transporte público',
        'Tarifa de 2,700',
        'Amplia cobertura en la ciudad',
        'Circulación frecuente durante el día - Menor frecuencia de noche',
      ]
    },
    {
      'title': 'Uber',
      'icon': Icons.car_rental,
      'description': [
        'Servicio disponible únicamente a través de la app',
        'Tarifas variables según la demanda',
        'Pago en efectivo o tarjeta',
        'Disponibilidad limitada en zonas periféricas',
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF88BDA4),
        title: const Text(
          'Opciones de Transporte',
          style: TextStyle(
            color: Color.fromARGB(255, 18, 17, 17),
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Card(
              child: Center(
                child: Text(
                  "Para explorar estos maravillosos lugares, tienes varias opciones de transporte que se adaptan a tus necesidades. ¡Contáctate con estos servicios y empieza tu aventura!",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 0, 8, 4),
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: transporteOptions.length,
            itemBuilder: (context, index) {
              final transporte = transporteOptions[index];
              return Card(
                color: const Color(0xFF88BDA4),
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Row(
                          children: [
                            Icon(
                              transporte['icon'],
                              color: Color(0xFF16423C),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              transporte['title']!,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF16423C),
                              ),
                            ),
                          ],
                        ),
                        content: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Crear una lista con las descripciones
                            for (var item in transporte['description'])
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  '• $item',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Cerrar'),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Icon(
                              transporte['icon'],
                              color: Color(0xFF16423C),
                              size: 40,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              transporte['title']!,
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF16423C),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          transporte['description'][0],
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color(0xFF16423C),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
