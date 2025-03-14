import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/person.dart';

class ApiService {
  static const String baseUrl = 'https://swapi.dev/api/people/';

  Future<List<Person>   > fetchPeople() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List<dynamic> results = data['results'];

      return results.map((json) => Person.fromJson(json)).toList();
    } else {
      throw Exception('Erro ao carregar personagens');
    }
  }
}