import 'package:application/clean%20architecture/data/api/services/pokemon_detail_page_response_service.dart';
import 'package:application/clean%20architecture/data/api/utils/detail_pokemon_util.dart';

class DetailPokemonApiModule {
  static DetailPokemonUtil? _util;

  static DetailPokemonUtil detailPokemonUtil() {
    // I'll fix it later!
    // ignore: prefer_conditional_assignment
    if (_util == null) {
      _util = DetailPokemonUtil(PokemonDetailPageResponseService());
    }

    return _util!;
  }
}
