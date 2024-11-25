import 'package:flutter/material.dart';

class ConfiguracionScreen extends StatefulWidget {
  const ConfiguracionScreen({super.key});

  @override
  _ConfiguracionScreenState createState() => _ConfiguracionScreenState();
}

class _ConfiguracionScreenState extends State<ConfiguracionScreen> {
  bool _isDarkMode = false;
  bool _isNotificationsEnabled = true;
// Idioma por defecto

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6A9C89),
        title: const Text('Configuración'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Título
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                'Ajustes Generales',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Notificaciones
            _buildSwitchCard(
              context,
              'Notificaciones',
              Icons.notifications,
              _isNotificationsEnabled,
              (value) {
                setState(() {
                  _isNotificationsEnabled = value;
                });
              },
            ),

            // Modo oscuro/claro
            _buildSwitchCard(
              context,
              'Modo Oscuro',
              Icons.nightlight_round,
              _isDarkMode,
              (value) {
                setState(() {
                  _isDarkMode = value;
                });
              },
            ),

            // Información del perfil
            _buildCard(
              context,
              'Perfil',
              Icons.person,
              _showProfileInfo,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(
      BuildContext context, String title, IconData icon, Function onTap) {
    return Card(
      color: const Color(0xFF88BDA4),
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        onTap: () => onTap(context),
        contentPadding: const EdgeInsets.all(16.0),
        leading: Icon(icon, color: Colors.white),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
      ),
    );
  }

  Widget _buildSwitchCard(BuildContext context, String title, IconData icon,
      bool value, Function(bool) onChanged) {
    return Card(
      color: const Color(0xFF88BDA4),
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        leading: Icon(icon, color: Colors.white),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        trailing: Switch(
          value: value,
          onChanged: onChanged,
          activeColor: Colors.white,
        ),
      ),
    );
  }

  // Diálogo para cambiar el idioma

  // Mostrar información del perfil
  void _showProfileInfo(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Información del Perfil'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              Text('Nombre: " Kata"'),
              SizedBox(height: 8),
              Text('Contraseña: "KataAdsi "'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }
}
