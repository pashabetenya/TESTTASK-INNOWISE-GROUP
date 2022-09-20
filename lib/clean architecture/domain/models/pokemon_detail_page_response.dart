class PokemonDetailPageResponse {
  final int id;
  final String name;
  final List<String> types;
  final int height;
  final int weight;
  final String image;

  String get imageUrl => 'https://cdn.traction.one/pokedex/pokemon/$id.png';

  PokemonDetailPageResponse({
    required this.id,
    required this.name,
    required this.types,
    required this.height,
    required this.weight,
    required this.image,
  });
}
