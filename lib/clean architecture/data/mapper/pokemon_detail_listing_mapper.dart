import 'package:application/clean%20architecture/data/api/models/pokemon_detail_page_response_api.dart';
import 'package:application/clean%20architecture/domain/models/pokemon_detail_page_response.dart';

class PokemonDetailListingMapper {
  static PokemonDetailPageResponse fromApi(PokemonDetailPageResponseApi poke) {
    return PokemonDetailPageResponse(
      name: poke.name,
      id: poke.id,
      height: poke.height,
      weight: poke.weight,
      types: poke.types,
      image: poke.imageUrl,
    );
  }
}
