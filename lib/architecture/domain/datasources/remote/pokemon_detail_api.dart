import 'package:application/architecture/data/dto/pokemon_detail_page_response_dto.dart';

abstract class PokemonDetailApi {
  Future<PokemonDetailPageResponseDTO> getPokemonDetailApi(int index);
}
