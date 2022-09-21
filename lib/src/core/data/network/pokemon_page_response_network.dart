import 'package:application/src/core/data/network/index.dart';
import 'package:http/http.dart' as http;

class PokemonPageResponseNetwork {
  final baseUrl = 'pokeapi.co';
  final client = http.Client();

  Future<PokemonPageResponse> getPokemonPage(int index) async {
    final queryParameters = {'limit': '20', 'offset': (index * 20).toString()};

    final uri = Uri.https(baseUrl, '/api/v2/pokemon', queryParameters);
    final response = await client.get(uri);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);

      return PokemonPageResponse.fromJson(json);
    } else {
      throw Exception('Failed to load..');
    }
  }
}
