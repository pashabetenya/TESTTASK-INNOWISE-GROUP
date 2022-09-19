import 'package:application/past changes/src/core/bloc/home/index.dart';

part 'pokemon_event.dart';
part 'pokemon_state.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  final PokemonRepository _pokemonRepository = PokemonRepository();

  PokemonBloc() : super(PokemonInitial()) {
    on<PokemonPageRequest>(
      (event, emit) async {
        emit(PokemonLoadInProgress());
        try {
          final pokemonPageResponse =
              await _pokemonRepository.getPokemons(event.page);
          emit(PokemonPageLoadSuccess(
              pokemonListings: pokemonPageResponse.pokemonListings,
              canLoadNextPage: pokemonPageResponse.canLoadNextPage));
        } on Error catch (e) {
          emit(PokemonPageLoadFailed(error: e));
        }
      },
    );
  }
}
