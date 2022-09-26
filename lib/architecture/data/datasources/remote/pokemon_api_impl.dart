import 'dart:convert';

import 'package:application/architecture/data/dto/pokemon_page_response_dto.dart';
import 'package:application/architecture/domain/datasources/remote/pokemon_api.dart';
import 'package:http/http.dart' as http;

class PokemonApiImpl implements PokemonApi {
  final baseUrl = 'pokeapi.co';
  final http.Client client;

  PokemonApiImpl({required this.client});

  @override
  Future<PokemonPageResponseDTO> getPokemonApi(int index) async {
    final queryParameters = {'limit': '20', 'offset': (index * 20).toString()};

    final uri = Uri.https(baseUrl, '/api/v2/pokemon', queryParameters);
    final response = await client.get(uri);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);

      return PokemonPageResponseDTO.fromDomain(json);
    } else {
      throw Exception('Failed to load..');
    }
  }
}
