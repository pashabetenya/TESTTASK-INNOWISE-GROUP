import 'package:application/architecture/data/dto/pokemon_page_response_dto.dart';

abstract class PokemonPageResponseRepository {
  // просто выведение списка.
  List<PokemonPageResponseDTO> getAllPokemons();
  // делаем запрос на сервер, и получаем ответ.
  Future<PokemonPageResponseDTO> getPokemons(int index);

  // база данных.
  Future addPokemonsWithDataFromAsset(String path, PokemonPageResponseDTO dto);
}
