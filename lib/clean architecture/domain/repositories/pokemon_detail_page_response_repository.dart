import 'package:application/clean%20architecture/domain/models/pokemon_detail_page_response.dart';

abstract class PokemonDetailPageResponseRepository {
  Future<PokemonDetailPageResponse> getPokemonDetail({required int index});
}
