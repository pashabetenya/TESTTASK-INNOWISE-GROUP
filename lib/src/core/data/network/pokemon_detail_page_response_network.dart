import 'dart:convert';

import 'package:application/src/core/models/pokemon_detail_page_response.dart';

import 'package:http/http.dart' as http;

class PokemonDetailPageResponseNetwork {
  final baseUrl = 'pokeapi.co';
  final client = http.Client();

  Future<PokemonDetailPageResponse> getPokemonDetail(int id) async {
    final uri = Uri.https(baseUrl, '/api/v2/pokemon/$id');
    final response = await client.get(uri);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);

      return PokemonDetailPageResponse.fromJson(json);
    } else {
      throw Exception('Failed to load..');
    }
  }
}
