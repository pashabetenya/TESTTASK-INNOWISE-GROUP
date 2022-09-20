import 'package:application/clean%20architecture/data/repositories/detail_pokemon_data_repository.dart';
import 'package:application/clean%20architecture/domain/repositories/pokemon_detail_page_response_repository.dart';
import 'package:application/clean%20architecture/internal/dependencies/detail_pokemon_api_module.dart';

class DetailPokemonRepositoryModule {
  static PokemonDetailPageResponseRepository? _repository;

  static PokemonDetailPageResponseRepository repository() {
    // I'll fix it later!
    // ignore: prefer_conditional_assignment
    if (_repository == null) {
      _repository = DetailPokemonDataRepository(
        DetailPokemonApiModule.detailPokemonUtil(),
      );
    }

    return _repository!;
  }
}
