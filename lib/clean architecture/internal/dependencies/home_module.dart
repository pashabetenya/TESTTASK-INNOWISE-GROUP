import 'package:application/clean%20architecture/domain/state/home_state.dart';
import 'package:application/clean%20architecture/internal/dependencies/pokemon_repository_module.dart';

class HomeModule {
  static HomeState homeState() {
    return HomeState(PokemonRepositoryModule.repository());
  }
}
