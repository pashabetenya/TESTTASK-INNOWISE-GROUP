import 'package:application/clean%20architecture/domain/models/pokemon_page_response.dart';
import 'package:application/clean%20architecture/domain/repositories/pokemon_page_response_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_state.g.dart';

class HomeState = HomeStateBase with _$HomeState;

abstract class HomeStateBase with Store {
  final PokemonPageResponseRepository repository;

  HomeStateBase(this.repository);

  @observable
  PokemonPageResponse? pokemon;

  @observable
  bool isLoading = false;

  @action
  Future<void> getPokemon() async {
    isLoading = true;

    final data = await repository.getPokemonPage();
    pokemon = data;

    isLoading = false;
  }
}
