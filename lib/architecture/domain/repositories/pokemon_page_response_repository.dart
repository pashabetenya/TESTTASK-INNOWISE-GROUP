import 'package:application/architecture/data/dto/pokemon_page_response_dto.dart';

abstract class PokemonPageResponseRepository {
  Future<PokemonPageResponseDTO> getPokemons(String name);
  List<PokemonPageResponseDTO> getAllPokemons();
}
