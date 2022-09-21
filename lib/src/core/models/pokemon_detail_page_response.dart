class PokemonDetailPageResponse {
  final int id;
  final String name;
  final List<String> types;
  final int height;
  final int weight;

  String get imageUrl => 'https://cdn.traction.one/pokedex/pokemon/$id.png';

  PokemonDetailPageResponse({
    required this.id,
    required this.name,
    required this.types,
    required this.height,
    required this.weight,
  });

  factory PokemonDetailPageResponse.fromJson(Map<String, dynamic> json) {
    final id = json['id'];
    final name = json['name'];
    final types = (json['types'] as List)
        .map((typeJson) => typeJson['type']['name'] as String)
        .toList();
    final height = json['height'];
    final weight = json['weight'];

    return PokemonDetailPageResponse(
      id: id,
      name: name,
      types: types,
      height: height,
      weight: weight,
    );
  }
}
