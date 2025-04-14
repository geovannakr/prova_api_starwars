import 'package:flutter/material.dart';
import '../services/api_service.dart';
import '../models/person.dart';
import 'character_details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Person>> _futurePeople;
  final ApiService _apiService = ApiService();

  @override
  void initState() {
    super.initState();
    _futurePeople = _apiService.fetchPeople();
  }

  String getCharacterImageUrl(int index) {
    return 'https://starwars-visualguide.com/assets/img/characters/${index + 1}.jpg';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Star Wars Characters',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
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
        child: FutureBuilder<List<Person>>(
          future: _futurePeople,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator(color: Colors.yellowAccent));
            } else if (snapshot.hasError) {
              return Center(
                child: Text(
                  'Erro: ${snapshot.error}',
                  style: const TextStyle(color: Colors.white),
                ),
              );
            } else if (snapshot.hasData) {
              final people = snapshot.data!;
              return ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: people.length,
                itemBuilder: (context, index) {
                  final character = people[index];
                  return Card(
                    color: const Color.fromARGB(255, 59, 33, 63),
                    elevation: 6,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CharacterDetailScreen(
                              person: character,
                              imageUrl: getCharacterImageUrl(index),
                            ),
                          ),
                        );
                      },
                      title: Text(
                        character.name,
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                },
              );
            }
            return const Center(child: Text('Nenhum dado disponível', style: TextStyle(color: Colors.white)));
          },
        ),
      ),
    );
  }
}