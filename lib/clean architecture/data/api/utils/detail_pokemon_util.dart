import 'package:application/clean%20architecture/data/api/services/pokemon_detail_page_response_service.dart';
import 'package:application/clean%20architecture/data/mapper/pokemon_detail_listing_mapper.dart';
import 'package:application/clean%20architecture/domain/models/pokemon_detail_page_response.dart';

class DetailPokemonUtil {
  final PokemonDetailPageResponseService service;

  DetailPokemonUtil(this.service);

  Future<PokemonDetailPageResponse> getPokemonDetail(
      {required int index}) async {
    final result = await service.getPokemonDetail(index);

    return PokemonDetailListingMapper.fromApi(result);
  }
}
