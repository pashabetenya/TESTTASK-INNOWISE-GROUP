class PokemonListing {
  final int id;
  final String name;

  String get imageUrl => 'https://cdn.traction.one/pokedex/pokemon/$id.png';

  PokemonListing({
    required this.id,
    required this.name,
  });

  factory PokemonListing.fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    final url = json['url'] as String;
    final id = int.parse(url.split('/')[6]);

    return PokemonListing(
      id: id,
      name: name,
    );
  }
}
