import 'package:application/clean%20architecture/domain/models/pokemon_listing.dart';

class PokemonPageResponse {
  final List<PokemonListing> pokemonListings;
  final bool canLoadNextPage;

  PokemonPageResponse({
    required this.pokemonListings,
    required this.canLoadNextPage,
  });
}
