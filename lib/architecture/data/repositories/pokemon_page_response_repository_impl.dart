import 'package:application/architecture/data/dto/pokemon_page_response_asset_dto.dart';
import 'package:application/architecture/data/dto/pokemon_page_response_dto.dart';
import 'package:application/architecture/domain/datasources/local/data_assets.dart';
import 'package:application/architecture/domain/datasources/local/database.dart';
import 'package:application/architecture/domain/repositories/pokemon_page_response_repository.dart';

class PokemonPageResponseRepositoryImpl
    implements PokemonPageResponseRepository {
  PokemonPageResponseRepositoryImpl({
    required this.pokemonDatabase,
    required this.dataAssets,
  });

  final Database pokemonDatabase;
  final DataAssets dataAssets;

  @override
  List<PokemonPageResponseDTO> getAllPokemons() {
    try {
      final pokemonDto = pokemonDatabase
          .getAll()
          .map((pokemon) => pokemon as PokemonPageResponseDTO)
          .toList();
      return pokemonDto;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<PokemonPageResponseDTO> getPokemons(String name) async {
    try {
      final pokemonDto =
          await pokemonDatabase.get(name) as PokemonPageResponseDTO;
      return pokemonDto;
    } catch (_) {
      rethrow;
    }
  }

  List<PokemonPageResponseDTO> _buildWordList(
      List<PokemonPageResponseAssetDTO> pokemonAssetList) {
    return pokemonAssetList
        .map(
          (pokemonAsset) => PokemonPageResponseDTO(
            canLoadNextPage: pokemonAsset.canLoadNextPage,
            pokemonListings: [],
          ),
        )
        .toList();
  }

  List<String> _removeEmpty(List<String> list) {
    list.removeWhere((element) => element.isEmpty);
    return list;
  }
}
