import 'package:flutter/material.dart';
import '../models/person.dart';

class CharacterDetailScreen extends StatelessWidget { final Person person; final String imageUrl;

  const CharacterDetailScreen({ Key? key, required this.person, required this.imageUrl,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(person.name),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                const Color.fromARGB(255, 11, 18, 59),
                Colors.black,
                const Color.fromARGB(255, 24, 1, 28),
              ],
            )
          ),
        width: double.infinity,
        height: double.infinity, 
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Text(
                person.name,
                style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                "Altura: ${person.height} cm",
                style: const TextStyle(color: Colors.white, fontSize: 40),
              ),
              Text(
                "Peso: ${person.mass} kg",
                style: const TextStyle(color: Colors.white, fontSize: 40),
              ),
              Text(
                "Gênero: ${person.gender}",
                style: const TextStyle(color: Colors.white, fontSize: 40),
              ),
              Text(
                "Ano de nascimento: ${person.birthYear}",
                style: const TextStyle(color: Colors.white, fontSize: 40),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
