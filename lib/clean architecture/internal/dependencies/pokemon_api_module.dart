import 'package:application/clean%20architecture/data/api/services/pokemon_page_response_service.dart';
import 'package:application/clean%20architecture/data/api/utils/pokemon_util.dart';

class PokemonApiModule {
  static PokemonUtil? _util;

  static PokemonUtil pokemonUtil() {
    // I'll fix it later!
    // ignore: prefer_conditional_assignment
    if (_util == null) {
      _util = PokemonUtil(PokemonPageResponseService());
    }

    return _util!;
  }
}
