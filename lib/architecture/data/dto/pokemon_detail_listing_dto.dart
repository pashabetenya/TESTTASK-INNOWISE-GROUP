import 'package:hive/hive.dart';

part 'pokemon_detail_listing_dto.g.dart';

@HiveType(typeId: 3)
class PokemonDetailListingDTO {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final List<String> types;
  @HiveField(3)
  final int height;
  @HiveField(4)
  final int weight;

  PokemonDetailListingDTO({
    required this.name,
    required this.id,
    required this.types,
    required this.height,
    required this.weight,
  });
}
