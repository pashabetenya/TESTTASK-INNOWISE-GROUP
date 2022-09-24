class PokemonDetailPageResponse {
  final int id;
  final String name;
  final List<String> types;
  final int height;
  final int weight;

  PokemonDetailPageResponse({
    required this.name,
    required this.id,
    required this.types,
    required this.height,
    required this.weight,
  });

  @override
  String toString() {
    return 'PokemonDetailPageResponse {id: $id, name: $name, types: $types, height: $height, weight: $weight}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonDetailPageResponse &&
          name == name &&
          id == id &&
          types == types &&
          height == height &&
          weight == weight;

  @override
  int get hashCode =>
      name.hashCode ^
      id.hashCode ^
      types.hashCode ^
      height.hashCode ^
      weight.hashCode;
}
