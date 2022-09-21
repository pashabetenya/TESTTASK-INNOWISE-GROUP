import 'dart:convert';

import 'package:application/clean%20architecture/data/api/models/pokemon_page_response_api.dart';
import 'package:http/http.dart' as http;

class PokemonPageResponseService {
  final baseUrl = 'pokeapi.co';
  final client = http.Client();

  Future<PokemonPageResponseApi> getPokemonPage() async {
    final queryParameters = {'limit': '20', 'offset': '20'};

    final uri = Uri.https(baseUrl, '/api/v2/pokemon', queryParameters);
    final response = await client.get(uri);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);

      return PokemonPageResponseApi.fromApi(json);
    } else {
      throw Exception('Failed to load..');
    }
  }
}
