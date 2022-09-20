class PokemonDetailListingApi {
  final int? id;
  final String? name;
  final String? imageUrl;
  final List<String>? types;
  final int? height;
  final int? weight;

  PokemonDetailListingApi({
    this.id,
    this.name,
    this.imageUrl,
    this.types,
    this.height,
    this.weight,
  });
}
