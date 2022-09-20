import 'package:application/clean%20architecture/data/repositories/pokemon_data_repository.dart';
import 'package:application/clean%20architecture/domain/repositories/pokemon_page_response_repository.dart';
import 'package:application/clean%20architecture/internal/dependencies/pokemon_api_module.dart';

class PokemonRepositoryModule {
  static PokemonPageResponseRepository? _repository;

  static PokemonPageResponseRepository repository() {
    // I'll fix it later!
    // ignore: prefer_conditional_assignment
    if (_repository == null) {
      _repository = PokemonDataRepository(PokemonApiModule.pokemonUtil());
    }

    return _repository!;
  }
}
