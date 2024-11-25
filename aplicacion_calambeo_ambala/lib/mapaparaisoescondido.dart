import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mapaparaisoescondido extends StatefulWidget {
  const Mapaparaisoescondido({super.key});

  @override
  _Mapaparaisoescondido createState() => _Mapaparaisoescondido();
}

class _Mapaparaisoescondido extends State<Mapaparaisoescondido> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kAnconTesorito = CameraPosition(
    target: LatLng(
        4.4695860653731145, -75.20083181695594), // Coordenadas actualizadas
    zoom: 15.0, // Nivel de zoom ajustado
  );

  final Marker _marker = Marker(
    markerId: const MarkerId('Parque Pijao'),
    position: const LatLng(4.4695860653731145, -75.20083181695594),
    infoWindow: const InfoWindow(
      title: 'Parque Pijao',
      snippet: 'Ibagué, Colombia',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ruta a Parque Pijao'),
        backgroundColor: const Color.fromARGB(255, 22, 66, 60),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kAnconTesorito,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: {_marker},
      ),
    );
  }
}
