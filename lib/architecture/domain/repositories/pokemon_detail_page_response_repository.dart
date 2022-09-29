import 'package:application/architecture/data/dto/pokemon_detail_page_response_dto.dart';

abstract class PokemonDetailPageResponseRepository {
  Future<PokemonDetailPageResponseDTO> getDetailPokemon(int index);
  Future<PokemonDetailPageResponseDTO> getAllDetails();
}
