import 'package:aplicacion_calambeo_ambala/Homepage.dart';
import 'package:flutter/material.dart';

class Registro extends StatefulWidget {
  const Registro({super.key});

  @override
  State<Registro> createState() => _LoginPageState();
}

class _LoginPageState extends State<Registro> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fondo con imagen y degradado
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/autoctonos2.jpeg'), // Imagen de fondo
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.5), // Degradado oscuro
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Contenedor para el título
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              offset: const Offset(0, 4),
                              blurRadius: 10.0,
                            ),
                          ],
                          border: Border.all(
                            color: Colors.white.withOpacity(0.7),
                            width: 2,
                          ),
                        ),
                        child: const Text(
                          '¡Bienvenido!',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Por favor, ingresa tu nombre de usuario y contraseña.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 40),
                      // Campo de usuario
                      _buildTextField(
                        controller: _usernameController,
                        label: 'Nombre de usuario',
                        icon: Icons.person,
                      ),
                      const SizedBox(height: 20),
                      // Campo de contraseña
                      _buildTextField(
                        controller: _passwordController,
                        label: 'Contraseña',
                        icon: Icons.lock,
                        isPassword: true,
                      ),
                      const SizedBox(height: 40),
                      // Botón de inicio de sesión
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => const HomePageWidget(),
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF2C6E49),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'Ingresar',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),

                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Método para construir los campos de texto
  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    bool isPassword = false,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: Colors.white),
        filled: true,
        fillColor: Colors.white.withOpacity(0.3),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white.withOpacity(0.7),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        labelStyle: const TextStyle(color: Colors.white),
      ),
      style: const TextStyle(color: Colors.white),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Este campo es obligatorio';
        }
        return null;
      },
    );
  }
}
