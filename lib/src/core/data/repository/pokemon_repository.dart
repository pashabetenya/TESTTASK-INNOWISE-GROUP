import 'package:application/src/core/data/network/pokemon_detail_page_response_network.dart';
import 'package:application/src/core/data/network/pokemon_page_response_network.dart';
import 'package:application/src/core/models/pokemon_detail_page_response.dart';
import 'package:application/src/core/models/pokemon_page_response.dart';

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
