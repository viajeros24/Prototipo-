import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mapajardinbotanico extends StatefulWidget {
  const Mapajardinbotanico({super.key});

  @override
  _Mapajardinbotanico createState() => _Mapajardinbotanico();
}

class _Mapajardinbotanico extends State<Mapajardinbotanico> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kAnconTesorito = CameraPosition(
    target: LatLng(
        4.449764715607805, -75.22304800541376), // Coordenadas actualizadas
    zoom: 15.0, // Nivel de zoom ajustado
  );

  final Marker _marker = Marker(
    markerId: const MarkerId('Jardin Botanico San Jorge '),
    position: const LatLng(4.449764715607805, -75.22304800541376),
    infoWindow: const InfoWindow(
      title: 'Jardin Botanico San Jorge',
      snippet: 'Ibagué, Colombia',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ruta a Jardin Botanico San Jorge'),
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
