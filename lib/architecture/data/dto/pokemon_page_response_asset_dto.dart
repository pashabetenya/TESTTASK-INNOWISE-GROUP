import 'package:application/architecture/data/dto/pokemon_listing_asset_dto.dart';

class PokemonPageResponseAssetDTO {
  final List<PokemonListingAssetDTO> pokemonListings;
  final bool canLoadNextPage;

  const PokemonPageResponseAssetDTO({
    required this.pokemonListings,
    required this.canLoadNextPage,
  });

  factory PokemonPageResponseAssetDTO.fromJson(Map<String, dynamic> json) {
    final canLoadNextPage = json['next'];
    final pokemonListings = (json['results'] as List)
        .map((listingJson) => PokemonListingAssetDTO.fromJson(listingJson))
        .toList();

    return PokemonPageResponseAssetDTO(
      pokemonListings: pokemonListings,
      canLoadNextPage: canLoadNextPage,
    );
  }
}
