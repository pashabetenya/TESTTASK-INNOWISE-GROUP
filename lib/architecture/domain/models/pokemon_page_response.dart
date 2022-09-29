import 'package:application/architecture/domain/models/pokemon_listing.dart';

class PokemonPageResponse {
  final List<PokemonListing> pokemonListings;
  final bool canLoadNextPage;

  PokemonPageResponse({
    required this.pokemonListings,
    required this.canLoadNextPage,
  });

  @override
  String toString() {
    return 'PokemonPageResponse {pokemonListings: $pokemonListings, canLoadNextPage: $canLoadNextPage}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonPageResponse &&
          pokemonListings == pokemonListings &&
          canLoadNextPage == canLoadNextPage;

  @override
  int get hashCode => pokemonListings.hashCode ^ canLoadNextPage.hashCode;
}
