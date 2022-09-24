import 'package:application/architecture/data/dto/pokemon_listing_dto.dart';
import 'package:application/architecture/domain/models/pokemon_page_response.dart';
import 'package:hive/hive.dart';

part 'pokemon_page_response_dto.g.dart';

@HiveType(typeId: 1)
class PokemonPageResponseDTO {
  @HiveField(0)
  final List<PokemonListingDTO> pokemonListings;
  @HiveField(2)
  final bool canLoadNextPage;

  PokemonPageResponseDTO({
    required this.pokemonListings,
    required this.canLoadNextPage,
  });

  factory PokemonPageResponseDTO.fromDomain(PokemonPageResponse pokemon) {
    return PokemonPageResponseDTO(
      canLoadNextPage: pokemon.canLoadNextPage,
      pokemonListings: pokemon.pokemonListings
          .map((value) => PokemonListingDTO.fromDomain(value))
          .toList(),
    );
  }

  PokemonPageResponse toDomain() {
    return PokemonPageResponse(
      pokemonListings:
          pokemonListings.map((value) => value.toDomain()).toList(),
      canLoadNextPage: canLoadNextPage,
    );
  }

  bool get validResponse => pokemonListings.isNotEmpty == true;

  PokemonPageResponseDTO copyWith({
    List<PokemonListingDTO>? pokemonListings,
    bool? canLoadNextPage,
  }) {
    return PokemonPageResponseDTO(
      canLoadNextPage: canLoadNextPage ?? this.canLoadNextPage,
      pokemonListings: pokemonListings ?? this.pokemonListings,
    );
  }

  @override
  String toString() {
    return 'PokemonPageResponseDTO {pokemonListing: $pokemonListings, canLoadNextPage: $canLoadNextPage}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonListingDTO &&
          pokemonListings == pokemonListings &&
          canLoadNextPage == canLoadNextPage;

  @override
  int get hashCode => pokemonListings.hashCode ^ canLoadNextPage.hashCode;
}
