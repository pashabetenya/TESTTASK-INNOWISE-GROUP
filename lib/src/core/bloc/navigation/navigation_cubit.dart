import 'package:application/src/core/bloc/detail/pokemon_detail_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationCubit extends Cubit<int?> {
  PokemonDetailCubit pokemonDetailCubit;

  NavigationCubit({required this.pokemonDetailCubit}) : super(null);

  void showPokemonDetail(int pokemonId) {
    pokemonDetailCubit.getPokemonDetail(pokemonId);
    emit(pokemonId);
  }

  void popToPokedex() {
    emit(null);
    pokemonDetailCubit.clearPokemonDetail();
  }
}
