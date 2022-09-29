import 'package:application/architecture/data/dto/pokemon_page_response_dto.dart';

abstract class PokemonApi {
  Future<PokemonPageResponseDTO> getPokemonsResponseFromApi(String name);
}
