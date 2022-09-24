import 'package:application/architecture/domain/models/pokemon_detail_page_response.dart';
import 'package:hive/hive.dart';

part 'pokemon_detail_page_response_dto.g.dart';

@HiveType(typeId: 2)
class PokemonDetailPageResponseDTO {
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

  PokemonDetailPageResponseDTO({
    required this.name,
    required this.id,
    required this.types,
    required this.height,
    required this.weight,
  });

  factory PokemonDetailPageResponseDTO.fromDomain(
      PokemonDetailPageResponse detail) {
    return PokemonDetailPageResponseDTO(
      name: detail.name,
      id: detail.id,
      types: detail.types,
      height: detail.height,
      weight: detail.weight,
    );
  }

  PokemonDetailPageResponse toDomain() {
    return PokemonDetailPageResponse(
      name: name,
      id: id,
      types: types,
      height: height,
      weight: weight,
    );
  }

  bool get validDetail => name.isNotEmpty == true;

  PokemonDetailPageResponseDTO copyWith({
    String? name,
    int? id,
    List<String>? types,
    int? height,
    int? weight,
  }) {
    return PokemonDetailPageResponseDTO(
      name: name ?? this.name,
      id: id ?? this.id,
      types: types ?? this.types,
      height: height ?? this.height,
      weight: weight ?? this.weight,
    );
  }

  @override
  String toString() {
    return 'PokemonDetailPageResponseDTO {name: $name, id: $id, types: $types, height: $height, weight: $weight}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonDetailPageResponseDTO &&
          name == name &&
          id == id &&
          types == types &&
          height == height &&
          weight == weight;

  @override
  int get hashCode =>
      name.hashCode ^
      id.hashCode ^
      types.hashCode ^
      height.hashCode ^
      weight.hashCode;
}
