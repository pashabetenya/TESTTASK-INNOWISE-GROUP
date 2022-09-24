import 'package:application/architecture/data/dto/pokemon_detail_page_response_dto.dart';

abstract class PokemonDetailPageResponseRepository {
  // делаем запрос на сервер, и получаем ответ.
  Future<PokemonDetailPageResponseDTO> getDetailPokemon(int index);

  // база данных.
  Future addDetailPokemonsWithDataFromAsset(
      String path, PokemonDetailPageResponseDTO dto);
}
