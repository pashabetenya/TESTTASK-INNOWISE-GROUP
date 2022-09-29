import 'package:application/architecture/data/dto/pokemon_page_response_asset_dto.dart';

abstract class DataAssets {
  Future<List<PokemonPageResponseAssetDTO>> fetchPokemonAssetList(String path);
}
