import 'dart:convert';

import 'package:application/architecture/data/dto/pokemon_detail_page_response_dto.dart';
import 'package:application/architecture/data/dto/pokemon_page_response_dto.dart';
import 'package:application/architecture/domain/datasources/local/data_assets.dart';
import 'package:flutter/services.dart';

class DataAssetsImpl implements DataAssets {
  @override
  Future<List<PokemonPageResponseDTO>> getPokemonAssetList(String path) async {
    try {
      List<PokemonPageResponseDTO> pokemonAssetList = [];
      final jsonData = await rootBundle.loadString(path);

      for (Map<String, dynamic> pokemon in json.decode(jsonData)) {
        pokemonAssetList.add(PokemonPageResponseDTO.fromDomain(pokemon));
      }
      return pokemonAssetList;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<List<PokemonDetailPageResponseDTO>> getPokemonDetailAssetList(
      String path) async {
    try {
      List<PokemonDetailPageResponseDTO> pokemonAssetList = [];
      final jsonData = await rootBundle.loadString(path);

      for (Map<String, dynamic> pokemon in json.decode(jsonData)) {
        pokemonAssetList.add(PokemonDetailPageResponseDTO.fromDomain(pokemon));
      }
      return pokemonAssetList;
    } catch (_) {
      rethrow;
    }
  }
}
