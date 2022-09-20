class PokemonListing {
  final int id;
  final String name;

  String get imageUrl => 'https://cdn.traction.one/pokedex/pokemon/$id.png';

  PokemonListing({
    required this.id,
    required this.name,
  });
}
