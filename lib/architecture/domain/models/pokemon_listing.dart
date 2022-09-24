class PokemonListing {
  final int id;
  final String name;

  PokemonListing({
    required this.id,
    required this.name,
  });

  @override
  String toString() {
    return 'PokemonListing {id: $id, name: $name}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonListing && id == id && name == name;

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
