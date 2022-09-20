import 'package:application/clean%20architecture/data/api/models/pokemon_page_response_api.dart';
import 'package:dio/dio.dart';

class PokemonPageResponseService {
  static const _baseUrl = 'pokeapi.co';

  final Dio _dio = Dio(
    BaseOptions(baseUrl: _baseUrl),
  );

  Future<PokemonPageResponseApi> getPokemonPage(int index) async {
    final queryParameters = {'limit': '20', 'offset': (index * 20).toString()};

    final response = await _dio.get(
      '/api/v2/pokemon',
      queryParameters: queryParameters,
    );

    if (response.statusCode == 200) {
      return PokemonPageResponseApi.fromApi(response.data);
    } else {
      throw Exception('Failed to load..');
    }
  }
}
