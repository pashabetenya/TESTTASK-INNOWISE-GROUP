class PokemonListingAssetDTO {
  final int id;
  final String name;

  const PokemonListingAssetDTO({
    required this.id,
    required this.name,
  });

  factory PokemonListingAssetDTO.fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    final url = json['url'] as String;
    final id = int.parse(url.split('/')[6]);

    return PokemonListingAssetDTO(
      id: id,
      name: name,
    );
  }
}
