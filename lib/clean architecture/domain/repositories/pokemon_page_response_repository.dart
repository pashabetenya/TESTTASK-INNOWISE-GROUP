import 'package:application/clean%20architecture/domain/models/pokemon_page_response.dart';

abstract class PokemonPageResponseRepository {
  Future<PokemonPageResponse> getPokemonPage();
}
