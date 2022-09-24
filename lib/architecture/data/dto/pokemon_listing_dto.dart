import 'package:application/architecture/domain/models/pokemon_listing.dart';
import 'package:hive/hive.dart';

part 'pokemon_listing_dto.g.dart';

@HiveType(typeId: 0)
class PokemonListingDTO {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;

  PokemonListingDTO({
    required this.id,
    required this.name,
  });

  factory PokemonListingDTO.fromDomain(PokemonListing listing) {
    return PokemonListingDTO(
      id: listing.id,
      name: listing.name,
    );
  }

  PokemonListing toDomain() {
    return PokemonListing(
      id: id,
      name: name,
    );
  }

  bool get validListing => name.isNotEmpty == true;

  PokemonListingDTO copyWith({
    int? id,
    String? name,
  }) {
    return PokemonListingDTO(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  String toString() {
    return 'PokemonListingDTO {id: $id, name: $name}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonListingDTO && id == id && name == name;

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
