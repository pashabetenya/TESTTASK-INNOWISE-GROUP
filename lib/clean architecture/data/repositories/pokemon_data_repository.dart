import 'package:application/clean%20architecture/data/api/utils/pokemon_util.dart';
import 'package:application/clean%20architecture/domain/models/pokemon_page_response.dart';
import 'package:application/clean%20architecture/domain/repositories/pokemon_page_response_repository.dart';

abstract class PokemonDataRepository extends PokemonPageResponseRepository {
  final PokemonUtil util;

  PokemonDataRepository(this.util);

  @override
  Future<PokemonPageResponse> getPokemonPage({required int index}) {
    return util.getPokemon(index: index);
  }
}
