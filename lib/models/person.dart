class Person {
  final String name;
  final String height;
  final String mass;
  final String birthYear;
  final String gender;

  Person({
    required this.name,
    required this.height,
    required this.mass,
    required this.birthYear,
    required this.gender,
  });

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      name: json['name'], //nome do personagem
      height: json['height'], //altura do personagem
      mass: json['mass'], //massa/peso do personagem
      birthYear: json['birth_year'], //data do aniversário do personagem
      gender: json['gender'], //gênero do personagem
    );
  }
}
