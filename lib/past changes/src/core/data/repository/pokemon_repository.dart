import 'package:application/past changes/src/core/data/repository/index.dart';

class PokemonRepository {
  final PokemonPageResponseNetwork _pokemonPageResponseNetwork =
      PokemonPageResponseNetwork();
  final PokemonDetailPageResponseNetwork _pokemonDetailPageResponseNetwork =
      PokemonDetailPageResponseNetwork();

  Future<PokemonPageResponse> getPokemons(int index) {
    return _pokemonPageResponseNetwork.getPokemonPage(index);
  }

  Future<PokemonDetailPageResponse> getPokemonDetail(int id) {
    return _pokemonDetailPageResponseNetwork.getPokemonDetail(id);
  }
}
