import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mapatesorito extends StatefulWidget {
  const Mapatesorito({super.key});

  @override
  _Mapatesorito createState() => _Mapatesorito();
}

class _Mapatesorito extends State<Mapatesorito> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kAnconTesorito = CameraPosition(
    target: LatLng(
        4.461410782490614, -75.23233482088695), // Coordenadas actualizadas
    zoom: 15.0, // Nivel de zoom ajustado
  );

  final Marker _marker = Marker(
    markerId: const MarkerId('Mirador Tesorito'),
    position: const LatLng(4.461410782490614, -75.23233482088695),
    infoWindow: const InfoWindow(
      title: 'Mirador Tesorito',
      snippet: 'Ibagué, Colombia',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ruta a Mirador Tesorito'),
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
