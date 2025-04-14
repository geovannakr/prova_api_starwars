import 'package:flutter/material.dart';
import '../models/person.dart';

class CharacterDetailScreen extends StatelessWidget {
  final Person person;
  final String imageUrl;

  const CharacterDetailScreen({
    Key? key,
    required this.person,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1B2F),
      appBar: AppBar(
        title: Text(
          person.name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF162447),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF1B1B2F),
              Color(0xFF1F4068),
              Color(0xFF283E51),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Text(
              person.name,
              style: const TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            _buildInfoRow(Icons.height, "Altura", "${person.height} cm", const Color.fromARGB(2255, 0, 0, 0)),
            _buildInfoRow(Icons.monitor_weight, "Peso", "${person.mass} kg", const Color.fromARGB(255, 0, 0, 0)),
            _buildInfoRow(Icons.person, "Gênero", person.gender, const Color.fromARGB(255, 0, 0, 0)),
            _buildInfoRow(Icons.cake, "Nascimento", person.birthYear, const Color.fromARGB(255, 0, 0, 0)),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: color, size: 30),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              "$label: $value",
              style: TextStyle(
                fontSize: 24,
                color: color,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}