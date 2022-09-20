import 'package:application/clean%20architecture/data/api/utils/detail_pokemon_util.dart';
import 'package:application/clean%20architecture/domain/models/pokemon_detail_page_response.dart';
import 'package:application/clean%20architecture/domain/repositories/pokemon_detail_page_response_repository.dart';

class DetailPokemonDataRepository extends PokemonDetailPageResponseRepository {
  final DetailPokemonUtil util;

  DetailPokemonDataRepository(this.util);

  @override
  Future<PokemonDetailPageResponse> getPokemonDetail({required int index}) {
    return util.getPokemonDetail(index: index);
  }
}
