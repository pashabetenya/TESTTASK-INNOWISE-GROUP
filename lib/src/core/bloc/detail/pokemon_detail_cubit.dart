import 'package:application/src/core/bloc/detail/index.dart';

class PokemonDetailCubit extends Cubit<PokemonDetailListing?> {
  final PokemonRepository _pokemonRepository = PokemonRepository();

  PokemonDetailCubit() : super(null);

  void getPokemonDetail(int pokemonId) async {
    final response = await Future.wait(
      [
        _pokemonRepository.getPokemonDetail(pokemonId),
      ],
    );

    final pokemonInformation = response[0];

    emit(
      PokemonDetailListing(
        id: pokemonInformation.id,
        name: pokemonInformation.name,
        imageUrl: pokemonInformation.imageUrl,
        types: pokemonInformation.types,
        height: pokemonInformation.height,
        weight: pokemonInformation.weight,
      ),
    );
  }

  void clearPokemonDetail() => emit(null);
}
