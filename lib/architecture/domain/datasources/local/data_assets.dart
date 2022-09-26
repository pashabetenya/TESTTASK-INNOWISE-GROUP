import 'package:application/architecture/data/dto/pokemon_detail_page_response_dto.dart';
import 'package:application/architecture/data/dto/pokemon_page_response_dto.dart';

abstract class DataAssets {
  Future<List<PokemonPageResponseDTO>> getPokemonAssetList(String path);
  Future<List<PokemonDetailPageResponseDTO>> getPokemonDetailAssetList(
      String path);
}
