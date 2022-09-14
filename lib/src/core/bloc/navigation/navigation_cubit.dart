import 'package:application/src/core/bloc/navigation/index.dart';

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
