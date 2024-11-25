import 'package:aplicacion_calambeo_ambala/ConfiguracionScreen.dart';
import 'package:aplicacion_calambeo_ambala/Transporte.dart';
import 'package:aplicacion_calambeo_ambala/idiomas.dart';
import 'package:flutter/material.dart';
import 'Listainicio.dart';
import 'autoctonos.dart';
import 'tesorito.dart';
import 'jardinbotanico.dart';
import 'parquemeraki.dart';
import 'paraisoescondido.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
// Idioma por defecto

  bool _isMenuOpen = false; // Estado de si el menú está abierto o cerrado

  // Método para cambiar el idioma
  void _changeLanguage(String languageCode) {
    setState(() {});
  }

  // Método para cambiar el estado del menú flotante
  void _toggleMenu() {
    setState(() {
      _isMenuOpen = !_isMenuOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xCCC4DAD2),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(300),
          child: AppBar(
            backgroundColor: const Color(0xFF88BDA4),
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              title: Align(
                alignment: const Alignment(0, 0),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: const Color(0x90383838),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'EXPLORA',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.5),
                              offset: const Offset(2.0, 2.0),
                              blurRadius: 2.0,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'CALAMBEO - AMBALA',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.5),
                              offset: const Offset(2.0, 2.0),
                              blurRadius: 2.0,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Un rincón lleno de vida',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              background: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(0),
                    child: Image.asset(
                      'assets/imagen.jpg',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                      alignment: Alignment.center,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.black.withOpacity(0.2),
                  ),
                  Positioned(
                    bottom: 16,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: const Color(0x90383838),
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          child: Text(
                            'Ibagué, Colombia',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              centerTitle: true,
              expandedTitleScale: 1.0,
            ),
            toolbarHeight: 150,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8.0,
                childAspectRatio: 0.75, // Cambié el aspect ratio aquí
              ),
              itemCount: 6, // Cambia esto según la cantidad de elementos
              itemBuilder: (context, index) {
                switch (index) {
                  case 0:
                    return ListaInicio().buildListItem(
                      context,
                      'Autóctonos',
                      'Restaurante - Mirador',
                      Image.asset(
                        'assets/autoctonos2.JPEG',
                        fit: BoxFit.cover,
                      ),
                      color: const Color.fromARGB(255, 22, 66, 60),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => autoctonos(),
                          ),
                        );
                      },
                    );
                  case 1:
                    return ListaInicio().buildListItem(
                      context,
                      'Mirador Tesorito',
                      'Restaurante - Mirador',
                      Image.asset('assets/tesorito.jpeg'),
                      color: const Color.fromARGB(255, 22, 66, 60),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => tesorito(),
                          ),
                        );
                      },
                    );
                  case 2:
                    return ListaInicio().buildListItem(
                      context,
                      'Jardín Botánico San Jorge',
                      'Sendero Natural - Miradores',
                      Image.asset(
                          'assets/jardinbotanico.jpg'), // Cambia esto a una imagen válida
                      color: const Color.fromARGB(255, 22, 66, 60),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => jardinbotanico(),
                          ),
                        );
                      },
                    );
                  case 3:
                    return ListaInicio().buildListItem(
                      context,
                      'Parque Temático Meraki',
                      'Restaurante - Hospedaje - Parque',
                      Image.asset(
                          'assets/meraki.jpg'), // Cambia esto a una imagen válida
                      color: const Color.fromARGB(255, 22, 66, 60),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => parquemeraki(),
                          ),
                        );
                      },
                    );
                  case 4:
                    return ListaInicio().buildListItem(
                      context,
                      'Parque Pijao',
                      'Hospedaje - Mirador',
                      Image.asset(
                          'assets/paraisoescondido.jpg'), // Cambia esto a una imagen válida
                      color: const Color.fromARGB(255, 22, 66, 60),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => paraisoescondido(),
                          ),
                        );
                      },
                    );

                  default:
                    return Container();
                }
              },
            ),
          ),
        ),
        floatingActionButton: _isMenuOpen
            ? Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Opción 1: Cambiar idioma
                  FloatingActionButton(
                    heroTag: 'language',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Idiomas(),
                        ),
                      );
                    },
                    backgroundColor: const Color.fromARGB(255, 89, 131, 230),
                    child: const Icon(Icons.language),
                  ),
                  const SizedBox(height: 8),
                  // Opción 2: Ver rutas de transporte
                  FloatingActionButton(
                    heroTag: 'transport',
                    onPressed: () {
                      // Navegar a la pantalla de Transporte
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Transporte(),
                        ),
                      );
                    },
                    backgroundColor: const Color(0xFF88BDA4),
                    child: const Icon(Icons.directions_bus),
                  ),
                  const SizedBox(height: 8),
                  // Opción 3: Ir a la pantalla de configuración
                  FloatingActionButton(
                    heroTag: 'config',
                    onPressed: () {
                      // Navegar a la pantalla de configuración
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ConfiguracionScreen(),
                        ),
                      );
                    },
                    backgroundColor: const Color.fromARGB(255, 89, 131, 230),
                    child: const Icon(Icons.settings), // Ícono de configuración
                  ),
                  const SizedBox(height: 8),
                  // Opción 4: Cerrar menú
                  FloatingActionButton(
                    heroTag: 'close',
                    onPressed: _toggleMenu,
                    backgroundColor: Color(0xFF88BDA4),
                    child: const Icon(Icons.close),
                  ),
                ],
              )
            : FloatingActionButton(
                onPressed: _toggleMenu,
                backgroundColor: const Color(0xFF88BDA4),
                child: const Icon(Icons.menu),
              ),
      ),
    );
  }

  // Método para mostrar el diálogo de cambio de idioma
  void _showLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Seleccionar Idioma'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: const Text('Español'),
                onTap: () {
                  _changeLanguage('es');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Inglés'),
                onTap: () {
                  _changeLanguage('en');
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Cierra el diálogo cuando se cancela
              },
              child: const Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }
}
