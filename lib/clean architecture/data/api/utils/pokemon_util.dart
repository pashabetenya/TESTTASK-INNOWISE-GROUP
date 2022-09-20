import 'package:application/clean%20architecture/data/api/services/pokemon_page_response_service.dart';
import 'package:application/clean%20architecture/data/mapper/pokemon_listing_mapper.dart';
import 'package:application/clean%20architecture/domain/models/pokemon_page_response.dart';

class PokemonUtil {
  final PokemonPageResponseService service;

  PokemonUtil(this.service);

  Future<PokemonPageResponse> getPokemon({required int index}) async {
    final result = await service.getPokemonPage(index);

    return PokemonListingMapper.fromApi(result);
  }
}
