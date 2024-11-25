import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mapaautoctonos extends StatefulWidget {
  const Mapaautoctonos({super.key});

  @override
  _Mapaautoctonos createState() => _Mapaautoctonos();
}

class _Mapaautoctonos extends State<Mapaautoctonos> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kAnconTesorito = CameraPosition(
    target: LatLng(
        4.460812022251804, -75.23223075214929), // Coordenadas actualizadas
    zoom: 15.0, // Nivel de zoom ajustado
  );

  final Marker _marker = Marker(
    markerId: const MarkerId('Autoctonos'),
    position: const LatLng(4.460812022251804, -75.23223075214929),
    infoWindow: const InfoWindow(
      title: 'Autoctonos',
      snippet: 'Ibagué, Colombia',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ruta a Autoctonos'),
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
