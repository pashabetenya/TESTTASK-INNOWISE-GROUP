import 'package:application/src/core/models/pokemon_listing.dart';

class PokemonPageResponse {
  final List<PokemonListing> pokemonListings;
  final bool canLoadNextPage;

  PokemonPageResponse({
    required this.pokemonListings,
    required this.canLoadNextPage,
  });

  factory PokemonPageResponse.fromJson(Map<String, dynamic> json) {
    final canLoadNextPage = json['next'] != null;
    final pokemonListings = (json['results'] as List)
        .map((listingJson) => PokemonListing.fromJson(listingJson))
        .toList();

    return PokemonPageResponse(
      pokemonListings: pokemonListings,
      canLoadNextPage: canLoadNextPage,
    );
  }
}
