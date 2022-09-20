import 'package:application/clean%20architecture/data/api/models/pokemon_detail_page_response_api.dart';
import 'package:dio/dio.dart';

class PokemonDetailPageResponseService {
  static const _baseUrl = 'pokeapi.co';

  final Dio _dio = Dio(
    BaseOptions(baseUrl: _baseUrl),
  );

  Future<PokemonDetailPageResponseApi> getPokemonDetail(int index) async {
    final response = await _dio.get(
      '/api/v2/pokemon/$index',
    );

    if (response.statusCode == 200) {
      return PokemonDetailPageResponseApi.fromApi(response.data);
    } else {
      throw Exception('Failed to load..');
    }
  }
}
