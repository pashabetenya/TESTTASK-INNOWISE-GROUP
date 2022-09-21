import 'package:application/clean%20architecture/data/api/models/pokemon_page_response_api.dart';
import 'package:application/clean%20architecture/domain/models/pokemon_page_response.dart';

class PokemonListingMapper {
  static PokemonPageResponse fromApi(PokemonPageResponseApi pokemon) {
    return PokemonPageResponse(
      // id: pokemon.id,
      name: pokemon.name,
      // url: pokemon.url,
      // image: pokemon.imageUrl,
    );
  }
}
