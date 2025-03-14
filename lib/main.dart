import 'package:flutter/material.dart';
import 'screen/home_screen.dart';

void main() {
  runApp(const StarWars());
}

class StarWars extends StatelessWidget {
  const StarWars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personagens de Star Wars',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}
