class PokemonPageResponse {
  final int id;
  final String name;
  final String url;
  final String image;

  String get imageUrl => 'https://cdn.traction.one/pokedex/pokemon/$id.png';

  PokemonPageResponse({
    required this.id,
    required this.name,
    required this.url,
    required this.image,
  });
}
