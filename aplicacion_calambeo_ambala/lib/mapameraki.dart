import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mapameraki extends StatefulWidget {
  const Mapameraki({super.key});

  @override
  _Mapameraki createState() => _Mapameraki();
}

class _Mapameraki extends State<Mapameraki> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kAnconTesorito = CameraPosition(
    target: LatLng(
        4.4680897894209135, -75.19747282684537), // Coordenadas actualizadas
    zoom: 15.0, // Nivel de zoom ajustado
  );

  final Marker _marker = Marker(
    markerId: const MarkerId('Parque Tematico Meraki'),
    position: const LatLng(4.4680897894209135, -75.19747282684537),
    infoWindow: const InfoWindow(
      title: 'Parque Tematico Meraki',
      snippet: 'Ibagué, Colombia',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ruta al Parque Tematico Meraki'),
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
