import 'package:flutter/material.dart';

class Verdisponibilidad extends StatefulWidget {
  @override
  _DisponibilidadScreenState createState() => _DisponibilidadScreenState();
}

class _DisponibilidadScreenState extends State<Verdisponibilidad> {
  List<String> lugares = [
    'Autóctonos',
    'Mirador Tesorito',
    'Jardín Botánico San Jorge',
    'Parque Temático Meraki',
    'Parque Pijao'
  ];
  List<bool> reservas = [false, false, false, false, false];
  List<int> modificacionesRestantes = [3, 3, 3, 3, 3];

  // Iconos para los lugares
  List<IconData> icons = [
    Icons.assignment,
    Icons.assignment,
    Icons.assignment,
    Icons.assignment,
    Icons.assignment,
  ];

  void _reservar(int index) {
    setState(() {
      reservas[index] = true;
    });
  }

  void _cancelarReserva(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Confirmar cancelación"),
          content: Text(
              "¿Estás seguro de que deseas cancelar la reserva en ${lugares[index]}?"),
          actions: [
            TextButton(
              child: Text("No"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("Sí"),
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  reservas[index] = false;
                  modificacionesRestantes[index] = 3;
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text("Reserva en ${lugares[index]} cancelada")),
                );
              },
            ),
          ],
        );
      },
    );
  }

  void _modificarReserva(int index) {
    if (modificacionesRestantes[index] > 0) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Modificar Reserva"),
            content: DropdownButton<String>(
              hint: Text("Selecciona un nuevo lugar"),
              items: lugares
                  .asMap()
                  .entries
                  .where((entry) => entry.key != index && !reservas[entry.key])
                  .map((entry) {
                int lugarIndex = entry.key;
                String lugar = entry.value;
                return DropdownMenuItem<String>(
                  value: lugar,
                  child: Text(lugar),
                  onTap: () {
                    setState(() {
                      reservas[index] = false;
                      reservas[lugarIndex] = true;
                      modificacionesRestantes[index]--;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                            "Reserva modificada a $lugar. Modificaciones restantes: ${modificacionesRestantes[index]}"),
                      ),
                    );
                    Navigator.of(context).pop();
                  },
                );
              }).toList(),
              onChanged: (value) {},
            ),
          );
        },
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
                "Límite de modificaciones alcanzado para ${lugares[index]}")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF16423C),
        title: Text(
          'Disponibilidad de Lugares',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: lugares.length,
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 5,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      icons[index], // Usamos el icono correspondiente
                      color: Color(0xFF16423C),
                      size: 40,
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            lugares[index],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF16423C),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            reservas[index] ? "Reservado" : "Disponible",
                            style: TextStyle(
                              fontSize: 16,
                              color:
                                  reservas[index] ? Colors.green : Colors.red,
                            ),
                          ),
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              reservas[index]
                                  ? ElevatedButton.icon(
                                      onPressed: () => _modificarReserva(index),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xFF6A9C89),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 10),
                                      ),
                                      icon: Icon(Icons.edit),
                                      label: Text('Modificar'),
                                    )
                                  : ElevatedButton.icon(
                                      onPressed: () => _reservar(index),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xFF16423C),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 10),
                                      ),
                                      icon: Icon(Icons.book),
                                      label: Text('Reservar'),
                                    ),
                              if (reservas[index])
                                ElevatedButton.icon(
                                  onPressed: () => _cancelarReserva(index),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                  ),
                                  icon: Icon(Icons.cancel),
                                  label: Text('Cancelar'),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
