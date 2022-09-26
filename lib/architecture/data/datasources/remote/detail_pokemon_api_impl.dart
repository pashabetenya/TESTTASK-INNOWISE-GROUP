import 'dart:convert';

import 'package:application/architecture/data/dto/pokemon_detail_page_response_dto.dart';
import 'package:application/architecture/domain/datasources/remote/pokemon_detail_api.dart';
import 'package:http/http.dart' as http;

class PokemonDetailApiImpl implements PokemonDetailApi {
  final baseUrl = 'pokeapi.co';
  final http.Client client;

  PokemonDetailApiImpl({required this.client});

  @override
  Future<PokemonDetailPageResponseDTO> getPokemonDetailApi(int index) async {
    final uri = Uri.https(baseUrl, '/api/v2/pokemon/$index');
    final response = await client.get(uri);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);

      return PokemonDetailPageResponseDTO.fromDomain(json);
    } else {
      throw Exception('Failed to load..');
    }
  }
}
