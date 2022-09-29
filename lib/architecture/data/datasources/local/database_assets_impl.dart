import 'dart:convert';

import 'package:application/architecture/data/dto/pokemon_page_response_asset_dto.dart';
import 'package:application/architecture/domain/datasources/local/data_assets.dart';
import 'package:flutter/services.dart';

class DataAssetsImpl implements DataAssets {
  @override
  Future<List<PokemonPageResponseAssetDTO>> fetchPokemonAssetList(
      String path) async {
    try {
      List<PokemonPageResponseAssetDTO> pokemonAssetList = [];
      final jsonData = await rootBundle.loadString(path);

      for (Map<String, dynamic> item in json.decode(jsonData)) {
        pokemonAssetList.add(PokemonPageResponseAssetDTO.fromJson(item));
      }
      return pokemonAssetList;
    } catch (_) {
      rethrow;
    }
  }
}
